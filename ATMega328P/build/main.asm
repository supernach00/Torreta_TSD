
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 28 01 	jmp	0x250	; 0x250 <__vector_2>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 24 01 	jmp	0x248	; 0x248 <__vector_5>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 23 01 	jmp	0x246	; 0x246 <__vector_7>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 29 01 	jmp	0x252	; 0x252 <__vector_14>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1

00000076 <.Loc.1>:
  76:	a0 e0       	ldi	r26, 0x00	; 0

00000078 <.Loc.2>:
  78:	b1 e0       	ldi	r27, 0x01	; 1

0000007a <.Loc.3>:
  7a:	e0 e3       	ldi	r30, 0x30	; 48

0000007c <.Loc.4>:
  7c:	fd e0       	ldi	r31, 0x0D	; 13

0000007e <.Loc.5>:
  7e:	02 c0       	rjmp	.+4      	; 0x84 <.L__do_copy_data_start>

00000080 <.L__do_copy_data_loop>:
  80:	05 90       	lpm	r0, Z+

00000082 <.Loc.7>:
  82:	0d 92       	st	X+, r0

00000084 <.L__do_copy_data_start>:
  84:	a6 30       	cpi	r26, 0x06	; 6

00000086 <.Loc.9>:
  86:	b1 07       	cpc	r27, r17

00000088 <.Loc.10>:
  88:	d9 f7       	brne	.-10     	; 0x80 <.L__do_copy_data_loop>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1

0000008c <.Loc.1>:
  8c:	a6 e0       	ldi	r26, 0x06	; 6

0000008e <.Loc.2>:
  8e:	b1 e0       	ldi	r27, 0x01	; 1

00000090 <.Loc.3>:
  90:	01 c0       	rjmp	.+2      	; 0x94 <.Loc.5>

00000092 <.Loc.4>:
  92:	1d 92       	st	X+, r1

00000094 <.Loc.5>:
  94:	a2 31       	cpi	r26, 0x12	; 18

00000096 <.Loc.6>:
  96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
  98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
  9a:	0e 94 8b 01 	call	0x316	; 0x316 <main>
  9e:	0c 94 96 06 	jmp	0xd2c	; 0xd2c <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <setup_ADC>:
  a6:	85 e4       	ldi	r24, 0x45	; 69
  a8:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
  ac:	87 e8       	ldi	r24, 0x87	; 135
  ae:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
  b2:	82 e0       	ldi	r24, 0x02	; 2
  b4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
  b8:	94 e0       	ldi	r25, 0x04	; 4
  ba:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
  be:	99 ef       	ldi	r25, 0xF9	; 249
  c0:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
  c4:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
  c8:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
  cc:	08 95       	ret

000000ce <setup_SWITCHS>:
  ce:	54 98       	cbi	0x0a, 4	; 10
  d0:	5c 9a       	sbi	0x0b, 4	; 11
  d2:	e8 e6       	ldi	r30, 0x68	; 104
  d4:	f0 e0       	ldi	r31, 0x00	; 0
  d6:	80 81       	ld	r24, Z
  d8:	84 60       	ori	r24, 0x04	; 4
  da:	80 83       	st	Z, r24
  dc:	ed e6       	ldi	r30, 0x6D	; 109
  de:	80 81       	ld	r24, Z
  e0:	80 61       	ori	r24, 0x10	; 16
  e2:	80 83       	st	Z, r24
  e4:	e9 e6       	ldi	r30, 0x69	; 105
  e6:	80 81       	ld	r24, Z
  e8:	88 60       	ori	r24, 0x08	; 8
  ea:	80 83       	st	Z, r24
  ec:	e9 9a       	sbi	0x1d, 1	; 29
  ee:	08 95       	ret

000000f0 <setup_PWM>:
  f0:	21 9a       	sbi	0x04, 1	; 4
  f2:	82 e8       	ldi	r24, 0x82	; 130
  f4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
  f8:	89 e1       	ldi	r24, 0x19	; 25
  fa:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
  fe:	8f e7       	ldi	r24, 0x7F	; 127
 100:	9e e3       	ldi	r25, 0x3E	; 62
 102:	90 93 87 00 	sts	0x0087, r25	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
 106:	80 93 86 00 	sts	0x0086, r24	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
 10a:	81 e0       	ldi	r24, 0x01	; 1
 10c:	90 e0       	ldi	r25, 0x00	; 0
 10e:	90 93 89 00 	sts	0x0089, r25	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
 112:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
 116:	08 95       	ret

00000118 <leer_ADC>:
 118:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
 11c:	80 64       	ori	r24, 0x40	; 64
 11e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

00000122 <.L5>:
 122:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
 126:	84 ff       	sbrs	r24, 4
 128:	fc cf       	rjmp	.-8      	; 0x122 <.L5>
 12a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
 12e:	80 61       	ori	r24, 0x10	; 16
 130:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
 134:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
 138:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
 13c:	80 e0       	ldi	r24, 0x00	; 0
 13e:	90 e0       	ldi	r25, 0x00	; 0
 140:	0e 94 a3 02 	call	0x546	; 0x546 <__floatunsisf>
 144:	26 ef       	ldi	r18, 0xF6	; 246
 146:	38 e2       	ldi	r19, 0x28	; 40
 148:	4c e9       	ldi	r20, 0x9C	; 156
 14a:	50 e4       	ldi	r21, 0x40	; 64
 14c:	0e 94 31 03 	call	0x662	; 0x662 <__mulsf3>
 150:	0e 94 74 02 	call	0x4e8	; 0x4e8 <__fixunssfsi>
 154:	cb 01       	movw	r24, r22
 156:	08 95       	ret

00000158 <leer_adc_multiple>:
 158:	ff 92       	push	r15
 15a:	0f 93       	push	r16
 15c:	1f 93       	push	r17
 15e:	cf 93       	push	r28
 160:	df 93       	push	r29
 162:	0c e7       	ldi	r16, 0x7C	; 124
 164:	10 e0       	ldi	r17, 0x00	; 0
 166:	f8 01       	movw	r30, r16
 168:	10 82       	st	Z, r1
 16a:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 16e:	c6 e0       	ldi	r28, 0x06	; 6
 170:	d1 e0       	ldi	r29, 0x01	; 1
 172:	9b 83       	std	Y+3, r25	; 0x03
 174:	8a 83       	std	Y+2, r24	; 0x02
 176:	8f e3       	ldi	r24, 0x3F	; 63
 178:	9f e1       	ldi	r25, 0x1F	; 31

0000017a <.L1^B1>:
 17a:	01 97       	sbiw	r24, 0x01	; 1
 17c:	f1 f7       	brne	.-4      	; 0x17a <.L1^B1>
 17e:	00 c0       	rjmp	.+0      	; 0x180 <L0^A>

00000180 <L0^A>:
 180:	00 00       	nop
 182:	ff 24       	eor	r15, r15
 184:	f3 94       	inc	r15
 186:	f8 01       	movw	r30, r16
 188:	f0 82       	st	Z, r15
 18a:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 18e:	99 83       	std	Y+1, r25	; 0x01
 190:	88 83       	st	Y, r24
 192:	8f e3       	ldi	r24, 0x3F	; 63
 194:	9f e1       	ldi	r25, 0x1F	; 31

00000196 <.L1^B2>:
 196:	01 97       	sbiw	r24, 0x01	; 1
 198:	f1 f7       	brne	.-4      	; 0x196 <.L1^B2>
 19a:	00 c0       	rjmp	.+0      	; 0x19c <L0^A>

0000019c <L0^A>:
 19c:	00 00       	nop
 19e:	82 e0       	ldi	r24, 0x02	; 2
 1a0:	f8 01       	movw	r30, r16
 1a2:	80 83       	st	Z, r24
 1a4:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 1a8:	9d 83       	std	Y+5, r25	; 0x05
 1aa:	8c 83       	std	Y+4, r24	; 0x04
 1ac:	8f e3       	ldi	r24, 0x3F	; 63
 1ae:	9f e1       	ldi	r25, 0x1F	; 31

000001b0 <.L1^B3>:
 1b0:	01 97       	sbiw	r24, 0x01	; 1
 1b2:	f1 f7       	brne	.-4      	; 0x1b0 <.L1^B3>
 1b4:	00 c0       	rjmp	.+0      	; 0x1b6 <L0^A>

000001b6 <L0^A>:
 1b6:	00 00       	nop
 1b8:	83 e0       	ldi	r24, 0x03	; 3
 1ba:	f8 01       	movw	r30, r16
 1bc:	80 83       	st	Z, r24
 1be:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 1c2:	9f 83       	std	Y+7, r25	; 0x07
 1c4:	8e 83       	std	Y+6, r24	; 0x06
 1c6:	8f e3       	ldi	r24, 0x3F	; 63
 1c8:	9f e1       	ldi	r25, 0x1F	; 31

000001ca <.L1^B4>:
 1ca:	01 97       	sbiw	r24, 0x01	; 1
 1cc:	f1 f7       	brne	.-4      	; 0x1ca <.L1^B4>
 1ce:	00 c0       	rjmp	.+0      	; 0x1d0 <L0^A>

000001d0 <L0^A>:
 1d0:	00 00       	nop
 1d2:	84 e0       	ldi	r24, 0x04	; 4
 1d4:	f8 01       	movw	r30, r16
 1d6:	80 83       	st	Z, r24
 1d8:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 1dc:	99 87       	std	Y+9, r25	; 0x09
 1de:	88 87       	std	Y+8, r24	; 0x08
 1e0:	8f e3       	ldi	r24, 0x3F	; 63
 1e2:	9f e1       	ldi	r25, 0x1F	; 31

000001e4 <.L1^B5>:
 1e4:	01 97       	sbiw	r24, 0x01	; 1
 1e6:	f1 f7       	brne	.-4      	; 0x1e4 <.L1^B5>
 1e8:	00 c0       	rjmp	.+0      	; 0x1ea <L0^A>

000001ea <L0^A>:
 1ea:	00 00       	nop
 1ec:	f8 01       	movw	r30, r16
 1ee:	f0 82       	st	Z, r15
 1f0:	0e 94 8c 00 	call	0x118	; 0x118 <leer_ADC>
 1f4:	9b 87       	std	Y+11, r25	; 0x0b
 1f6:	8a 87       	std	Y+10, r24	; 0x0a
 1f8:	8f e3       	ldi	r24, 0x3F	; 63
 1fa:	9f e1       	ldi	r25, 0x1F	; 31

000001fc <.L1^B6>:
 1fc:	01 97       	sbiw	r24, 0x01	; 1
 1fe:	f1 f7       	brne	.-4      	; 0x1fc <.L1^B6>
 200:	00 c0       	rjmp	.+0      	; 0x202 <L0^A>

00000202 <L0^A>:
 202:	00 00       	nop
 204:	df 91       	pop	r29
 206:	cf 91       	pop	r28
 208:	1f 91       	pop	r17
 20a:	0f 91       	pop	r16
 20c:	ff 90       	pop	r15
 20e:	08 95       	ret

00000210 <tension_a_WC>:
 210:	bc 01       	movw	r22, r24
 212:	80 e0       	ldi	r24, 0x00	; 0
 214:	90 e0       	ldi	r25, 0x00	; 0
 216:	0e 94 a3 02 	call	0x546	; 0x546 <__floatunsisf>
 21a:	20 e0       	ldi	r18, 0x00	; 0
 21c:	30 e0       	ldi	r19, 0x00	; 0
 21e:	4a e7       	ldi	r20, 0x7A	; 122
 220:	56 e4       	ldi	r21, 0x46	; 70
 222:	0e 94 31 03 	call	0x662	; 0x662 <__mulsf3>
 226:	20 e0       	ldi	r18, 0x00	; 0
 228:	30 e4       	ldi	r19, 0x40	; 64
 22a:	4c e9       	ldi	r20, 0x9C	; 156
 22c:	55 e4       	ldi	r21, 0x45	; 69
 22e:	0e 94 02 02 	call	0x404	; 0x404 <__divsf3>
 232:	20 e0       	ldi	r18, 0x00	; 0
 234:	30 e0       	ldi	r19, 0x00	; 0
 236:	40 e8       	ldi	r20, 0x80	; 128
 238:	5f e3       	ldi	r21, 0x3F	; 63
 23a:	0e 94 95 01 	call	0x32a	; 0x32a <__subsf3>
 23e:	0e 94 74 02 	call	0x4e8	; 0x4e8 <__fixunssfsi>
 242:	cb 01       	movw	r24, r22
 244:	08 95       	ret

00000246 <__vector_7>:
 246:	18 95       	reti

00000248 <__vector_5>:
 248:	8f 93       	push	r24
 24a:	89 b1       	in	r24, 0x09	; 9
 24c:	8f 91       	pop	r24
 24e:	18 95       	reti

