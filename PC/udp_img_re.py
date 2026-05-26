import socket
import struct

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(("0.0.0.0", 5000))

buffer = {}
expected = {}

print("Esperando imagen...")

while True:
    data, addr = sock.recvfrom(2048)

    if len(data) < 8:
        continue

    img_id, idx, total = struct.unpack("IHH", data[:8])
    chunk = data[8:]

    # init buffer
    if img_id not in buffer:
        buffer[img_id] = {}
        expected[img_id] = total

    # guardar chunk
    buffer[img_id][idx] = chunk

    # verificar completitud
    if len(buffer[img_id]) == expected[img_id]:

        try:
            img = b"".join(buffer[img_id][i] for i in range(total))

            with open("img.jpg", "wb") as f:
                f.write(img)

            print(f"Imagen {img_id} recibida ({len(img)} bytes)")

        except Exception as e:
            print("Error reconstruyendo imagen:", e)

        del buffer[img_id]
        del expected[img_id]