00000250 <__vector_2>:
 250:	18 95       	reti

00000252 <__vector_14>:
 252:	18 95       	reti

00000254 <USART_init>:
 254:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
 258:	87 e6       	ldi	r24, 0x67	; 103
 25a:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
 25e:	88 e1       	ldi	r24, 0x18	; 24
 260:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
 264:	86 e0       	ldi	r24, 0x06	; 6
 266:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
 26a:	08 95       	ret

0000026c <USART_send>:
 26c:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 270:	95 ff       	sbrs	r25, 5
 272:	fc cf       	rjmp	.-8      	; 0x26c <USART_send>
 274:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 278:	08 95       	ret

0000027a <USART_receive>:
 27a:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 27e:	87 ff       	sbrs	r24, 7
 280:	fc cf       	rjmp	.-8      	; 0x27a <USART_receive>
 282:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 286:	08 95       	ret

00000288 <USART_putstring>:
 288:	cf 93       	push	r28
 28a:	df 93       	push	r29
 28c:	ec 01       	movw	r28, r24

0000028e <.L10>:
 28e:	88 81       	ld	r24, Y
 290:	81 11       	cpse	r24, r1
 292:	03 c0       	rjmp	.+6      	; 0x29a <.L11>
 294:	df 91       	pop	r29
 296:	cf 91       	pop	r28
 298:	08 95       	ret

0000029a <.L11>:
 29a:	21 96       	adiw	r28, 0x01	; 1
 29c:	0e 94 36 01 	call	0x26c	; 0x26c <USART_send>
 2a0:	f6 cf       	rjmp	.-20     	; 0x28e <.L10>

000002a2 <USART_put_uint16>:
 2a2:	0f 93       	push	r16
 2a4:	1f 93       	push	r17
 2a6:	cf 93       	push	r28
 2a8:	df 93       	push	r29
 2aa:	cd b7       	in	r28, 0x3d	; 61
 2ac:	de b7       	in	r29, 0x3e	; 62
 2ae:	2a 97       	sbiw	r28, 0x0a	; 10
 2b0:	0f b6       	in	r0, 0x3f	; 63
 2b2:	f8 94       	cli
 2b4:	de bf       	out	0x3e, r29	; 62
 2b6:	0f be       	out	0x3f, r0	; 63
 2b8:	cd bf       	out	0x3d, r28	; 61
 2ba:	9f 93       	push	r25
 2bc:	8f 93       	push	r24
 2be:	80 e0       	ldi	r24, 0x00	; 0
 2c0:	91 e0       	ldi	r25, 0x01	; 1
 2c2:	9f 93       	push	r25
 2c4:	8f 93       	push	r24
 2c6:	8e 01       	movw	r16, r28
 2c8:	0f 5f       	subi	r16, 0xFF	; 255
 2ca:	1f 4f       	sbci	r17, 0xFF	; 255
 2cc:	1f 93       	push	r17
 2ce:	0f 93       	push	r16
 2d0:	0e 94 9e 03 	call	0x73c	; 0x73c <sprintf>
 2d4:	c8 01       	movw	r24, r16
 2d6:	0e 94 44 01 	call	0x288	; 0x288 <USART_putstring>
 2da:	83 e0       	ldi	r24, 0x03	; 3
 2dc:	91 e0       	ldi	r25, 0x01	; 1
 2de:	0e 94 44 01 	call	0x288	; 0x288 <USART_putstring>
 2e2:	2f ef       	ldi	r18, 0xFF	; 255
 2e4:	89 e6       	ldi	r24, 0x69	; 105
 2e6:	98 e1       	ldi	r25, 0x18	; 24

000002e8 <.L1^B1>:
 2e8:	21 50       	subi	r18, 0x01	; 1
 2ea:	80 40       	sbci	r24, 0x00	; 0
 2ec:	90 40       	sbci	r25, 0x00	; 0
 2ee:	e1 f7       	brne	.-8      	; 0x2e8 <.L1^B1>
 2f0:	00 c0       	rjmp	.+0      	; 0x2f2 <L0^A>

000002f2 <L0^A>:
 2f2:	00 00       	nop
 2f4:	0f 90       	pop	r0
 2f6:	0f 90       	pop	r0
 2f8:	0f 90       	pop	r0
 2fa:	0f 90       	pop	r0
 2fc:	0f 90       	pop	r0
 2fe:	0f 90       	pop	r0
 300:	2a 96       	adiw	r28, 0x0a	; 10
 302:	0f b6       	in	r0, 0x3f	; 63
 304:	f8 94       	cli
 306:	de bf       	out	0x3e, r29	; 62
 308:	0f be       	out	0x3f, r0	; 63
 30a:	cd bf       	out	0x3d, r28	; 61
 30c:	df 91       	pop	r29
 30e:	cf 91       	pop	r28
 310:	1f 91       	pop	r17
 312:	0f 91       	pop	r16
 314:	08 95       	ret

00000316 <main>:
 316:	0e 94 53 00 	call	0xa6	; 0xa6 <setup_ADC>
 31a:	0e 94 78 00 	call	0xf0	; 0xf0 <setup_PWM>
 31e:	0e 94 67 00 	call	0xce	; 0xce <setup_SWITCHS>
 322:	0e 94 2a 01 	call	0x254	; 0x254 <USART_init>
 326:	78 94       	sei

00000328 <.L6>:
 328:	ff cf       	rjmp	.-2      	; 0x328 <.L6>

0000032a <__subsf3>:
 32a:	50 58       	subi	r21, 0x80	; 128

0000032c <__addsf3>:
 32c:	bb 27       	eor	r27, r27
 32e:	aa 27       	eor	r26, r26
 330:	0e 94 ad 01 	call	0x35a	; 0x35a <__addsf3x>
 334:	0c 94 f7 02 	jmp	0x5ee	; 0x5ee <__fp_round>

00000338 <.L0^B1>:
 338:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <__fp_pscA>
 33c:	38 f0       	brcs	.+14     	; 0x34c <.L_nan>
 33e:	0e 94 f0 02 	call	0x5e0	; 0x5e0 <__fp_pscB>
 342:	20 f0       	brcs	.+8      	; 0x34c <.L_nan>
 344:	39 f4       	brne	.+14     	; 0x354 <.L_inf>
 346:	9f 3f       	cpi	r25, 0xFF	; 255
 348:	19 f4       	brne	.+6      	; 0x350 <.L_infB>
 34a:	26 f4       	brtc	.+8      	; 0x354 <.L_inf>

0000034c <.L_nan>:
 34c:	0c 94 e6 02 	jmp	0x5cc	; 0x5cc <__fp_nan>

00000350 <.L_infB>:
 350:	0e f4       	brtc	.+2      	; 0x354 <.L_inf>
 352:	e0 95       	com	r30

00000354 <.L_inf>:
 354:	e7 fb       	bst	r30, 7
 356:	0c 94 e0 02 	jmp	0x5c0	; 0x5c0 <__fp_inf>

0000035a <__addsf3x>:
 35a:	e9 2f       	mov	r30, r25
 35c:	0e 94 08 03 	call	0x610	; 0x610 <__fp_split3>
 360:	58 f3       	brcs	.-42     	; 0x338 <.L0^B1>
 362:	ba 17       	cp	r27, r26
 364:	62 07       	cpc	r22, r18
 366:	73 07       	cpc	r23, r19
 368:	84 07       	cpc	r24, r20
 36a:	95 07       	cpc	r25, r21
 36c:	20 f0       	brcs	.+8      	; 0x376 <.L2^B1>
 36e:	79 f4       	brne	.+30     	; 0x38e <.L4^B1>
 370:	a6 f5       	brtc	.+104    	; 0x3da <.L_add>
 372:	0c 94 2a 03 	jmp	0x654	; 0x654 <__fp_zero>

00000376 <.L2^B1>:
 376:	0e f4       	brtc	.+2      	; 0x37a <.L3^B1>
 378:	e0 95       	com	r30

0000037a <.L3^B1>:
 37a:	0b 2e       	mov	r0, r27
 37c:	ba 2f       	mov	r27, r26
 37e:	a0 2d       	mov	r26, r0
 380:	0b 01       	movw	r0, r22
 382:	b9 01       	movw	r22, r18
 384:	90 01       	movw	r18, r0
 386:	0c 01       	movw	r0, r24
 388:	ca 01       	movw	r24, r20
 38a:	a0 01       	movw	r20, r0
 38c:	11 24       	eor	r1, r1

0000038e <.L4^B1>:
 38e:	ff 27       	eor	r31, r31
 390:	59 1b       	sub	r21, r25

00000392 <.L5^B1>:
 392:	99 f0       	breq	.+38     	; 0x3ba <.L7^B1>
 394:	59 3f       	cpi	r21, 0xF9	; 249
 396:	50 f4       	brcc	.+20     	; 0x3ac <.L6^B1>
 398:	50 3e       	cpi	r21, 0xE0	; 224
 39a:	68 f1       	brcs	.+90     	; 0x3f6 <.L_ret>
 39c:	1a 16       	cp	r1, r26
 39e:	f0 40       	sbci	r31, 0x00	; 0
 3a0:	a2 2f       	mov	r26, r18
 3a2:	23 2f       	mov	r18, r19
 3a4:	34 2f       	mov	r19, r20
 3a6:	44 27       	eor	r20, r20
 3a8:	58 5f       	subi	r21, 0xF8	; 248
 3aa:	f3 cf       	rjmp	.-26     	; 0x392 <.L5^B1>

000003ac <.L6^B1>:
 3ac:	46 95       	lsr	r20
 3ae:	37 95       	ror	r19
 3b0:	27 95       	ror	r18
 3b2:	a7 95       	ror	r26
 3b4:	f0 40       	sbci	r31, 0x00	; 0
 3b6:	53 95       	inc	r21
 3b8:	c9 f7       	brne	.-14     	; 0x3ac <.L6^B1>

000003ba <.L7^B1>:
 3ba:	7e f4       	brtc	.+30     	; 0x3da <.L_add>
 3bc:	1f 16       	cp	r1, r31
 3be:	ba 0b       	sbc	r27, r26
 3c0:	62 0b       	sbc	r22, r18
 3c2:	73 0b       	sbc	r23, r19
 3c4:	84 0b       	sbc	r24, r20
 3c6:	ba f0       	brmi	.+46     	; 0x3f6 <.L_ret>

000003c8 <.L8^B1>:
 3c8:	91 50       	subi	r25, 0x01	; 1
 3ca:	a1 f0       	breq	.+40     	; 0x3f4 <.L9^B1>
 3cc:	ff 0f       	add	r31, r31
 3ce:	bb 1f       	adc	r27, r27
 3d0:	66 1f       	adc	r22, r22
 3d2:	77 1f       	adc	r23, r23
 3d4:	88 1f       	adc	r24, r24
 3d6:	c2 f7       	brpl	.-16     	; 0x3c8 <.L8^B1>
 3d8:	0e c0       	rjmp	.+28     	; 0x3f6 <.L_ret>

000003da <.L_add>:
 3da:	ba 0f       	add	r27, r26
 3dc:	62 1f       	adc	r22, r18
 3de:	73 1f       	adc	r23, r19
 3e0:	84 1f       	adc	r24, r20
 3e2:	48 f4       	brcc	.+18     	; 0x3f6 <.L_ret>
 3e4:	87 95       	ror	r24
 3e6:	77 95       	ror	r23
 3e8:	67 95       	ror	r22
 3ea:	b7 95       	ror	r27
 3ec:	f7 95       	ror	r31
 3ee:	9e 3f       	cpi	r25, 0xFE	; 254
 3f0:	08 f0       	brcs	.+2      	; 0x3f4 <.L9^B1>
 3f2:	b0 cf       	rjmp	.-160    	; 0x354 <.L_inf>

000003f4 <.L9^B1>:
 3f4:	93 95       	inc	r25

000003f6 <.L_ret>:
 3f6:	88 0f       	add	r24, r24
 3f8:	08 f0       	brcs	.+2      	; 0x3fc <.L1^B1>
 3fa:	99 27       	eor	r25, r25

000003fc <.L1^B1>:
 3fc:	ee 0f       	add	r30, r30
 3fe:	97 95       	ror	r25
 400:	87 95       	ror	r24
 402:	08 95       	ret

00000404 <__divsf3>:
 404:	0e 94 16 02 	call	0x42c	; 0x42c <__divsf3x>
 408:	0c 94 f7 02 	jmp	0x5ee	; 0x5ee <__fp_round>

0000040c <.L0^B1>:
 40c:	0e 94 f0 02 	call	0x5e0	; 0x5e0 <__fp_pscB>
 410:	58 f0       	brcs	.+22     	; 0x428 <.L_nan>
 412:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <__fp_pscA>
 416:	40 f0       	brcs	.+16     	; 0x428 <.L_nan>
 418:	29 f4       	brne	.+10     	; 0x424 <.L_zr>
 41a:	5f 3f       	cpi	r21, 0xFF	; 255
 41c:	29 f0       	breq	.+10     	; 0x428 <.L_nan>

0000041e <.L_inf>:
 41e:	0c 94 e0 02 	jmp	0x5c0	; 0x5c0 <__fp_inf>

00000422 <.L1^B1>:
 422:	51 11       	cpse	r21, r1

00000424 <.L_zr>:
 424:	0c 94 2b 03 	jmp	0x656	; 0x656 <__fp_szero>

00000428 <.L_nan>:
 428:	0c 94 e6 02 	jmp	0x5cc	; 0x5cc <__fp_nan>

0000042c <__divsf3x>:
 42c:	0e 94 08 03 	call	0x610	; 0x610 <__fp_split3>
 430:	68 f3       	brcs	.-38     	; 0x40c <.L0^B1>

00000432 <__divsf3_pse>:
 432:	99 23       	and	r25, r25
 434:	b1 f3       	breq	.-20     	; 0x422 <.L1^B1>
 436:	55 23       	and	r21, r21
 438:	91 f3       	breq	.-28     	; 0x41e <.L_inf>
 43a:	95 1b       	sub	r25, r21
 43c:	55 0b       	sbc	r21, r21
 43e:	bb 27       	eor	r27, r27
 440:	aa 27       	eor	r26, r26

00000442 <.L2^B1>:
 442:	62 17       	cp	r22, r18
 444:	73 07       	cpc	r23, r19
 446:	84 07       	cpc	r24, r20
 448:	38 f0       	brcs	.+14     	; 0x458 <.L3^B1>
 44a:	9f 5f       	subi	r25, 0xFF	; 255
 44c:	5f 4f       	sbci	r21, 0xFF	; 255
 44e:	22 0f       	add	r18, r18
 450:	33 1f       	adc	r19, r19
 452:	44 1f       	adc	r20, r20
 454:	aa 1f       	adc	r26, r26
 456:	a9 f3       	breq	.-22     	; 0x442 <.L2^B1>

00000458 <.L3^B1>:
 458:	35 d0       	rcall	.+106    	; 0x4c4 <.L_div>
 45a:	0e 2e       	mov	r0, r30
 45c:	3a f0       	brmi	.+14     	; 0x46c <.L5^B1>

0000045e <.L4^B1>:
 45e:	e0 e8       	ldi	r30, 0x80	; 128
 460:	32 d0       	rcall	.+100    	; 0x4c6 <.L_div1>
 462:	91 50       	subi	r25, 0x01	; 1
 464:	50 40       	sbci	r21, 0x00	; 0
 466:	e6 95       	lsr	r30
 468:	00 1c       	adc	r0, r0
 46a:	ca f7       	brpl	.-14     	; 0x45e <.L4^B1>

0000046c <.L5^B1>:
 46c:	2b d0       	rcall	.+86     	; 0x4c4 <.L_div>
 46e:	fe 2f       	mov	r31, r30
 470:	29 d0       	rcall	.+82     	; 0x4c4 <.L_div>
 472:	66 0f       	add	r22, r22
 474:	77 1f       	adc	r23, r23
 476:	88 1f       	adc	r24, r24
 478:	bb 1f       	adc	r27, r27
 47a:	26 17       	cp	r18, r22
 47c:	37 07       	cpc	r19, r23
 47e:	48 07       	cpc	r20, r24
 480:	ab 07       	cpc	r26, r27
 482:	b0 e8       	ldi	r27, 0x80	; 128
 484:	09 f0       	breq	.+2      	; 0x488 <.L4^B2>
 486:	bb 0b       	sbc	r27, r27

00000488 <.L4^B2>:
 488:	80 2d       	mov	r24, r0
 48a:	bf 01       	movw	r22, r30
 48c:	ff 27       	eor	r31, r31
 48e:	93 58       	subi	r25, 0x83	; 131
 490:	5f 4f       	sbci	r21, 0xFF	; 255
 492:	3a f0       	brmi	.+14     	; 0x4a2 <.L13^B1>
 494:	9e 3f       	cpi	r25, 0xFE	; 254
 496:	51 05       	cpc	r21, r1
 498:	78 f0       	brcs	.+30     	; 0x4b8 <.L15^B1>
 49a:	0c 94 e0 02 	jmp	0x5c0	; 0x5c0 <__fp_inf>

0000049e <.L12^B1>:
 49e:	0c 94 2b 03 	jmp	0x656	; 0x656 <__fp_szero>

000004a2 <.L13^B1>:
 4a2:	5f 3f       	cpi	r21, 0xFF	; 255
 4a4:	e4 f3       	brlt	.-8      	; 0x49e <.L12^B1>
 4a6:	98 3e       	cpi	r25, 0xE8	; 232
 4a8:	d4 f3       	brlt	.-12     	; 0x49e <.L12^B1>

000004aa <.L14^B1>:
 4aa:	86 95       	lsr	r24
 4ac:	77 95       	ror	r23
 4ae:	67 95       	ror	r22
 4b0:	b7 95       	ror	r27
 4b2:	f7 95       	ror	r31
 4b4:	9f 5f       	subi	r25, 0xFF	; 255
 4b6:	c9 f7       	brne	.-14     	; 0x4aa <.L14^B1>

000004b8 <.L15^B1>:
 4b8:	88 0f       	add	r24, r24
 4ba:	91 1d       	adc	r25, r1
 4bc:	96 95       	lsr	r25
 4be:	87 95       	ror	r24
 4c0:	97 f9       	bld	r25, 7
 4c2:	08 95       	ret

000004c4 <.L_div>:
 4c4:	e1 e0       	ldi	r30, 0x01	; 1

000004c6 <.L_div1>:
 4c6:	66 0f       	add	r22, r22
 4c8:	77 1f       	adc	r23, r23
 4ca:	88 1f       	adc	r24, r24
 4cc:	bb 1f       	adc	r27, r27
 4ce:	62 17       	cp	r22, r18
 4d0:	73 07       	cpc	r23, r19
 4d2:	84 07       	cpc	r24, r20
 4d4:	ba 07       	cpc	r27, r26
 4d6:	20 f0       	brcs	.+8      	; 0x4e0 <.L2^B2>
 4d8:	62 1b       	sub	r22, r18
 4da:	73 0b       	sbc	r23, r19
 4dc:	84 0b       	sbc	r24, r20
 4de:	ba 0b       	sbc	r27, r26

000004e0 <.L2^B2>:
 4e0:	ee 1f       	adc	r30, r30
 4e2:	88 f7       	brcc	.-30     	; 0x4c6 <.L_div1>
 4e4:	e0 95       	com	r30
 4e6:	08 95       	ret

000004e8 <__fixunssfsi>:
 4e8:	0e 94 10 03 	call	0x620	; 0x620 <__fp_splitA>
 4ec:	88 f0       	brcs	.+34     	; 0x510 <.L_err>
 4ee:	9f 57       	subi	r25, 0x7F	; 127
 4f0:	98 f0       	brcs	.+38     	; 0x518 <.L_zr>
 4f2:	b9 2f       	mov	r27, r25
 4f4:	99 27       	eor	r25, r25
 4f6:	b7 51       	subi	r27, 0x17	; 23
 4f8:	b0 f0       	brcs	.+44     	; 0x526 <.L4^B1>
 4fa:	e1 f0       	breq	.+56     	; 0x534 <.L_sign>

000004fc <.L1^B1>:
 4fc:	66 0f       	add	r22, r22
 4fe:	77 1f       	adc	r23, r23
 500:	88 1f       	adc	r24, r24
 502:	99 1f       	adc	r25, r25
 504:	1a f0       	brmi	.+6      	; 0x50c <.L2^B1>
 506:	ba 95       	dec	r27
 508:	c9 f7       	brne	.-14     	; 0x4fc <.L1^B1>
 50a:	14 c0       	rjmp	.+40     	; 0x534 <.L_sign>

0000050c <.L2^B1>:
 50c:	b1 30       	cpi	r27, 0x01	; 1
 50e:	91 f0       	breq	.+36     	; 0x534 <.L_sign>

00000510 <.L_err>:
 510:	0e 94 2a 03 	call	0x654	; 0x654 <__fp_zero>
 514:	b1 e0       	ldi	r27, 0x01	; 1
 516:	08 95       	ret

00000518 <.L_zr>:
 518:	0c 94 2a 03 	jmp	0x654	; 0x654 <__fp_zero>

0000051c <.L3^B1>:
 51c:	67 2f       	mov	r22, r23
 51e:	78 2f       	mov	r23, r24
 520:	88 27       	eor	r24, r24
 522:	b8 5f       	subi	r27, 0xF8	; 248
 524:	39 f0       	breq	.+14     	; 0x534 <.L_sign>

00000526 <.L4^B1>:
 526:	b9 3f       	cpi	r27, 0xF9	; 249
 528:	cc f3       	brlt	.-14     	; 0x51c <.L3^B1>

0000052a <.L5^B1>:
 52a:	86 95       	lsr	r24
 52c:	77 95       	ror	r23
 52e:	67 95       	ror	r22
 530:	b3 95       	inc	r27
 532:	d9 f7       	brne	.-10     	; 0x52a <.L5^B1>

00000534 <.L_sign>:
 534:	3e f4       	brtc	.+14     	; 0x544 <.L6^B1>
 536:	90 95       	com	r25
 538:	80 95       	com	r24
 53a:	70 95       	com	r23
 53c:	61 95       	neg	r22
 53e:	7f 4f       	sbci	r23, 0xFF	; 255
 540:	8f 4f       	sbci	r24, 0xFF	; 255
 542:	9f 4f       	sbci	r25, 0xFF	; 255

00000544 <.L6^B1>:
 544:	08 95       	ret

00000546 <__floatunsisf>:
 546:	e8 94       	clt
 548:	09 c0       	rjmp	.+18     	; 0x55c <.L1^B1>

0000054a <__floatsisf>:
 54a:	97 fb       	bst	r25, 7
 54c:	3e f4       	brtc	.+14     	; 0x55c <.L1^B1>
 54e:	90 95       	com	r25
 550:	80 95       	com	r24
 552:	70 95       	com	r23
 554:	61 95       	neg	r22
 556:	7f 4f       	sbci	r23, 0xFF	; 255
 558:	8f 4f       	sbci	r24, 0xFF	; 255
 55a:	9f 4f       	sbci	r25, 0xFF	; 255

0000055c <.L1^B1>:
 55c:	99 23       	and	r25, r25
 55e:	a9 f0       	breq	.+42     	; 0x58a <.L4^B1>
 560:	f9 2f       	mov	r31, r25
 562:	96 e9       	ldi	r25, 0x96	; 150
 564:	bb 27       	eor	r27, r27

00000566 <.L2^B1>:
 566:	93 95       	inc	r25
 568:	f6 95       	lsr	r31
 56a:	87 95       	ror	r24
 56c:	77 95       	ror	r23
 56e:	67 95       	ror	r22
 570:	b7 95       	ror	r27
 572:	f1 11       	cpse	r31, r1
 574:	f8 cf       	rjmp	.-16     	; 0x566 <.L2^B1>
 576:	fa f4       	brpl	.+62     	; 0x5b6 <.L_pack>
 578:	bb 0f       	add	r27, r27
 57a:	11 f4       	brne	.+4      	; 0x580 <.L3^B1>
 57c:	60 ff       	sbrs	r22, 0
 57e:	1b c0       	rjmp	.+54     	; 0x5b6 <.L_pack>

00000580 <.L3^B1>:
 580:	6f 5f       	subi	r22, 0xFF	; 255
 582:	7f 4f       	sbci	r23, 0xFF	; 255
 584:	8f 4f       	sbci	r24, 0xFF	; 255
 586:	9f 4f       	sbci	r25, 0xFF	; 255
 588:	16 c0       	rjmp	.+44     	; 0x5b6 <.L_pack>

0000058a <.L4^B1>:
 58a:	88 23       	and	r24, r24
 58c:	11 f0       	breq	.+4      	; 0x592 <.L5^B1>
 58e:	96 e9       	ldi	r25, 0x96	; 150
 590:	11 c0       	rjmp	.+34     	; 0x5b4 <.L8^B1>

00000592 <.L5^B1>:
 592:	77 23       	and	r23, r23
 594:	21 f0       	breq	.+8      	; 0x59e <.L6^B1>
 596:	9e e8       	ldi	r25, 0x8E	; 142
 598:	87 2f       	mov	r24, r23
 59a:	76 2f       	mov	r23, r22
 59c:	05 c0       	rjmp	.+10     	; 0x5a8 <.L7^B1>

0000059e <.L6^B1>:
 59e:	66 23       	and	r22, r22
 5a0:	71 f0       	breq	.+28     	; 0x5be <.L9^B1>
 5a2:	96 e8       	ldi	r25, 0x86	; 134
 5a4:	86 2f       	mov	r24, r22
 5a6:	70 e0       	ldi	r23, 0x00	; 0

000005a8 <.L7^B1>:
 5a8:	60 e0       	ldi	r22, 0x00	; 0
 5aa:	2a f0       	brmi	.+10     	; 0x5b6 <.L_pack>

000005ac <.L10^B1>:
 5ac:	9a 95       	dec	r25
 5ae:	66 0f       	add	r22, r22
 5b0:	77 1f       	adc	r23, r23
 5b2:	88 1f       	adc	r24, r24

000005b4 <.L8^B1>:
 5b4:	da f7       	brpl	.-10     	; 0x5ac <.L10^B1>

000005b6 <.L_pack>:
 5b6:	88 0f       	add	r24, r24
 5b8:	96 95       	lsr	r25
 5ba:	87 95       	ror	r24
 5bc:	97 f9       	bld	r25, 7

000005be <.L9^B1>:
 5be:	08 95       	ret

000005c0 <__fp_inf>:
 5c0:	97 f9       	bld	r25, 7
 5c2:	9f 67       	ori	r25, 0x7F	; 127
 5c4:	80 e8       	ldi	r24, 0x80	; 128
 5c6:	70 e0       	ldi	r23, 0x00	; 0
 5c8:	60 e0       	ldi	r22, 0x00	; 0
 5ca:	08 95       	ret

000005cc <__fp_nan>:
 5cc:	9f ef       	ldi	r25, 0xFF	; 255
 5ce:	80 ec       	ldi	r24, 0xC0	; 192
 5d0:	08 95       	ret

000005d2 <__fp_pscA>:
 5d2:	00 24       	eor	r0, r0
 5d4:	0a 94       	dec	r0
 5d6:	16 16       	cp	r1, r22
 5d8:	17 06       	cpc	r1, r23
 5da:	18 06       	cpc	r1, r24
 5dc:	09 06       	cpc	r0, r25
 5de:	08 95       	ret

000005e0 <__fp_pscB>:
 5e0:	00 24       	eor	r0, r0
 5e2:	0a 94       	dec	r0
 5e4:	12 16       	cp	r1, r18
 5e6:	13 06       	cpc	r1, r19
 5e8:	14 06       	cpc	r1, r20
 5ea:	05 06       	cpc	r0, r21
 5ec:	08 95       	ret

000005ee <__fp_round>:
 5ee:	09 2e       	mov	r0, r25
 5f0:	03 94       	inc	r0
 5f2:	00 0c       	add	r0, r0
 5f4:	11 f4       	brne	.+4      	; 0x5fa <.L1^B1>
 5f6:	88 23       	and	r24, r24
 5f8:	52 f0       	brmi	.+20     	; 0x60e <.L3^B1>

000005fa <.L1^B1>:
 5fa:	bb 0f       	add	r27, r27
 5fc:	40 f4       	brcc	.+16     	; 0x60e <.L3^B1>
 5fe:	bf 2b       	or	r27, r31
 600:	11 f4       	brne	.+4      	; 0x606 <.L2^B1>
 602:	60 ff       	sbrs	r22, 0
 604:	04 c0       	rjmp	.+8      	; 0x60e <.L3^B1>

00000606 <.L2^B1>:
 606:	6f 5f       	subi	r22, 0xFF	; 255
 608:	7f 4f       	sbci	r23, 0xFF	; 255
 60a:	8f 4f       	sbci	r24, 0xFF	; 255
 60c:	9f 4f       	sbci	r25, 0xFF	; 255

0000060e <.L3^B1>:
 60e:	08 95       	ret

00000610 <__fp_split3>:
 610:	57 fd       	sbrc	r21, 7
 612:	90 58       	subi	r25, 0x80	; 128
 614:	44 0f       	add	r20, r20
 616:	55 1f       	adc	r21, r21
 618:	59 f0       	breq	.+22     	; 0x630 <.L4^B1>
 61a:	5f 3f       	cpi	r21, 0xFF	; 255
 61c:	71 f0       	breq	.+28     	; 0x63a <.L5^B1>

0000061e <.L1^B1>:
 61e:	47 95       	ror	r20

00000620 <__fp_splitA>:
 620:	88 0f       	add	r24, r24
 622:	97 fb       	bst	r25, 7
 624:	99 1f       	adc	r25, r25
 626:	61 f0       	breq	.+24     	; 0x640 <.L6^B1>
 628:	9f 3f       	cpi	r25, 0xFF	; 255
 62a:	79 f0       	breq	.+30     	; 0x64a <.L7^B1>

0000062c <.L3^B1>:
 62c:	87 95       	ror	r24
 62e:	08 95       	ret

00000630 <.L4^B1>:
 630:	12 16       	cp	r1, r18
 632:	13 06       	cpc	r1, r19
 634:	14 06       	cpc	r1, r20
 636:	55 1f       	adc	r21, r21
 638:	f2 cf       	rjmp	.-28     	; 0x61e <.L1^B1>

0000063a <.L5^B1>:
 63a:	46 95       	lsr	r20
 63c:	f1 df       	rcall	.-30     	; 0x620 <__fp_splitA>
 63e:	08 c0       	rjmp	.+16     	; 0x650 <.L8^B1>

00000640 <.L6^B1>:
 640:	16 16       	cp	r1, r22
 642:	17 06       	cpc	r1, r23
 644:	18 06       	cpc	r1, r24
 646:	99 1f       	adc	r25, r25
 648:	f1 cf       	rjmp	.-30     	; 0x62c <.L3^B1>

0000064a <.L7^B1>:
 64a:	86 95       	lsr	r24
 64c:	71 05       	cpc	r23, r1
 64e:	61 05       	cpc	r22, r1

00000650 <.L8^B1>:
 650:	08 94       	sec
 652:	08 95       	ret

00000654 <__fp_zero>:
 654:	e8 94       	clt

00000656 <__fp_szero>:
 656:	bb 27       	eor	r27, r27
 658:	66 27       	eor	r22, r22
 65a:	77 27       	eor	r23, r23
 65c:	cb 01       	movw	r24, r22
 65e:	97 f9       	bld	r25, 7
 660:	08 95       	ret

00000662 <__mulsf3>:
 662:	0e 94 44 03 	call	0x688	; 0x688 <__mulsf3x>
 666:	0c 94 f7 02 	jmp	0x5ee	; 0x5ee <__fp_round>

0000066a <.L0^B1>:
 66a:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <__fp_pscA>
 66e:	38 f0       	brcs	.+14     	; 0x67e <.L1^B1>
 670:	0e 94 f0 02 	call	0x5e0	; 0x5e0 <__fp_pscB>
 674:	20 f0       	brcs	.+8      	; 0x67e <.L1^B1>
 676:	95 23       	and	r25, r21
 678:	11 f0       	breq	.+4      	; 0x67e <.L1^B1>
 67a:	0c 94 e0 02 	jmp	0x5c0	; 0x5c0 <__fp_inf>

0000067e <.L1^B1>:
 67e:	0c 94 e6 02 	jmp	0x5cc	; 0x5cc <__fp_nan>

00000682 <.L2^B1>:
 682:	11 24       	eor	r1, r1
 684:	0c 94 2b 03 	jmp	0x656	; 0x656 <__fp_szero>

00000688 <__mulsf3x>:
 688:	0e 94 08 03 	call	0x610	; 0x610 <__fp_split3>
 68c:	70 f3       	brcs	.-36     	; 0x66a <.L0^B1>

0000068e <__mulsf3_pse>:
 68e:	95 9f       	mul	r25, r21
 690:	c1 f3       	breq	.-16     	; 0x682 <.L2^B1>
 692:	95 0f       	add	r25, r21
 694:	50 e0       	ldi	r21, 0x00	; 0
 696:	55 1f       	adc	r21, r21
 698:	62 9f       	mul	r22, r18
 69a:	f0 01       	movw	r30, r0
 69c:	72 9f       	mul	r23, r18
 69e:	bb 27       	eor	r27, r27
 6a0:	f0 0d       	add	r31, r0
 6a2:	b1 1d       	adc	r27, r1
 6a4:	63 9f       	mul	r22, r19
 6a6:	aa 27       	eor	r26, r26
 6a8:	f0 0d       	add	r31, r0
 6aa:	b1 1d       	adc	r27, r1
 6ac:	aa 1f       	adc	r26, r26
 6ae:	64 9f       	mul	r22, r20
 6b0:	66 27       	eor	r22, r22
 6b2:	b0 0d       	add	r27, r0
 6b4:	a1 1d       	adc	r26, r1
 6b6:	66 1f       	adc	r22, r22
 6b8:	82 9f       	mul	r24, r18
 6ba:	22 27       	eor	r18, r18
 6bc:	b0 0d       	add	r27, r0
 6be:	a1 1d       	adc	r26, r1
 6c0:	62 1f       	adc	r22, r18
 6c2:	73 9f       	mul	r23, r19
 6c4:	b0 0d       	add	r27, r0
 6c6:	a1 1d       	adc	r26, r1
 6c8:	62 1f       	adc	r22, r18
 6ca:	83 9f       	mul	r24, r19
 6cc:	a0 0d       	add	r26, r0
 6ce:	61 1d       	adc	r22, r1
 6d0:	22 1f       	adc	r18, r18
 6d2:	74 9f       	mul	r23, r20
 6d4:	33 27       	eor	r19, r19
 6d6:	a0 0d       	add	r26, r0
 6d8:	61 1d       	adc	r22, r1
 6da:	23 1f       	adc	r18, r19
 6dc:	84 9f       	mul	r24, r20
 6de:	60 0d       	add	r22, r0
 6e0:	21 1d       	adc	r18, r1
 6e2:	82 2f       	mov	r24, r18
 6e4:	76 2f       	mov	r23, r22
 6e6:	6a 2f       	mov	r22, r26
 6e8:	11 24       	eor	r1, r1
 6ea:	9f 57       	subi	r25, 0x7F	; 127
 6ec:	50 40       	sbci	r21, 0x00	; 0
 6ee:	9a f0       	brmi	.+38     	; 0x716 <.L13^B1>
 6f0:	f1 f0       	breq	.+60     	; 0x72e <.L15^B1>

000006f2 <.L10^B1>:
 6f2:	88 23       	and	r24, r24
 6f4:	4a f0       	brmi	.+18     	; 0x708 <.L11^B1>
 6f6:	ee 0f       	add	r30, r30
 6f8:	ff 1f       	adc	r31, r31
 6fa:	bb 1f       	adc	r27, r27
 6fc:	66 1f       	adc	r22, r22
 6fe:	77 1f       	adc	r23, r23
 700:	88 1f       	adc	r24, r24
 702:	91 50       	subi	r25, 0x01	; 1
 704:	50 40       	sbci	r21, 0x00	; 0
 706:	a9 f7       	brne	.-22     	; 0x6f2 <.L10^B1>

00000708 <.L11^B1>:
 708:	9e 3f       	cpi	r25, 0xFE	; 254
 70a:	51 05       	cpc	r21, r1
 70c:	80 f0       	brcs	.+32     	; 0x72e <.L15^B1>
 70e:	0c 94 e0 02 	jmp	0x5c0	; 0x5c0 <__fp_inf>

00000712 <.L12^B1>:
 712:	0c 94 2b 03 	jmp	0x656	; 0x656 <__fp_szero>

00000716 <.L13^B1>:
 716:	5f 3f       	cpi	r21, 0xFF	; 255
 718:	e4 f3       	brlt	.-8      	; 0x712 <.L12^B1>
 71a:	98 3e       	cpi	r25, 0xE8	; 232
 71c:	d4 f3       	brlt	.-12     	; 0x712 <.L12^B1>

0000071e <.L14^B1>:
 71e:	86 95       	lsr	r24
 720:	77 95       	ror	r23
 722:	67 95       	ror	r22
 724:	b7 95       	ror	r27
 726:	f7 95       	ror	r31
 728:	e7 95       	ror	r30
 72a:	9f 5f       	subi	r25, 0xFF	; 255
 72c:	c1 f7       	brne	.-16     	; 0x71e <.L14^B1>

0000072e <.L15^B1>:
 72e:	fe 2b       	or	r31, r30
 730:	88 0f       	add	r24, r24
 732:	91 1d       	adc	r25, r1
 734:	96 95       	lsr	r25
 736:	87 95       	ror	r24
 738:	97 f9       	bld	r25, 7
 73a:	08 95       	ret

0000073c <sprintf>:
 73c:	ae e0       	ldi	r26, 0x0E	; 14
 73e:	b0 e0       	ldi	r27, 0x00	; 0
 740:	e4 ea       	ldi	r30, 0xA4	; 164
 742:	f3 e0       	ldi	r31, 0x03	; 3
 744:	0c 94 6f 06 	jmp	0xcde	; 0xcde <.Loc.16>

00000748 <.L1^B1>:
 748:	86 e0       	ldi	r24, 0x06	; 6
 74a:	8c 83       	std	Y+4, r24	; 0x04
 74c:	2b 89       	ldd	r18, Y+19	; 0x13
 74e:	3c 89       	ldd	r19, Y+20	; 0x14
 750:	29 83       	std	Y+1, r18	; 0x01
 752:	3a 83       	std	Y+2, r19	; 0x02
 754:	8f ef       	ldi	r24, 0xFF	; 255
 756:	9f e7       	ldi	r25, 0x7F	; 127
 758:	8d 83       	std	Y+5, r24	; 0x05
 75a:	9e 83       	std	Y+6, r25	; 0x06
 75c:	ae 01       	movw	r20, r28
 75e:	49 5e       	subi	r20, 0xE9	; 233
 760:	5f 4f       	sbci	r21, 0xFF	; 255
 762:	6d 89       	ldd	r22, Y+21	; 0x15
 764:	7e 89       	ldd	r23, Y+22	; 0x16
 766:	ce 01       	movw	r24, r28
 768:	01 96       	adiw	r24, 0x01	; 1
 76a:	0e 94 c2 03 	call	0x784	; 0x784 <vfprintf>
 76e:	ef 81       	ldd	r30, Y+7	; 0x07
 770:	f8 85       	ldd	r31, Y+8	; 0x08
 772:	2b 89       	ldd	r18, Y+19	; 0x13
 774:	3c 89       	ldd	r19, Y+20	; 0x14
 776:	e2 0f       	add	r30, r18
 778:	f3 1f       	adc	r31, r19
 77a:	10 82       	st	Z, r1
 77c:	2e 96       	adiw	r28, 0x0e	; 14
 77e:	e2 e0       	ldi	r30, 0x02	; 2
 780:	0c 94 8b 06 	jmp	0xd16	; 0xd16 <.Loc.16>

00000784 <vfprintf>:
 784:	ab e0       	ldi	r26, 0x0B	; 11
 786:	b0 e0       	ldi	r27, 0x00	; 0
 788:	e8 ec       	ldi	r30, 0xC8	; 200
 78a:	f3 e0       	ldi	r31, 0x03	; 3
 78c:	0c 94 62 06 	jmp	0xcc4	; 0xcc4 <.Loc.3>

00000790 <.L1^B1>:
 790:	6c 01       	movw	r12, r24
 792:	7b 01       	movw	r14, r22
 794:	8a 01       	movw	r16, r20
 796:	fc 01       	movw	r30, r24
 798:	16 82       	std	Z+6, r1	; 0x06
 79a:	17 82       	std	Z+7, r1	; 0x07
 79c:	83 81       	ldd	r24, Z+3	; 0x03
 79e:	81 ff       	sbrs	r24, 1
 7a0:	df c1       	rjmp	.+958    	; 0xb60 <.L80>
 7a2:	3a e0       	ldi	r19, 0x0A	; 10
 7a4:	53 2e       	mov	r5, r19

000007a6 <.L3>:
 7a6:	f6 01       	movw	r30, r12
 7a8:	23 81       	ldd	r18, Z+3	; 0x03
 7aa:	f7 01       	movw	r30, r14
 7ac:	23 fd       	sbrc	r18, 3
 7ae:	85 91       	lpm	r24, Z+
 7b0:	23 ff       	sbrs	r18, 3
 7b2:	81 91       	ld	r24, Z+
 7b4:	7f 01       	movw	r14, r30
 7b6:	81 15       	cp	r24, r1
 7b8:	09 f4       	brne	.+2      	; 0x7bc <L0^A+0x2>

000007ba <L0^A>:
 7ba:	37 c1       	rjmp	.+622    	; 0xa2a <.L4>
 7bc:	85 32       	cpi	r24, 0x25	; 37
 7be:	39 f4       	brne	.+14     	; 0x7ce <.L5>
 7c0:	23 fd       	sbrc	r18, 3
 7c2:	95 91       	lpm	r25, Z+
 7c4:	23 ff       	sbrs	r18, 3
 7c6:	91 91       	ld	r25, Z+
 7c8:	7f 01       	movw	r14, r30
 7ca:	95 32       	cpi	r25, 0x25	; 37
 7cc:	29 f4       	brne	.+10     	; 0x7d8 <.L81>

000007ce <.L5>:
 7ce:	b6 01       	movw	r22, r12
 7d0:	90 e0       	ldi	r25, 0x00	; 0
 7d2:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 7d6:	e7 cf       	rjmp	.-50     	; 0x7a6 <.L3>

000007d8 <.L81>:
 7d8:	30 e0       	ldi	r19, 0x00	; 0
 7da:	91 2c       	mov	r9, r1
 7dc:	61 2c       	mov	r6, r1
 7de:	71 2c       	mov	r7, r1

000007e0 <.L6>:
 7e0:	f0 e2       	ldi	r31, 0x20	; 32
 7e2:	7f 16       	cp	r7, r31
 7e4:	40 f5       	brcc	.+80     	; 0x836 <.L8>
 7e6:	9b 32       	cpi	r25, 0x2B	; 43
 7e8:	d9 f0       	breq	.+54     	; 0x820 <.L9>
 7ea:	58 f4       	brcc	.+22     	; 0x802 <.L10>
 7ec:	90 32       	cpi	r25, 0x20	; 32
 7ee:	d1 f0       	breq	.+52     	; 0x824 <.L11>
 7f0:	93 32       	cpi	r25, 0x23	; 35
 7f2:	f1 f0       	breq	.+60     	; 0x830 <.L12>

000007f4 <.L13>:
 7f4:	9e 32       	cpi	r25, 0x2E	; 46
 7f6:	91 f5       	brne	.+100    	; 0x85c <.L19>
 7f8:	76 fc       	sbrc	r7, 6
 7fa:	17 c1       	rjmp	.+558    	; 0xa2a <.L4>
 7fc:	68 94       	set
 7fe:	76 f8       	bld	r7, 6
 800:	06 c0       	rjmp	.+12     	; 0x80e <.L16>

00000802 <.L10>:
 802:	9d 32       	cpi	r25, 0x2D	; 45
 804:	91 f0       	breq	.+36     	; 0x82a <.L14>
 806:	90 33       	cpi	r25, 0x30	; 48
 808:	c1 f4       	brne	.+48     	; 0x83a <.L15>
 80a:	68 94       	set
 80c:	70 f8       	bld	r7, 0

0000080e <.L16>:
 80e:	f7 01       	movw	r30, r14
 810:	23 fd       	sbrc	r18, 3
 812:	95 91       	lpm	r25, Z+
 814:	23 ff       	sbrs	r18, 3
 816:	91 91       	ld	r25, Z+
 818:	7f 01       	movw	r14, r30
 81a:	91 11       	cpse	r25, r1
 81c:	e1 cf       	rjmp	.-62     	; 0x7e0 <.L6>
 81e:	28 c0       	rjmp	.+80     	; 0x870 <.L17>

00000820 <.L9>:
 820:	68 94       	set
 822:	71 f8       	bld	r7, 1

00000824 <.L11>:
 824:	68 94       	set
 826:	72 f8       	bld	r7, 2
 828:	f2 cf       	rjmp	.-28     	; 0x80e <.L16>

0000082a <.L14>:
 82a:	68 94       	set
 82c:	73 f8       	bld	r7, 3
 82e:	ef cf       	rjmp	.-34     	; 0x80e <.L16>

00000830 <.L12>:
 830:	68 94       	set
 832:	74 f8       	bld	r7, 4
 834:	ec cf       	rjmp	.-40     	; 0x80e <.L16>

00000836 <.L8>:
 836:	77 fc       	sbrc	r7, 7
 838:	1b c0       	rjmp	.+54     	; 0x870 <.L17>

0000083a <.L15>:
 83a:	80 ed       	ldi	r24, 0xD0	; 208
 83c:	89 0f       	add	r24, r25
 83e:	8a 30       	cpi	r24, 0x0A	; 10
 840:	c8 f6       	brcc	.-78     	; 0x7f4 <.L13>
 842:	76 fe       	sbrs	r7, 6
 844:	05 c0       	rjmp	.+10     	; 0x850 <.L18>
 846:	95 9c       	mul	r9, r5
 848:	80 0d       	add	r24, r0
 84a:	11 24       	eor	r1, r1
 84c:	98 2e       	mov	r9, r24
 84e:	df cf       	rjmp	.-66     	; 0x80e <.L16>

00000850 <.L18>:
 850:	65 9c       	mul	r6, r5
 852:	80 0d       	add	r24, r0
 854:	11 24       	eor	r1, r1
 856:	68 2e       	mov	r6, r24
 858:	7f 2a       	or	r7, r31
 85a:	d9 cf       	rjmp	.-78     	; 0x80e <.L16>

0000085c <.L19>:
 85c:	9c 36       	cpi	r25, 0x6C	; 108
 85e:	19 f4       	brne	.+6      	; 0x866 <.L20>
 860:	68 94       	set
 862:	77 f8       	bld	r7, 7
 864:	d4 cf       	rjmp	.-88     	; 0x80e <.L16>

00000866 <.L20>:
 866:	9c 34       	cpi	r25, 0x4C	; 76
 868:	09 f4       	brne	.+2      	; 0x86c <L0^A+0x2>

0000086a <L0^A>:
 86a:	45 c0       	rjmp	.+138    	; 0x8f6 <.L82>
 86c:	98 36       	cpi	r25, 0x68	; 104
 86e:	79 f2       	breq	.-98     	; 0x80e <.L16>

00000870 <.L17>:
 870:	89 2f       	mov	r24, r25
 872:	8f 7d       	andi	r24, 0xDF	; 223
 874:	85 54       	subi	r24, 0x45	; 69
 876:	83 30       	cpi	r24, 0x03	; 3
 878:	08 f4       	brcc	.+2      	; 0x87c <L0^A+0x2>

0000087a <L0^A>:
 87a:	3f c0       	rjmp	.+126    	; 0x8fa <.L21>
 87c:	93 36       	cpi	r25, 0x63	; 99
 87e:	09 f4       	brne	.+2      	; 0x882 <L0^A+0x2>

00000880 <L0^A>:
 880:	61 c0       	rjmp	.+194    	; 0x944 <.L22>
 882:	93 37       	cpi	r25, 0x73	; 115
 884:	09 f4       	brne	.+2      	; 0x888 <L0^A+0x2>

00000886 <L0^A>:
 886:	6b c0       	rjmp	.+214    	; 0x95e <.L23>
 888:	93 35       	cpi	r25, 0x53	; 83
 88a:	09 f4       	brne	.+2      	; 0x88e <L0^A+0x2>

0000088c <L0^A>:
 88c:	77 c0       	rjmp	.+238    	; 0x97c <.L24>
 88e:	94 36       	cpi	r25, 0x64	; 100
 890:	19 f0       	breq	.+6      	; 0x898 <.L39>
 892:	99 36       	cpi	r25, 0x69	; 105
 894:	09 f0       	breq	.+2      	; 0x898 <.L39>

00000896 <L0^A>:
 896:	a4 c0       	rjmp	.+328    	; 0x9e0 <.L40>

00000898 <.L39>:
 898:	f8 01       	movw	r30, r16
 89a:	77 fe       	sbrs	r7, 7
 89c:	9a c0       	rjmp	.+308    	; 0x9d2 <.L41>
 89e:	61 91       	ld	r22, Z+
 8a0:	71 91       	ld	r23, Z+
 8a2:	81 91       	ld	r24, Z+
 8a4:	91 91       	ld	r25, Z+

000008a6 <.L126>:
 8a6:	8f 01       	movw	r16, r30
 8a8:	27 2d       	mov	r18, r7
 8aa:	2f 76       	andi	r18, 0x6F	; 111
 8ac:	82 2e       	mov	r8, r18
 8ae:	97 ff       	sbrs	r25, 7
 8b0:	04 c0       	rjmp	.+8      	; 0x8ba <.L43>
 8b2:	0e 94 57 06 	call	0xcae	; 0xcae <__negsi2>
 8b6:	68 94       	set
 8b8:	87 f8       	bld	r8, 7

000008ba <.L43>:
 8ba:	2a e0       	ldi	r18, 0x0A	; 10
 8bc:	30 e0       	ldi	r19, 0x00	; 0
 8be:	5e 01       	movw	r10, r28
 8c0:	4f ef       	ldi	r20, 0xFF	; 255
 8c2:	a4 1a       	sub	r10, r20
 8c4:	b4 0a       	sbc	r11, r20
 8c6:	a5 01       	movw	r20, r10
 8c8:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__ultoa_invert>
 8cc:	78 2e       	mov	r7, r24
 8ce:	7a 18       	sub	r7, r10

000008d0 <.L44>:
 8d0:	86 fe       	sbrs	r8, 6
 8d2:	cf c0       	rjmp	.+414    	; 0xa72 <.L54>
 8d4:	88 2d       	mov	r24, r8
 8d6:	8e 7f       	andi	r24, 0xFE	; 254
 8d8:	79 14       	cp	r7, r9
 8da:	08 f0       	brcs	.+2      	; 0x8de <L0^A+0x2>

000008dc <L0^A>:
 8dc:	c9 c0       	rjmp	.+402    	; 0xa70 <.L88>
 8de:	84 fe       	sbrs	r8, 4
 8e0:	1d c1       	rjmp	.+570    	; 0xb1c <.L89>
 8e2:	82 fc       	sbrc	r8, 2
 8e4:	11 c1       	rjmp	.+546    	; 0xb08 <.L90>
 8e6:	2e ee       	ldi	r18, 0xEE	; 238
 8e8:	82 22       	and	r8, r18
 8ea:	b9 2c       	mov	r11, r9

000008ec <.L55>:
 8ec:	88 2d       	mov	r24, r8
 8ee:	86 78       	andi	r24, 0x86	; 134
 8f0:	09 f4       	brne	.+2      	; 0x8f4 <L0^A+0x2>

000008f2 <L0^A>:
 8f2:	cb c0       	rjmp	.+406    	; 0xa8a <.L58>
 8f4:	0e c1       	rjmp	.+540    	; 0xb12 <.L128>

000008f6 <.L82>:
 8f6:	31 e0       	ldi	r19, 0x01	; 1
 8f8:	8a cf       	rjmp	.-236    	; 0x80e <.L16>

000008fa <.L21>:
 8fa:	31 15       	cp	r19, r1
 8fc:	01 f1       	breq	.+64     	; 0x93e <.L26>
 8fe:	08 5f       	subi	r16, 0xF8	; 248
 900:	1f 4f       	sbci	r17, 0xFF	; 255

00000902 <.L27>:
 902:	8f e3       	ldi	r24, 0x3F	; 63
 904:	89 83       	std	Y+1, r24	; 0x01
 906:	21 e0       	ldi	r18, 0x01	; 1
 908:	82 2e       	mov	r8, r18
 90a:	91 2c       	mov	r9, r1
 90c:	5e 01       	movw	r10, r28
 90e:	2f ef       	ldi	r18, 0xFF	; 255
 910:	a2 1a       	sub	r10, r18
 912:	b2 0a       	sbc	r11, r18

00000914 <.L28>:
 914:	e8 94       	clt
 916:	77 f8       	bld	r7, 7

00000918 <.L30>:
 918:	73 fc       	sbrc	r7, 3
 91a:	03 c0       	rjmp	.+6      	; 0x922 <.L36>

0000091c <.L32>:
 91c:	86 14       	cp	r8, r6
 91e:	91 04       	cpc	r9, r1
 920:	f0 f1       	brcs	.+124    	; 0x99e <.L34>

00000922 <.L36>:
 922:	81 14       	cp	r8, r1
 924:	91 04       	cpc	r9, r1
 926:	09 f0       	breq	.+2      	; 0x92a <.L77>

00000928 <L0^A>:
 928:	41 c0       	rjmp	.+130    	; 0x9ac <.L37>

0000092a <.L77>:
 92a:	61 14       	cp	r6, r1
 92c:	09 f4       	brne	.+2      	; 0x930 <L0^A+0x2>

0000092e <L0^A>:
 92e:	3b cf       	rjmp	.-394    	; 0x7a6 <.L3>
 930:	b6 01       	movw	r22, r12
 932:	80 e2       	ldi	r24, 0x20	; 32
 934:	90 e0       	ldi	r25, 0x00	; 0
 936:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 93a:	6a 94       	dec	r6
 93c:	f6 cf       	rjmp	.-20     	; 0x92a <.L77>

0000093e <.L26>:
 93e:	0c 5f       	subi	r16, 0xFC	; 252
 940:	1f 4f       	sbci	r17, 0xFF	; 255
 942:	df cf       	rjmp	.-66     	; 0x902 <.L27>

00000944 <.L22>:
 944:	f8 01       	movw	r30, r16
 946:	80 81       	ld	r24, Z
 948:	89 83       	std	Y+1, r24	; 0x01
 94a:	0e 5f       	subi	r16, 0xFE	; 254
 94c:	1f 4f       	sbci	r17, 0xFF	; 255
 94e:	91 e0       	ldi	r25, 0x01	; 1
 950:	89 2e       	mov	r8, r25
 952:	91 2c       	mov	r9, r1
 954:	5e 01       	movw	r10, r28
 956:	ff ef       	ldi	r31, 0xFF	; 255
 958:	af 1a       	sub	r10, r31
 95a:	bf 0a       	sbc	r11, r31
 95c:	db cf       	rjmp	.-74     	; 0x914 <.L28>

0000095e <.L23>:
 95e:	f8 01       	movw	r30, r16
 960:	a1 90       	ld	r10, Z+
 962:	b1 90       	ld	r11, Z+
 964:	8f 01       	movw	r16, r30
 966:	69 2d       	mov	r22, r9
 968:	70 e0       	ldi	r23, 0x00	; 0
 96a:	76 fc       	sbrc	r7, 6
 96c:	02 c0       	rjmp	.+4      	; 0x972 <.L29>
 96e:	6f ef       	ldi	r22, 0xFF	; 255
 970:	7f ef       	ldi	r23, 0xFF	; 255

00000972 <.L29>:
 972:	c5 01       	movw	r24, r10
 974:	0e 94 be 05 	call	0xb7c	; 0xb7c <strnlen>
 978:	4c 01       	movw	r8, r24
 97a:	cc cf       	rjmp	.-104    	; 0x914 <.L28>

0000097c <.L24>:
 97c:	f8 01       	movw	r30, r16
 97e:	a1 90       	ld	r10, Z+
 980:	b1 90       	ld	r11, Z+
 982:	8f 01       	movw	r16, r30
 984:	69 2d       	mov	r22, r9
 986:	70 e0       	ldi	r23, 0x00	; 0
 988:	76 fc       	sbrc	r7, 6
 98a:	02 c0       	rjmp	.+4      	; 0x990 <.L31>
 98c:	6f ef       	ldi	r22, 0xFF	; 255
 98e:	7f ef       	ldi	r23, 0xFF	; 255

00000990 <.L31>:
 990:	c5 01       	movw	r24, r10
 992:	0e 94 b3 05 	call	0xb66	; 0xb66 <strnlen_P>
 996:	4c 01       	movw	r8, r24
 998:	68 94       	set
 99a:	77 f8       	bld	r7, 7
 99c:	bd cf       	rjmp	.-134    	; 0x918 <.L30>

0000099e <.L34>:
 99e:	b6 01       	movw	r22, r12
 9a0:	80 e2       	ldi	r24, 0x20	; 32
 9a2:	90 e0       	ldi	r25, 0x00	; 0
 9a4:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 9a8:	6a 94       	dec	r6
 9aa:	b8 cf       	rjmp	.-144    	; 0x91c <.L32>

000009ac <.L37>:
 9ac:	f5 01       	movw	r30, r10
 9ae:	77 fc       	sbrc	r7, 7
 9b0:	85 91       	lpm	r24, Z+
 9b2:	77 fe       	sbrs	r7, 7
 9b4:	81 91       	ld	r24, Z+
 9b6:	5f 01       	movw	r10, r30
 9b8:	b6 01       	movw	r22, r12
 9ba:	90 e0       	ldi	r25, 0x00	; 0
 9bc:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 9c0:	81 e0       	ldi	r24, 0x01	; 1
 9c2:	61 10       	cpse	r6, r1
 9c4:	01 c0       	rjmp	.+2      	; 0x9c8 <.L35>
 9c6:	80 e0       	ldi	r24, 0x00	; 0

000009c8 <.L35>:
 9c8:	68 1a       	sub	r6, r24
 9ca:	f1 e0       	ldi	r31, 0x01	; 1
 9cc:	8f 1a       	sub	r8, r31
 9ce:	91 08       	sbc	r9, r1
 9d0:	a8 cf       	rjmp	.-176    	; 0x922 <.L36>

000009d2 <.L41>:
 9d2:	61 91       	ld	r22, Z+
 9d4:	71 91       	ld	r23, Z+
 9d6:	87 2f       	mov	r24, r23
 9d8:	88 0f       	add	r24, r24
 9da:	88 0b       	sbc	r24, r24
 9dc:	98 2f       	mov	r25, r24
 9de:	63 cf       	rjmp	.-314    	; 0x8a6 <.L126>

000009e0 <.L40>:
 9e0:	95 37       	cpi	r25, 0x75	; 117
 9e2:	c9 f4       	brne	.+50     	; 0xa16 <.L45>
 9e4:	87 2c       	mov	r8, r7
 9e6:	e8 94       	clt
 9e8:	84 f8       	bld	r8, 4
 9ea:	2a e0       	ldi	r18, 0x0A	; 10
 9ec:	30 e0       	ldi	r19, 0x00	; 0

000009ee <.L46>:
 9ee:	f8 01       	movw	r30, r16
 9f0:	87 fe       	sbrs	r8, 7
 9f2:	39 c0       	rjmp	.+114    	; 0xa66 <.L52>
 9f4:	61 91       	ld	r22, Z+
 9f6:	71 91       	ld	r23, Z+
 9f8:	81 91       	ld	r24, Z+
 9fa:	91 91       	ld	r25, Z+

000009fc <.L127>:
 9fc:	8f 01       	movw	r16, r30
 9fe:	5e 01       	movw	r10, r28
 a00:	ff ef       	ldi	r31, 0xFF	; 255
 a02:	af 1a       	sub	r10, r31
 a04:	bf 0a       	sbc	r11, r31
 a06:	a5 01       	movw	r20, r10
 a08:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__ultoa_invert>
 a0c:	78 2e       	mov	r7, r24
 a0e:	7a 18       	sub	r7, r10
 a10:	e8 94       	clt
 a12:	87 f8       	bld	r8, 7
 a14:	5d cf       	rjmp	.-326    	; 0x8d0 <.L44>

00000a16 <.L45>:
 a16:	87 2d       	mov	r24, r7
 a18:	89 7f       	andi	r24, 0xF9	; 249
 a1a:	88 2e       	mov	r8, r24
 a1c:	90 37       	cpi	r25, 0x70	; 112
 a1e:	99 f0       	breq	.+38     	; 0xa46 <.L47>
 a20:	58 f4       	brcc	.+22     	; 0xa38 <.L48>
 a22:	98 35       	cpi	r25, 0x58	; 88
 a24:	a9 f0       	breq	.+42     	; 0xa50 <.L49>
 a26:	9f 36       	cpi	r25, 0x6F	; 111
 a28:	d9 f0       	breq	.+54     	; 0xa60 <.L85>

00000a2a <.L4>:
 a2a:	f6 01       	movw	r30, r12
 a2c:	86 81       	ldd	r24, Z+6	; 0x06
 a2e:	97 81       	ldd	r25, Z+7	; 0x07

00000a30 <.L1>:
 a30:	2b 96       	adiw	r28, 0x0b	; 11
 a32:	ef e0       	ldi	r30, 0x0F	; 15
 a34:	0c 94 7e 06 	jmp	0xcfc	; 0xcfc <.Loc.3>

00000a38 <.L48>:
 a38:	98 37       	cpi	r25, 0x78	; 120
 a3a:	b9 f7       	brne	.-18     	; 0xa2a <.L4>
 a3c:	74 fc       	sbrc	r7, 4
 a3e:	05 c0       	rjmp	.+10     	; 0xa4a <.L51>

00000a40 <.L86>:
 a40:	20 e1       	ldi	r18, 0x10	; 16
 a42:	30 e0       	ldi	r19, 0x00	; 0
 a44:	d4 cf       	rjmp	.-88     	; 0x9ee <.L46>

00000a46 <.L47>:
 a46:	68 94       	set
 a48:	84 f8       	bld	r8, 4

00000a4a <.L51>:
 a4a:	68 94       	set
 a4c:	82 f8       	bld	r8, 2
 a4e:	f8 cf       	rjmp	.-16     	; 0xa40 <.L86>

00000a50 <.L49>:
 a50:	74 fe       	sbrs	r7, 4
 a52:	03 c0       	rjmp	.+6      	; 0xa5a <.L87>
 a54:	e7 2d       	mov	r30, r7
 a56:	e6 60       	ori	r30, 0x06	; 6
 a58:	8e 2e       	mov	r8, r30

00000a5a <.L87>:
 a5a:	20 e1       	ldi	r18, 0x10	; 16
 a5c:	32 e0       	ldi	r19, 0x02	; 2
 a5e:	c7 cf       	rjmp	.-114    	; 0x9ee <.L46>

00000a60 <.L85>:
 a60:	28 e0       	ldi	r18, 0x08	; 8
 a62:	30 e0       	ldi	r19, 0x00	; 0
 a64:	c4 cf       	rjmp	.-120    	; 0x9ee <.L46>

00000a66 <.L52>:
 a66:	61 91       	ld	r22, Z+
 a68:	71 91       	ld	r23, Z+
 a6a:	80 e0       	ldi	r24, 0x00	; 0
 a6c:	90 e0       	ldi	r25, 0x00	; 0
 a6e:	c6 cf       	rjmp	.-116    	; 0x9fc <.L127>

00000a70 <.L88>:
 a70:	88 2e       	mov	r8, r24

00000a72 <.L54>:
 a72:	b7 2c       	mov	r11, r7
 a74:	84 fe       	sbrs	r8, 4
 a76:	3a cf       	rjmp	.-396    	; 0x8ec <.L55>

00000a78 <.L56>:
 a78:	fe 01       	movw	r30, r28
 a7a:	e7 0d       	add	r30, r7
 a7c:	f1 1d       	adc	r31, r1
 a7e:	80 81       	ld	r24, Z
 a80:	80 33       	cpi	r24, 0x30	; 48
 a82:	09 f0       	breq	.+2      	; 0xa86 <L0^A+0x2>

00000a84 <L0^A>:
 a84:	44 c0       	rjmp	.+136    	; 0xb0e <.L57>
 a86:	49 ee       	ldi	r20, 0xE9	; 233
 a88:	84 22       	and	r8, r20

00000a8a <.L58>:
 a8a:	83 fc       	sbrc	r8, 3
 a8c:	0e c0       	rjmp	.+28     	; 0xaaa <.L60>
 a8e:	80 fe       	sbrs	r8, 0
 a90:	51 c0       	rjmp	.+162    	; 0xb34 <.L92>
 a92:	97 2c       	mov	r9, r7
 a94:	b6 14       	cp	r11, r6
 a96:	18 f4       	brcc	.+6      	; 0xa9e <.L79>
 a98:	96 0c       	add	r9, r6
 a9a:	9b 18       	sub	r9, r11
 a9c:	b6 2c       	mov	r11, r6

00000a9e <.L79>:
 a9e:	86 2d       	mov	r24, r6
 aa0:	8b 19       	sub	r24, r11
 aa2:	6b 14       	cp	r6, r11
 aa4:	08 f4       	brcc	.+2      	; 0xaa8 <.L65>
 aa6:	80 e0       	ldi	r24, 0x00	; 0

00000aa8 <.L65>:
 aa8:	b8 0e       	add	r11, r24

00000aaa <.L60>:
 aaa:	b6 14       	cp	r11, r6
 aac:	08 f0       	brcs	.+2      	; 0xab0 <L0^A+0x2>

00000aae <L0^A>:
 aae:	44 c0       	rjmp	.+136    	; 0xb38 <.L94>
 ab0:	6b 18       	sub	r6, r11

00000ab2 <.L67>:
 ab2:	84 fe       	sbrs	r8, 4
 ab4:	43 c0       	rjmp	.+134    	; 0xb3c <.L68>
 ab6:	b6 01       	movw	r22, r12
 ab8:	80 e3       	ldi	r24, 0x30	; 48
 aba:	90 e0       	ldi	r25, 0x00	; 0
 abc:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 ac0:	82 fe       	sbrs	r8, 2
 ac2:	09 c0       	rjmp	.+18     	; 0xad6 <.L74>
 ac4:	88 e5       	ldi	r24, 0x58	; 88
 ac6:	90 e0       	ldi	r25, 0x00	; 0
 ac8:	81 fc       	sbrc	r8, 1
 aca:	02 c0       	rjmp	.+4      	; 0xad0 <.L70>
 acc:	88 e7       	ldi	r24, 0x78	; 120
 ace:	90 e0       	ldi	r25, 0x00	; 0

00000ad0 <.L70>:
 ad0:	b6 01       	movw	r22, r12

00000ad2 <.L129>:
 ad2:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>

00000ad6 <.L74>:
 ad6:	79 14       	cp	r7, r9
 ad8:	e0 f1       	brcs	.+120    	; 0xb52 <.L75>
 ada:	5e 01       	movw	r10, r28
 adc:	8f ef       	ldi	r24, 0xFF	; 255
 ade:	a8 1a       	sub	r10, r24
 ae0:	b8 0a       	sbc	r11, r24
 ae2:	7a 94       	dec	r7
 ae4:	82 e0       	ldi	r24, 0x02	; 2
 ae6:	88 2e       	mov	r8, r24
 ae8:	91 2c       	mov	r9, r1
 aea:	8c 0e       	add	r8, r28
 aec:	9d 1e       	adc	r9, r29
 aee:	87 0c       	add	r8, r7
 af0:	91 1c       	adc	r9, r1

00000af2 <.L76>:
 af2:	f4 01       	movw	r30, r8
 af4:	82 91       	ld	r24, -Z
 af6:	4f 01       	movw	r8, r30
 af8:	b6 01       	movw	r22, r12
 afa:	90 e0       	ldi	r25, 0x00	; 0
 afc:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 b00:	8a 14       	cp	r8, r10
 b02:	9b 04       	cpc	r9, r11
 b04:	b1 f7       	brne	.-20     	; 0xaf2 <.L76>
 b06:	11 cf       	rjmp	.-478    	; 0x92a <.L77>

00000b08 <.L90>:
 b08:	b9 2c       	mov	r11, r9
 b0a:	88 2e       	mov	r8, r24
 b0c:	b5 cf       	rjmp	.-150    	; 0xa78 <.L56>

00000b0e <.L57>:
 b0e:	82 fc       	sbrc	r8, 2
 b10:	02 c0       	rjmp	.+4      	; 0xb16 <.L59>

00000b12 <.L128>:
 b12:	b3 94       	inc	r11
 b14:	ba cf       	rjmp	.-140    	; 0xa8a <.L58>

00000b16 <.L59>:
 b16:	b3 94       	inc	r11
 b18:	b3 94       	inc	r11
 b1a:	b7 cf       	rjmp	.-146    	; 0xa8a <.L58>

00000b1c <.L89>:
 b1c:	b9 2c       	mov	r11, r9
 b1e:	88 2e       	mov	r8, r24
 b20:	e5 ce       	rjmp	.-566    	; 0x8ec <.L55>

00000b22 <.L63>:
 b22:	b6 01       	movw	r22, r12
 b24:	80 e2       	ldi	r24, 0x20	; 32
 b26:	90 e0       	ldi	r25, 0x00	; 0
 b28:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 b2c:	a3 94       	inc	r10

00000b2e <.L61>:
 b2e:	a6 14       	cp	r10, r6
 b30:	c0 f3       	brcs	.-16     	; 0xb22 <.L63>
 b32:	b5 cf       	rjmp	.-150    	; 0xa9e <.L79>

00000b34 <.L92>:
 b34:	ab 2c       	mov	r10, r11
 b36:	fb cf       	rjmp	.-10     	; 0xb2e <.L61>

00000b38 <.L94>:
 b38:	61 2c       	mov	r6, r1
 b3a:	bb cf       	rjmp	.-138    	; 0xab2 <.L67>

00000b3c <.L68>:
 b3c:	88 2d       	mov	r24, r8
 b3e:	86 78       	andi	r24, 0x86	; 134
 b40:	51 f2       	breq	.-108    	; 0xad6 <.L74>
 b42:	80 e2       	ldi	r24, 0x20	; 32
 b44:	81 fc       	sbrc	r8, 1
 b46:	8b e2       	ldi	r24, 0x2B	; 43
 b48:	87 fc       	sbrc	r8, 7
 b4a:	8d e2       	ldi	r24, 0x2D	; 45
 b4c:	b6 01       	movw	r22, r12
 b4e:	90 e0       	ldi	r25, 0x00	; 0
 b50:	c0 cf       	rjmp	.-128    	; 0xad2 <.L129>

00000b52 <.L75>:
 b52:	b6 01       	movw	r22, r12
 b54:	80 e3       	ldi	r24, 0x30	; 48
 b56:	90 e0       	ldi	r25, 0x00	; 0
 b58:	0e 94 c9 05 	call	0xb92	; 0xb92 <fputc>
 b5c:	9a 94       	dec	r9
 b5e:	bb cf       	rjmp	.-138    	; 0xad6 <.L74>

00000b60 <.L80>:
 b60:	8f ef       	ldi	r24, 0xFF	; 255
 b62:	9f ef       	ldi	r25, 0xFF	; 255
 b64:	65 cf       	rjmp	.-310    	; 0xa30 <.L1>

00000b66 <strnlen_P>:
 b66:	fc 01       	movw	r30, r24

00000b68 <.L_strnlen_P_loop>:
 b68:	05 90       	lpm	r0, Z+
 b6a:	61 50       	subi	r22, 0x01	; 1
 b6c:	70 40       	sbci	r23, 0x00	; 0
 b6e:	01 10       	cpse	r0, r1
 b70:	d8 f7       	brcc	.-10     	; 0xb68 <.L_strnlen_P_loop>
 b72:	80 95       	com	r24
 b74:	90 95       	com	r25
 b76:	8e 0f       	add	r24, r30
 b78:	9f 1f       	adc	r25, r31
 b7a:	08 95       	ret

00000b7c <strnlen>:
 b7c:	fc 01       	movw	r30, r24

00000b7e <.L_strnlen_loop>:
 b7e:	61 50       	subi	r22, 0x01	; 1
 b80:	70 40       	sbci	r23, 0x00	; 0
 b82:	01 90       	ld	r0, Z+
 b84:	01 10       	cpse	r0, r1
 b86:	d8 f7       	brcc	.-10     	; 0xb7e <.L_strnlen_loop>
 b88:	80 95       	com	r24
 b8a:	90 95       	com	r25
 b8c:	8e 0f       	add	r24, r30
 b8e:	9f 1f       	adc	r25, r31
 b90:	08 95       	ret

00000b92 <fputc>:
 b92:	0f 93       	push	r16
 b94:	1f 93       	push	r17
 b96:	cf 93       	push	r28
 b98:	df 93       	push	r29
 b9a:	18 2f       	mov	r17, r24
 b9c:	09 2f       	mov	r16, r25
 b9e:	eb 01       	movw	r28, r22
 ba0:	8b 81       	ldd	r24, Y+3	; 0x03
 ba2:	81 fd       	sbrc	r24, 1
 ba4:	09 c0       	rjmp	.+18     	; 0xbb8 <.L2>

00000ba6 <.L7>:
 ba6:	0f ef       	ldi	r16, 0xFF	; 255
 ba8:	1f ef       	ldi	r17, 0xFF	; 255

00000baa <.L3>:
 baa:	81 2f       	mov	r24, r17
 bac:	90 2f       	mov	r25, r16
 bae:	df 91       	pop	r29
 bb0:	cf 91       	pop	r28
 bb2:	1f 91       	pop	r17
 bb4:	0f 91       	pop	r16
 bb6:	08 95       	ret

00000bb8 <.L2>:
 bb8:	82 ff       	sbrs	r24, 2
 bba:	14 c0       	rjmp	.+40     	; 0xbe4 <.L4>
 bbc:	2e 81       	ldd	r18, Y+6	; 0x06
 bbe:	3f 81       	ldd	r19, Y+7	; 0x07
 bc0:	8c 81       	ldd	r24, Y+4	; 0x04
 bc2:	9d 81       	ldd	r25, Y+5	; 0x05
 bc4:	28 17       	cp	r18, r24
 bc6:	39 07       	cpc	r19, r25
 bc8:	3c f4       	brge	.+14     	; 0xbd8 <.L8>
 bca:	e8 81       	ld	r30, Y
 bcc:	f9 81       	ldd	r31, Y+1	; 0x01
 bce:	cf 01       	movw	r24, r30
 bd0:	01 96       	adiw	r24, 0x01	; 1
 bd2:	88 83       	st	Y, r24
 bd4:	99 83       	std	Y+1, r25	; 0x01
 bd6:	10 83       	st	Z, r17

00000bd8 <.L8>:
 bd8:	8e 81       	ldd	r24, Y+6	; 0x06
 bda:	9f 81       	ldd	r25, Y+7	; 0x07
 bdc:	01 96       	adiw	r24, 0x01	; 1
 bde:	8e 83       	std	Y+6, r24	; 0x06
 be0:	9f 83       	std	Y+7, r25	; 0x07
 be2:	e3 cf       	rjmp	.-58     	; 0xbaa <.L3>

00000be4 <.L4>:
 be4:	e8 85       	ldd	r30, Y+8	; 0x08
 be6:	f9 85       	ldd	r31, Y+9	; 0x09
 be8:	81 2f       	mov	r24, r17
 bea:	09 95       	icall
 bec:	89 2b       	or	r24, r25
 bee:	a1 f3       	breq	.-24     	; 0xbd8 <.L8>
 bf0:	da cf       	rjmp	.-76     	; 0xba6 <.L7>

00000bf2 <__ultoa_invert>:
 bf2:	fa 01       	movw	r30, r20
 bf4:	aa 27       	eor	r26, r26
 bf6:	28 30       	cpi	r18, 0x08	; 8
 bf8:	51 f1       	breq	.+84     	; 0xc4e <.L_oct>
 bfa:	20 31       	cpi	r18, 0x10	; 16
 bfc:	81 f1       	breq	.+96     	; 0xc5e <.L_hex>
 bfe:	e8 94       	clt

00000c00 <.L_dec_loop>:
 c00:	6f 93       	push	r22
 c02:	6e 7f       	andi	r22, 0xFE	; 254
 c04:	6e 5f       	subi	r22, 0xFE	; 254
 c06:	7f 4f       	sbci	r23, 0xFF	; 255
 c08:	8f 4f       	sbci	r24, 0xFF	; 255
 c0a:	9f 4f       	sbci	r25, 0xFF	; 255
 c0c:	af 4f       	sbci	r26, 0xFF	; 255
 c0e:	b1 e0       	ldi	r27, 0x01	; 1
 c10:	3e d0       	rcall	.+124    	; 0xc8e <.L_div_add>
 c12:	b4 e0       	ldi	r27, 0x04	; 4
 c14:	3c d0       	rcall	.+120    	; 0xc8e <.L_div_add>
 c16:	67 0f       	add	r22, r23
 c18:	78 1f       	adc	r23, r24
 c1a:	89 1f       	adc	r24, r25
 c1c:	9a 1f       	adc	r25, r26
 c1e:	a1 1d       	adc	r26, r1
 c20:	68 0f       	add	r22, r24
 c22:	79 1f       	adc	r23, r25
 c24:	8a 1f       	adc	r24, r26
 c26:	91 1d       	adc	r25, r1
 c28:	a1 1d       	adc	r26, r1
 c2a:	6a 0f       	add	r22, r26
 c2c:	71 1d       	adc	r23, r1
 c2e:	81 1d       	adc	r24, r1
 c30:	91 1d       	adc	r25, r1
 c32:	a1 1d       	adc	r26, r1
 c34:	20 d0       	rcall	.+64     	; 0xc76 <.L_lsr_4>
 c36:	09 f4       	brne	.+2      	; 0xc3a <.L1^B1>
 c38:	68 94       	set

00000c3a <.L1^B1>:
 c3a:	3f 91       	pop	r19
 c3c:	2a e0       	ldi	r18, 0x0A	; 10
 c3e:	26 9f       	mul	r18, r22
 c40:	11 24       	eor	r1, r1
 c42:	30 19       	sub	r19, r0
 c44:	30 5d       	subi	r19, 0xD0	; 208
 c46:	31 93       	st	Z+, r19
 c48:	de f6       	brtc	.-74     	; 0xc00 <.L_dec_loop>

00000c4a <.L_eos>:
 c4a:	cf 01       	movw	r24, r30
 c4c:	08 95       	ret

00000c4e <.L_oct>:
 c4e:	46 2f       	mov	r20, r22
 c50:	47 70       	andi	r20, 0x07	; 7
 c52:	40 5d       	subi	r20, 0xD0	; 208
 c54:	41 93       	st	Z+, r20
 c56:	b3 e0       	ldi	r27, 0x03	; 3
 c58:	0f d0       	rcall	.+30     	; 0xc78 <.L_lsr>
 c5a:	c9 f7       	brne	.-14     	; 0xc4e <.L_oct>
 c5c:	f6 cf       	rjmp	.-20     	; 0xc4a <.L_eos>

00000c5e <.L_hex>:
 c5e:	46 2f       	mov	r20, r22
 c60:	4f 70       	andi	r20, 0x0F	; 15
 c62:	40 5d       	subi	r20, 0xD0	; 208
 c64:	4a 33       	cpi	r20, 0x3A	; 58
 c66:	18 f0       	brcs	.+6      	; 0xc6e <.L3^B1>
 c68:	49 5d       	subi	r20, 0xD9	; 217
 c6a:	31 fd       	sbrc	r19, 1
 c6c:	40 52       	subi	r20, 0x20	; 32

00000c6e <.L3^B1>:
 c6e:	41 93       	st	Z+, r20
 c70:	02 d0       	rcall	.+4      	; 0xc76 <.L_lsr_4>
 c72:	a9 f7       	brne	.-22     	; 0xc5e <.L_hex>
 c74:	ea cf       	rjmp	.-44     	; 0xc4a <.L_eos>

00000c76 <.L_lsr_4>:
 c76:	b4 e0       	ldi	r27, 0x04	; 4

00000c78 <.L_lsr>:
 c78:	a6 95       	lsr	r26
 c7a:	97 95       	ror	r25
 c7c:	87 95       	ror	r24
 c7e:	77 95       	ror	r23
 c80:	67 95       	ror	r22
 c82:	ba 95       	dec	r27
 c84:	c9 f7       	brne	.-14     	; 0xc78 <.L_lsr>
 c86:	00 97       	sbiw	r24, 0x00	; 0
 c88:	61 05       	cpc	r22, r1
 c8a:	71 05       	cpc	r23, r1
 c8c:	08 95       	ret

00000c8e <.L_div_add>:
 c8e:	9b 01       	movw	r18, r22
 c90:	ac 01       	movw	r20, r24
 c92:	0a 2e       	mov	r0, r26

00000c94 <.L7^B1>:
 c94:	06 94       	lsr	r0
 c96:	57 95       	ror	r21
 c98:	47 95       	ror	r20
 c9a:	37 95       	ror	r19
 c9c:	27 95       	ror	r18
 c9e:	ba 95       	dec	r27
 ca0:	c9 f7       	brne	.-14     	; 0xc94 <.L7^B1>
 ca2:	62 0f       	add	r22, r18
 ca4:	73 1f       	adc	r23, r19
 ca6:	84 1f       	adc	r24, r20
 ca8:	95 1f       	adc	r25, r21
 caa:	a0 1d       	adc	r26, r0
 cac:	08 95       	ret

00000cae <__negsi2>:
 cae:	90 95       	com	r25
 cb0:	80 95       	com	r24
 cb2:	70 95       	com	r23
 cb4:	61 95       	neg	r22
 cb6:	7f 4f       	sbci	r23, 0xFF	; 255
 cb8:	8f 4f       	sbci	r24, 0xFF	; 255
 cba:	9f 4f       	sbci	r25, 0xFF	; 255

00000cbc <.Loc.1>:
 cbc:	08 95       	ret

00000cbe <__prologue_saves__>:
 cbe:	2f 92       	push	r2

00000cc0 <.Loc.1>:
 cc0:	3f 92       	push	r3

00000cc2 <.Loc.2>:
 cc2:	4f 92       	push	r4

00000cc4 <.Loc.3>:
 cc4:	5f 92       	push	r5

00000cc6 <.Loc.4>:
 cc6:	6f 92       	push	r6

00000cc8 <.Loc.5>:
 cc8:	7f 92       	push	r7

00000cca <.Loc.6>:
 cca:	8f 92       	push	r8

00000ccc <.Loc.7>:
 ccc:	9f 92       	push	r9

00000cce <.Loc.8>:
 cce:	af 92       	push	r10

00000cd0 <.Loc.9>:
 cd0:	bf 92       	push	r11

00000cd2 <.Loc.10>:
 cd2:	cf 92       	push	r12

00000cd4 <.Loc.11>:
 cd4:	df 92       	push	r13

00000cd6 <.Loc.12>:
 cd6:	ef 92       	push	r14

00000cd8 <.Loc.13>:
 cd8:	ff 92       	push	r15

00000cda <.Loc.14>:
 cda:	0f 93       	push	r16

00000cdc <.Loc.15>:
 cdc:	1f 93       	push	r17

00000cde <.Loc.16>:
 cde:	cf 93       	push	r28

00000ce0 <.Loc.17>:
 ce0:	df 93       	push	r29

00000ce2 <.Loc.18>:
 ce2:	cd b7       	in	r28, 0x3d	; 61

00000ce4 <.Loc.19>:
 ce4:	de b7       	in	r29, 0x3e	; 62

00000ce6 <.Loc.20>:
 ce6:	ca 1b       	sub	r28, r26

00000ce8 <.Loc.21>:
 ce8:	db 0b       	sbc	r29, r27

00000cea <.Loc.22>:
 cea:	0f b6       	in	r0, 0x3f	; 63

00000cec <.Loc.23>:
 cec:	f8 94       	cli

00000cee <.Loc.24>:
 cee:	de bf       	out	0x3e, r29	; 62

00000cf0 <.Loc.25>:
 cf0:	0f be       	out	0x3f, r0	; 63

00000cf2 <.Loc.26>:
 cf2:	cd bf       	out	0x3d, r28	; 61

00000cf4 <.Loc.27>:
 cf4:	09 94       	ijmp

00000cf6 <__epilogue_restores__>:
 cf6:	2a 88       	ldd	r2, Y+18	; 0x12

00000cf8 <.Loc.1>:
 cf8:	39 88       	ldd	r3, Y+17	; 0x11

00000cfa <.Loc.2>:
 cfa:	48 88       	ldd	r4, Y+16	; 0x10

00000cfc <.Loc.3>:
 cfc:	5f 84       	ldd	r5, Y+15	; 0x0f

00000cfe <.Loc.4>:
 cfe:	6e 84       	ldd	r6, Y+14	; 0x0e

00000d00 <.Loc.5>:
 d00:	7d 84       	ldd	r7, Y+13	; 0x0d

00000d02 <.Loc.6>:
 d02:	8c 84       	ldd	r8, Y+12	; 0x0c

00000d04 <.Loc.7>:
 d04:	9b 84       	ldd	r9, Y+11	; 0x0b

00000d06 <.Loc.8>:
 d06:	aa 84       	ldd	r10, Y+10	; 0x0a

00000d08 <.Loc.9>:
 d08:	b9 84       	ldd	r11, Y+9	; 0x09

00000d0a <.Loc.10>:
 d0a:	c8 84       	ldd	r12, Y+8	; 0x08

00000d0c <.Loc.11>:
 d0c:	df 80       	ldd	r13, Y+7	; 0x07

00000d0e <.Loc.12>:
 d0e:	ee 80       	ldd	r14, Y+6	; 0x06

00000d10 <.Loc.13>:
 d10:	fd 80       	ldd	r15, Y+5	; 0x05

00000d12 <.Loc.14>:
 d12:	0c 81       	ldd	r16, Y+4	; 0x04

00000d14 <.Loc.15>:
 d14:	1b 81       	ldd	r17, Y+3	; 0x03

00000d16 <.Loc.16>:
 d16:	aa 81       	ldd	r26, Y+2	; 0x02

00000d18 <.Loc.17>:
 d18:	b9 81       	ldd	r27, Y+1	; 0x01

00000d1a <.Loc.18>:
 d1a:	ce 0f       	add	r28, r30

00000d1c <.Loc.19>:
 d1c:	d1 1d       	adc	r29, r1

00000d1e <.Loc.20>:
 d1e:	0f b6       	in	r0, 0x3f	; 63

00000d20 <.Loc.21>:
 d20:	f8 94       	cli

00000d22 <.Loc.22>:
 d22:	de bf       	out	0x3e, r29	; 62

00000d24 <.Loc.23>:
 d24:	0f be       	out	0x3f, r0	; 63

00000d26 <.Loc.24>:
 d26:	cd bf       	out	0x3d, r28	; 61

00000d28 <.Loc.25>:
 d28:	ed 01       	movw	r28, r26

00000d2a <.Loc.26>:
 d2a:	08 95       	ret

00000d2c <_exit>:
 d2c:	f8 94       	cli

00000d2e <__stop_program>:
 d2e:	ff cf       	rjmp	.-2      	; 0xd2e <__stop_program>
