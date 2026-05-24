
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
       4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
       8:	0c 94 94 03 	jmp	0x728	; 0x728 <__vector_2>
       c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      14:	0c 94 90 03 	jmp	0x720	; 0x720 <__vector_5>
      18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      1c:	0c 94 8f 03 	jmp	0x71e	; 0x71e <__vector_7>
      20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      38:	0c 94 95 03 	jmp	0x72a	; 0x72a <__vector_14>
      3c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      40:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      44:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      48:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      4c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      50:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      54:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      58:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      5c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      60:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      64:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>

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
      7a:	e8 ee       	ldi	r30, 0xE8	; 232

0000007c <.Loc.4>:
      7c:	f1 e1       	ldi	r31, 0x11	; 17

0000007e <.Loc.5>:
      7e:	02 c0       	rjmp	.+4      	; 0x84 <.L__do_copy_data_start>

00000080 <.L__do_copy_data_loop>:
      80:	05 90       	lpm	r0, Z+

00000082 <.Loc.7>:
      82:	0d 92       	st	X+, r0

00000084 <.L__do_copy_data_start>:
      84:	ac 33       	cpi	r26, 0x3C	; 60

00000086 <.Loc.9>:
      86:	b1 07       	cpc	r27, r17

00000088 <.Loc.10>:
      88:	d9 f7       	brne	.-10     	; 0x80 <.L__do_copy_data_loop>

0000008a <L0^A>:
      8a:	0e 94 96 03 	call	0x72c	; 0x72c <main>
      8e:	0c 94 f2 08 	jmp	0x11e4	; 0x11e4 <_exit>

00000092 <__bad_interrupt>:
      92:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000096 <SERVO_set_angulo>:
      96:	9c 01       	movw	r18, r24
      98:	61 30       	cpi	r22, 0x01	; 1
      9a:	71 05       	cpc	r23, r1
      9c:	90 f0       	brcs	.+36     	; 0xc2 <.L2>
      9e:	09 f5       	brne	.+66     	; 0xe2 <.L1>
      a0:	44 e1       	ldi	r20, 0x14	; 20
      a2:	42 9f       	mul	r20, r18
      a4:	c0 01       	movw	r24, r0
      a6:	43 9f       	mul	r20, r19
      a8:	90 0d       	add	r25, r0
      aa:	11 24       	eor	r1, r1
      ac:	69 e0       	ldi	r22, 0x09	; 9
      ae:	70 e0       	ldi	r23, 0x00	; 0
      b0:	0e 94 dd 03 	call	0x7ba	; 0x7ba <__udivmodhi4>
      b4:	69 51       	subi	r22, 0x19	; 25
      b6:	7c 4f       	sbci	r23, 0xFC	; 252
      b8:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
      bc:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
      c0:	08 95       	ret

000000c2 <.L2>:
      c2:	44 e1       	ldi	r20, 0x14	; 20
      c4:	42 9f       	mul	r20, r18
      c6:	c0 01       	movw	r24, r0
      c8:	43 9f       	mul	r20, r19
      ca:	90 0d       	add	r25, r0
      cc:	11 24       	eor	r1, r1
      ce:	69 e0       	ldi	r22, 0x09	; 9
      d0:	70 e0       	ldi	r23, 0x00	; 0
      d2:	0e 94 dd 03 	call	0x7ba	; 0x7ba <__udivmodhi4>
      d6:	69 51       	subi	r22, 0x19	; 25
      d8:	7c 4f       	sbci	r23, 0xFC	; 252
      da:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
      de:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

000000e2 <.L1>:
      e2:	08 95       	ret

000000e4 <SERVO_test>:
      e4:	ef 92       	push	r14
      e6:	ff 92       	push	r15
      e8:	0f 93       	push	r16
      ea:	1f 93       	push	r17
      ec:	cf 93       	push	r28
      ee:	df 93       	push	r29
      f0:	8c 01       	movw	r16, r24
      f2:	eb 01       	movw	r28, r22
      f4:	bc 01       	movw	r22, r24
      f6:	80 e0       	ldi	r24, 0x00	; 0
      f8:	90 e0       	ldi	r25, 0x00	; 0
      fa:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
      fe:	be 01       	movw	r22, r28
     100:	80 e0       	ldi	r24, 0x00	; 0
     102:	90 e0       	ldi	r25, 0x00	; 0
     104:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     108:	2f ef       	ldi	r18, 0xFF	; 255
     10a:	83 ed       	ldi	r24, 0xD3	; 211
     10c:	90 e3       	ldi	r25, 0x30	; 48

0000010e <.L1^B1>:
     10e:	21 50       	subi	r18, 0x01	; 1
     110:	80 40       	sbci	r24, 0x00	; 0
     112:	90 40       	sbci	r25, 0x00	; 0
     114:	e1 f7       	brne	.-8      	; 0x10e <.L1^B1>
     116:	00 c0       	rjmp	.+0      	; 0x118 <L0^A>

00000118 <L0^A>:
     118:	00 00       	nop
     11a:	e1 2c       	mov	r14, r1
     11c:	f1 2c       	mov	r15, r1

0000011e <.L5>:
     11e:	b8 01       	movw	r22, r16
     120:	c7 01       	movw	r24, r14
     122:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     126:	be 01       	movw	r22, r28
     128:	c7 01       	movw	r24, r14
     12a:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     12e:	8f e9       	ldi	r24, 0x9F	; 159
     130:	9f e0       	ldi	r25, 0x0F	; 15

00000132 <.L1^B2>:
     132:	01 97       	sbiw	r24, 0x01	; 1
     134:	f1 f7       	brne	.-4      	; 0x132 <.L1^B2>
     136:	00 c0       	rjmp	.+0      	; 0x138 <L0^A>

00000138 <L0^A>:
     138:	00 00       	nop
     13a:	9f ef       	ldi	r25, 0xFF	; 255
     13c:	e9 1a       	sub	r14, r25
     13e:	f9 0a       	sbc	r15, r25
     140:	29 e0       	ldi	r18, 0x09	; 9
     142:	e2 16       	cp	r14, r18
     144:	27 e0       	ldi	r18, 0x07	; 7
     146:	f2 06       	cpc	r15, r18
     148:	51 f7       	brne	.-44     	; 0x11e <.L5>
     14a:	88 e0       	ldi	r24, 0x08	; 8
     14c:	e8 2e       	mov	r14, r24
     14e:	87 e0       	ldi	r24, 0x07	; 7
     150:	f8 2e       	mov	r15, r24

00000152 <.L6>:
     152:	b8 01       	movw	r22, r16
     154:	c7 01       	movw	r24, r14
     156:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     15a:	be 01       	movw	r22, r28
     15c:	c7 01       	movw	r24, r14
     15e:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     162:	8f e9       	ldi	r24, 0x9F	; 159
     164:	9f e0       	ldi	r25, 0x0F	; 15

00000166 <.L1^B3>:
     166:	01 97       	sbiw	r24, 0x01	; 1
     168:	f1 f7       	brne	.-4      	; 0x166 <.L1^B3>
     16a:	00 c0       	rjmp	.+0      	; 0x16c <L0^A>

0000016c <L0^A>:
     16c:	00 00       	nop
     16e:	91 e0       	ldi	r25, 0x01	; 1
     170:	e9 1a       	sub	r14, r25
     172:	f1 08       	sbc	r15, r1
     174:	70 f7       	brcc	.-36     	; 0x152 <.L6>
     176:	b8 01       	movw	r22, r16
     178:	80 e0       	ldi	r24, 0x00	; 0
     17a:	90 e0       	ldi	r25, 0x00	; 0
     17c:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     180:	be 01       	movw	r22, r28
     182:	80 e0       	ldi	r24, 0x00	; 0
     184:	90 e0       	ldi	r25, 0x00	; 0
     186:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     18a:	b8 01       	movw	r22, r16
     18c:	88 e0       	ldi	r24, 0x08	; 8
     18e:	97 e0       	ldi	r25, 0x07	; 7
     190:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     194:	be 01       	movw	r22, r28
     196:	88 e0       	ldi	r24, 0x08	; 8
     198:	97 e0       	ldi	r25, 0x07	; 7
     19a:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     19e:	8f ef       	ldi	r24, 0xFF	; 255
     1a0:	93 ed       	ldi	r25, 0xD3	; 211
     1a2:	20 e3       	ldi	r18, 0x30	; 48

000001a4 <.L1^B4>:
     1a4:	81 50       	subi	r24, 0x01	; 1
     1a6:	90 40       	sbci	r25, 0x00	; 0
     1a8:	20 40       	sbci	r18, 0x00	; 0
     1aa:	e1 f7       	brne	.-8      	; 0x1a4 <.L1^B4>
     1ac:	00 c0       	rjmp	.+0      	; 0x1ae <L0^A>

000001ae <L0^A>:
     1ae:	00 00       	nop
     1b0:	b8 01       	movw	r22, r16
     1b2:	80 e0       	ldi	r24, 0x00	; 0
     1b4:	90 e0       	ldi	r25, 0x00	; 0
     1b6:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     1ba:	be 01       	movw	r22, r28
     1bc:	80 e0       	ldi	r24, 0x00	; 0
     1be:	90 e0       	ldi	r25, 0x00	; 0
     1c0:	0e 94 4b 00 	call	0x96	; 0x96 <SERVO_set_angulo>
     1c4:	8f ef       	ldi	r24, 0xFF	; 255
     1c6:	93 ed       	ldi	r25, 0xD3	; 211
     1c8:	20 e3       	ldi	r18, 0x30	; 48

000001ca <.L1^B5>:
     1ca:	81 50       	subi	r24, 0x01	; 1
     1cc:	90 40       	sbci	r25, 0x00	; 0
     1ce:	20 40       	sbci	r18, 0x00	; 0
     1d0:	e1 f7       	brne	.-8      	; 0x1ca <.L1^B5>
     1d2:	00 c0       	rjmp	.+0      	; 0x1d4 <L0^A>

000001d4 <L0^A>:
     1d4:	00 00       	nop
     1d6:	df 91       	pop	r29
     1d8:	cf 91       	pop	r28
     1da:	1f 91       	pop	r17
     1dc:	0f 91       	pop	r16
     1de:	ff 90       	pop	r15
     1e0:	ef 90       	pop	r14
     1e2:	08 95       	ret

000001e4 <VL53L0X_test>:
     1e4:	cf 93       	push	r28
     1e6:	df 93       	push	r29
     1e8:	0f 92       	push	r0
     1ea:	cd b7       	in	r28, 0x3d	; 61
     1ec:	de b7       	in	r29, 0x3e	; 62
     1ee:	0e 94 1e 02 	call	0x43c	; 0x43c <I2C_init>
     1f2:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     1f6:	60 e0       	ldi	r22, 0x00	; 0
     1f8:	70 e0       	ldi	r23, 0x00	; 0
     1fa:	89 e2       	ldi	r24, 0x29	; 41
     1fc:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     200:	80 ec       	ldi	r24, 0xC0	; 192
     202:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     206:	0e 94 84 02 	call	0x508	; 0x508 <I2C_stop>
     20a:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     20e:	61 e0       	ldi	r22, 0x01	; 1
     210:	70 e0       	ldi	r23, 0x00	; 0
     212:	89 e2       	ldi	r24, 0x29	; 41
     214:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     218:	0e 94 7a 02 	call	0x4f4	; 0x4f4 <I2C_read_NACK>
     21c:	89 83       	std	Y+1, r24	; 0x01
     21e:	0e 94 84 02 	call	0x508	; 0x508 <I2C_stop>
     222:	81 e0       	ldi	r24, 0x01	; 1
     224:	99 81       	ldd	r25, Y+1	; 0x01
     226:	9e 3e       	cpi	r25, 0xEE	; 238
     228:	09 f0       	breq	.+2      	; 0x22c <.L2>
     22a:	80 e0       	ldi	r24, 0x00	; 0

0000022c <.L2>:
     22c:	0f 90       	pop	r0
     22e:	df 91       	pop	r29
     230:	cf 91       	pop	r28
     232:	08 95       	ret

00000234 <NUN_get_raw>:
     234:	ef 92       	push	r14
     236:	ff 92       	push	r15
     238:	0f 93       	push	r16
     23a:	1f 93       	push	r17
     23c:	cf 93       	push	r28
     23e:	df 93       	push	r29
     240:	ec 01       	movw	r28, r24
     242:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     246:	60 e0       	ldi	r22, 0x00	; 0
     248:	70 e0       	ldi	r23, 0x00	; 0
     24a:	84 ea       	ldi	r24, 0xA4	; 164
     24c:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     250:	80 e0       	ldi	r24, 0x00	; 0
     252:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     256:	0e 94 84 02 	call	0x508	; 0x508 <I2C_stop>
     25a:	8f e9       	ldi	r24, 0x9F	; 159
     25c:	9f e0       	ldi	r25, 0x0F	; 15

0000025e <.L1^B1>:
     25e:	01 97       	sbiw	r24, 0x01	; 1
     260:	f1 f7       	brne	.-4      	; 0x25e <.L1^B1>
     262:	00 c0       	rjmp	.+0      	; 0x264 <L0^A>

00000264 <L0^A>:
     264:	00 00       	nop
     266:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     26a:	61 e0       	ldi	r22, 0x01	; 1
     26c:	70 e0       	ldi	r23, 0x00	; 0
     26e:	84 ea       	ldi	r24, 0xA4	; 164
     270:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     274:	8e 01       	movw	r16, r28
     276:	7e 01       	movw	r14, r28
     278:	95 e0       	ldi	r25, 0x05	; 5
     27a:	e9 0e       	add	r14, r25
     27c:	f1 1c       	adc	r15, r1

0000027e <.L2>:
     27e:	0e 94 70 02 	call	0x4e0	; 0x4e0 <I2C_read_ACK>
     282:	f8 01       	movw	r30, r16
     284:	81 93       	st	Z+, r24
     286:	8f 01       	movw	r16, r30
     288:	ee 15       	cp	r30, r14
     28a:	ff 05       	cpc	r31, r15
     28c:	c1 f7       	brne	.-16     	; 0x27e <.L2>
     28e:	0e 94 7a 02 	call	0x4f4	; 0x4f4 <I2C_read_NACK>
     292:	8d 83       	std	Y+5, r24	; 0x05
     294:	df 91       	pop	r29
     296:	cf 91       	pop	r28
     298:	1f 91       	pop	r17
     29a:	0f 91       	pop	r16
     29c:	ff 90       	pop	r15
     29e:	ef 90       	pop	r14
     2a0:	0c 94 84 02 	jmp	0x508	; 0x508 <I2C_stop>

000002a4 <NUN_init>:
     2a4:	cf 93       	push	r28
     2a6:	df 93       	push	r29
     2a8:	00 d0       	rcall	.+0      	; 0x2aa <L0^A>

000002aa <L0^A>:
     2aa:	00 d0       	rcall	.+0      	; 0x2ac <L0^A>

000002ac <L0^A>:
     2ac:	00 d0       	rcall	.+0      	; 0x2ae <L0^A>

000002ae <L0^A>:
     2ae:	cd b7       	in	r28, 0x3d	; 61
     2b0:	de b7       	in	r29, 0x3e	; 62
     2b2:	0e 94 1e 02 	call	0x43c	; 0x43c <I2C_init>
     2b6:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     2ba:	60 e0       	ldi	r22, 0x00	; 0
     2bc:	70 e0       	ldi	r23, 0x00	; 0
     2be:	84 ea       	ldi	r24, 0xA4	; 164
     2c0:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     2c4:	80 ef       	ldi	r24, 0xF0	; 240
     2c6:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     2ca:	85 e5       	ldi	r24, 0x55	; 85
     2cc:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     2d0:	0e 94 84 02 	call	0x508	; 0x508 <I2C_stop>
     2d4:	0e 94 2c 02 	call	0x458	; 0x458 <I2C_start>
     2d8:	60 e0       	ldi	r22, 0x00	; 0
     2da:	70 e0       	ldi	r23, 0x00	; 0
     2dc:	84 ea       	ldi	r24, 0xA4	; 164
     2de:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_connect_address>
     2e2:	8b ef       	ldi	r24, 0xFB	; 251
     2e4:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     2e8:	80 e0       	ldi	r24, 0x00	; 0
     2ea:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_write>
     2ee:	0e 94 84 02 	call	0x508	; 0x508 <I2C_stop>
     2f2:	ce 01       	movw	r24, r28
     2f4:	01 96       	adiw	r24, 0x01	; 1
     2f6:	0e 94 1a 01 	call	0x234	; 0x234 <NUN_get_raw>
     2fa:	83 e0       	ldi	r24, 0x03	; 3
     2fc:	90 e0       	ldi	r25, 0x00	; 0
     2fe:	0f 90       	pop	r0
     300:	0f 90       	pop	r0
     302:	0f 90       	pop	r0
     304:	0f 90       	pop	r0
     306:	0f 90       	pop	r0
     308:	0f 90       	pop	r0
     30a:	df 91       	pop	r29
     30c:	cf 91       	pop	r28
     30e:	08 95       	ret

00000310 <NUN_get_joystick>:
     310:	cf 93       	push	r28
     312:	df 93       	push	r29
     314:	cd b7       	in	r28, 0x3d	; 61
     316:	de b7       	in	r29, 0x3e	; 62
     318:	28 97       	sbiw	r28, 0x08	; 8
     31a:	0f b6       	in	r0, 0x3f	; 63
     31c:	f8 94       	cli
     31e:	de bf       	out	0x3e, r29	; 62
     320:	0f be       	out	0x3f, r0	; 63
     322:	cd bf       	out	0x3d, r28	; 61
     324:	8f 83       	std	Y+7, r24	; 0x07
     326:	98 87       	std	Y+8, r25	; 0x08
     328:	ce 01       	movw	r24, r28
     32a:	01 96       	adiw	r24, 0x01	; 1
     32c:	0e 94 1a 01 	call	0x234	; 0x234 <NUN_get_raw>
     330:	89 81       	ldd	r24, Y+1	; 0x01
     332:	ef 81       	ldd	r30, Y+7	; 0x07
     334:	f8 85       	ldd	r31, Y+8	; 0x08
     336:	80 83       	st	Z, r24
     338:	8a 81       	ldd	r24, Y+2	; 0x02
     33a:	81 83       	std	Z+1, r24	; 0x01
     33c:	28 96       	adiw	r28, 0x08	; 8
     33e:	0f b6       	in	r0, 0x3f	; 63
     340:	f8 94       	cli
     342:	de bf       	out	0x3e, r29	; 62
     344:	0f be       	out	0x3f, r0	; 63
     346:	cd bf       	out	0x3d, r28	; 61
     348:	df 91       	pop	r29
     34a:	cf 91       	pop	r28
     34c:	08 95       	ret

0000034e <NUN_get_buttons>:
     34e:	cf 93       	push	r28
     350:	df 93       	push	r29
     352:	00 d0       	rcall	.+0      	; 0x354 <L0^A>

00000354 <L0^A>:
     354:	00 d0       	rcall	.+0      	; 0x356 <L0^A>

00000356 <L0^A>:
     356:	00 d0       	rcall	.+0      	; 0x358 <L0^A>

00000358 <L0^A>:
     358:	cd b7       	in	r28, 0x3d	; 61
     35a:	de b7       	in	r29, 0x3e	; 62
     35c:	ce 01       	movw	r24, r28
     35e:	01 96       	adiw	r24, 0x01	; 1
     360:	0e 94 1a 01 	call	0x234	; 0x234 <NUN_get_raw>
     364:	8e 81       	ldd	r24, Y+6	; 0x06
     366:	83 70       	andi	r24, 0x03	; 3
     368:	0f 90       	pop	r0
     36a:	0f 90       	pop	r0
     36c:	0f 90       	pop	r0
     36e:	0f 90       	pop	r0
     370:	0f 90       	pop	r0
     372:	0f 90       	pop	r0
     374:	df 91       	pop	r29
     376:	cf 91       	pop	r28
     378:	08 95       	ret

0000037a <USART_init>:
     37a:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
     37e:	87 e6       	ldi	r24, 0x67	; 103
     380:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
     384:	88 e1       	ldi	r24, 0x18	; 24
     386:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
     38a:	86 e0       	ldi	r24, 0x06	; 6
     38c:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
     390:	08 95       	ret

00000392 <USART_send>:
     392:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     396:	95 ff       	sbrs	r25, 5
     398:	fc cf       	rjmp	.-8      	; 0x392 <USART_send>
     39a:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     39e:	08 95       	ret

000003a0 <USART_receive>:
     3a0:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     3a4:	87 ff       	sbrs	r24, 7
     3a6:	fc cf       	rjmp	.-8      	; 0x3a0 <USART_receive>
     3a8:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     3ac:	08 95       	ret

000003ae <USART_putstring>:
     3ae:	cf 93       	push	r28
     3b0:	df 93       	push	r29
     3b2:	ec 01       	movw	r28, r24

000003b4 <.L10>:
     3b4:	88 81       	ld	r24, Y
     3b6:	81 11       	cpse	r24, r1
     3b8:	03 c0       	rjmp	.+6      	; 0x3c0 <.L11>
     3ba:	df 91       	pop	r29
     3bc:	cf 91       	pop	r28
     3be:	08 95       	ret

000003c0 <.L11>:
     3c0:	21 96       	adiw	r28, 0x01	; 1
     3c2:	0e 94 c9 01 	call	0x392	; 0x392 <USART_send>
     3c6:	f6 cf       	rjmp	.-20     	; 0x3b4 <.L10>

000003c8 <USART_put_uint16>:
     3c8:	0f 93       	push	r16
     3ca:	1f 93       	push	r17
     3cc:	cf 93       	push	r28
     3ce:	df 93       	push	r29
     3d0:	cd b7       	in	r28, 0x3d	; 61
     3d2:	de b7       	in	r29, 0x3e	; 62
     3d4:	2a 97       	sbiw	r28, 0x0a	; 10
     3d6:	0f b6       	in	r0, 0x3f	; 63
     3d8:	f8 94       	cli
     3da:	de bf       	out	0x3e, r29	; 62
     3dc:	0f be       	out	0x3f, r0	; 63
     3de:	cd bf       	out	0x3d, r28	; 61
     3e0:	9f 93       	push	r25
     3e2:	8f 93       	push	r24
     3e4:	80 e0       	ldi	r24, 0x00	; 0
     3e6:	91 e0       	ldi	r25, 0x01	; 1
     3e8:	9f 93       	push	r25
     3ea:	8f 93       	push	r24
     3ec:	8e 01       	movw	r16, r28
     3ee:	0f 5f       	subi	r16, 0xFF	; 255
     3f0:	1f 4f       	sbci	r17, 0xFF	; 255
     3f2:	1f 93       	push	r17
     3f4:	0f 93       	push	r16
     3f6:	0e 94 fa 05 	call	0xbf4	; 0xbf4 <sprintf>
     3fa:	c8 01       	movw	r24, r16
     3fc:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     400:	8e e1       	ldi	r24, 0x1E	; 30
     402:	91 e0       	ldi	r25, 0x01	; 1
     404:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     408:	2f ef       	ldi	r18, 0xFF	; 255
     40a:	89 e6       	ldi	r24, 0x69	; 105
     40c:	98 e1       	ldi	r25, 0x18	; 24

0000040e <.L1^B1>:
     40e:	21 50       	subi	r18, 0x01	; 1
     410:	80 40       	sbci	r24, 0x00	; 0
     412:	90 40       	sbci	r25, 0x00	; 0
     414:	e1 f7       	brne	.-8      	; 0x40e <.L1^B1>
     416:	00 c0       	rjmp	.+0      	; 0x418 <L0^A>

00000418 <L0^A>:
     418:	00 00       	nop
     41a:	0f 90       	pop	r0
     41c:	0f 90       	pop	r0
     41e:	0f 90       	pop	r0
     420:	0f 90       	pop	r0
     422:	0f 90       	pop	r0
     424:	0f 90       	pop	r0
     426:	2a 96       	adiw	r28, 0x0a	; 10
     428:	0f b6       	in	r0, 0x3f	; 63
     42a:	f8 94       	cli
     42c:	de bf       	out	0x3e, r29	; 62
     42e:	0f be       	out	0x3f, r0	; 63
     430:	cd bf       	out	0x3d, r28	; 61
     432:	df 91       	pop	r29
     434:	cf 91       	pop	r28
     436:	1f 91       	pop	r17
     438:	0f 91       	pop	r16
     43a:	08 95       	ret

0000043c <I2C_init>:
     43c:	87 b1       	in	r24, 0x07	; 7
     43e:	8f 7c       	andi	r24, 0xCF	; 207
     440:	87 b9       	out	0x07, r24	; 7
     442:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     446:	88 e4       	ldi	r24, 0x48	; 72
     448:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     44c:	84 e0       	ldi	r24, 0x04	; 4
     44e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     452:	86 e0       	ldi	r24, 0x06	; 6
     454:	90 e0       	ldi	r25, 0x00	; 0
     456:	08 95       	ret

00000458 <I2C_start>:
     458:	84 ea       	ldi	r24, 0xA4	; 164
     45a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000045e <.L3>:
     45e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     462:	87 ff       	sbrs	r24, 7
     464:	fc cf       	rjmp	.-8      	; 0x45e <.L3>
     466:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     46a:	88 7f       	andi	r24, 0xF8	; 248
     46c:	88 30       	cpi	r24, 0x08	; 8
     46e:	19 f4       	brne	.+6      	; 0x476 <.L5>
     470:	86 e0       	ldi	r24, 0x06	; 6
     472:	90 e0       	ldi	r25, 0x00	; 0
     474:	08 95       	ret

00000476 <.L5>:
     476:	81 e0       	ldi	r24, 0x01	; 1
     478:	90 e0       	ldi	r25, 0x00	; 0
     47a:	08 95       	ret

0000047c <I2C_connect_address>:
     47c:	88 0f       	add	r24, r24
     47e:	86 2b       	or	r24, r22
     480:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     484:	84 e8       	ldi	r24, 0x84	; 132
     486:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000048a <.L8>:
     48a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     48e:	87 ff       	sbrs	r24, 7
     490:	fc cf       	rjmp	.-8      	; 0x48a <.L8>
     492:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     496:	88 7f       	andi	r24, 0xF8	; 248
     498:	88 31       	cpi	r24, 0x18	; 24
     49a:	41 f4       	brne	.+16     	; 0x4ac <.L10>
     49c:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4a0:	88 7f       	andi	r24, 0xF8	; 248
     4a2:	88 34       	cpi	r24, 0x48	; 72
     4a4:	31 f0       	breq	.+12     	; 0x4b2 <.L11>
     4a6:	84 e0       	ldi	r24, 0x04	; 4
     4a8:	90 e0       	ldi	r25, 0x00	; 0
     4aa:	08 95       	ret

000004ac <.L10>:
     4ac:	83 e0       	ldi	r24, 0x03	; 3
     4ae:	90 e0       	ldi	r25, 0x00	; 0
     4b0:	08 95       	ret

000004b2 <.L11>:
     4b2:	86 e0       	ldi	r24, 0x06	; 6
     4b4:	90 e0       	ldi	r25, 0x00	; 0
     4b6:	08 95       	ret

000004b8 <I2C_write>:
     4b8:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4bc:	84 e8       	ldi	r24, 0x84	; 132
     4be:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004c2 <.L14>:
     4c2:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4c6:	87 ff       	sbrs	r24, 7
     4c8:	fc cf       	rjmp	.-8      	; 0x4c2 <.L14>
     4ca:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4ce:	88 7f       	andi	r24, 0xF8	; 248
     4d0:	88 32       	cpi	r24, 0x28	; 40
     4d2:	19 f0       	breq	.+6      	; 0x4da <.L16>
     4d4:	82 e0       	ldi	r24, 0x02	; 2
     4d6:	90 e0       	ldi	r25, 0x00	; 0
     4d8:	08 95       	ret

000004da <.L16>:
     4da:	86 e0       	ldi	r24, 0x06	; 6
     4dc:	90 e0       	ldi	r25, 0x00	; 0
     4de:	08 95       	ret

000004e0 <I2C_read_ACK>:
     4e0:	84 ec       	ldi	r24, 0xC4	; 196
     4e2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004e6 <.L19>:
     4e6:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4ea:	87 ff       	sbrs	r24, 7
     4ec:	fc cf       	rjmp	.-8      	; 0x4e6 <.L19>
     4ee:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4f2:	08 95       	ret

000004f4 <I2C_read_NACK>:
     4f4:	84 e8       	ldi	r24, 0x84	; 132
     4f6:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004fa <.L22>:
     4fa:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4fe:	87 ff       	sbrs	r24, 7
     500:	fc cf       	rjmp	.-8      	; 0x4fa <.L22>
     502:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     506:	08 95       	ret

00000508 <I2C_stop>:
     508:	84 e9       	ldi	r24, 0x94	; 148
     50a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     50e:	08 95       	ret

00000510 <ADC_init>:
     510:	85 e4       	ldi	r24, 0x45	; 69
     512:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
     516:	87 e8       	ldi	r24, 0x87	; 135
     518:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     51c:	82 e0       	ldi	r24, 0x02	; 2
     51e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     522:	94 e0       	ldi	r25, 0x04	; 4
     524:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     528:	99 ef       	ldi	r25, 0xF9	; 249
     52a:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     52e:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     532:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
     536:	08 95       	ret

00000538 <ADC_get>:
     538:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     53c:	80 64       	ori	r24, 0x40	; 64
     53e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

00000542 <.L3>:
     542:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     546:	84 ff       	sbrs	r24, 4
     548:	fc cf       	rjmp	.-8      	; 0x542 <.L3>
     54a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     54e:	80 61       	ori	r24, 0x10	; 16
     550:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     554:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
     558:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
     55c:	80 e0       	ldi	r24, 0x00	; 0
     55e:	90 e0       	ldi	r25, 0x00	; 0
     560:	0e 94 ff 04 	call	0x9fe	; 0x9fe <__floatunsisf>
     564:	26 ef       	ldi	r18, 0xF6	; 246
     566:	38 e2       	ldi	r19, 0x28	; 40
     568:	4c e9       	ldi	r20, 0x9C	; 156
     56a:	50 e4       	ldi	r21, 0x40	; 64
     56c:	0e 94 8d 05 	call	0xb1a	; 0xb1a <__mulsf3>
     570:	0e 94 d0 04 	call	0x9a0	; 0x9a0 <__fixunssfsi>
     574:	cb 01       	movw	r24, r22
     576:	08 95       	ret

00000578 <ADC_sweep>:
     578:	ff 92       	push	r15
     57a:	0f 93       	push	r16
     57c:	1f 93       	push	r17
     57e:	cf 93       	push	r28
     580:	df 93       	push	r29
     582:	ec 01       	movw	r28, r24
     584:	0c e7       	ldi	r16, 0x7C	; 124
     586:	10 e0       	ldi	r17, 0x00	; 0
     588:	f8 01       	movw	r30, r16
     58a:	10 82       	st	Z, r1
     58c:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     590:	8a 83       	std	Y+2, r24	; 0x02
     592:	9b 83       	std	Y+3, r25	; 0x03
     594:	8f e3       	ldi	r24, 0x3F	; 63
     596:	9f e1       	ldi	r25, 0x1F	; 31

00000598 <.L1^B1>:
     598:	01 97       	sbiw	r24, 0x01	; 1
     59a:	f1 f7       	brne	.-4      	; 0x598 <.L1^B1>
     59c:	00 c0       	rjmp	.+0      	; 0x59e <L0^A>

0000059e <L0^A>:
     59e:	00 00       	nop
     5a0:	ff 24       	eor	r15, r15
     5a2:	f3 94       	inc	r15
     5a4:	f8 01       	movw	r30, r16
     5a6:	f0 82       	st	Z, r15
     5a8:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     5ac:	88 83       	st	Y, r24
     5ae:	99 83       	std	Y+1, r25	; 0x01
     5b0:	8f e3       	ldi	r24, 0x3F	; 63
     5b2:	9f e1       	ldi	r25, 0x1F	; 31

000005b4 <.L1^B2>:
     5b4:	01 97       	sbiw	r24, 0x01	; 1
     5b6:	f1 f7       	brne	.-4      	; 0x5b4 <.L1^B2>
     5b8:	00 c0       	rjmp	.+0      	; 0x5ba <L0^A>

000005ba <L0^A>:
     5ba:	00 00       	nop
     5bc:	82 e0       	ldi	r24, 0x02	; 2
     5be:	f8 01       	movw	r30, r16
     5c0:	80 83       	st	Z, r24
     5c2:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     5c6:	8c 83       	std	Y+4, r24	; 0x04
     5c8:	9d 83       	std	Y+5, r25	; 0x05
     5ca:	8f e3       	ldi	r24, 0x3F	; 63
     5cc:	9f e1       	ldi	r25, 0x1F	; 31

000005ce <.L1^B3>:
     5ce:	01 97       	sbiw	r24, 0x01	; 1
     5d0:	f1 f7       	brne	.-4      	; 0x5ce <.L1^B3>
     5d2:	00 c0       	rjmp	.+0      	; 0x5d4 <L0^A>

000005d4 <L0^A>:
     5d4:	00 00       	nop
     5d6:	83 e0       	ldi	r24, 0x03	; 3
     5d8:	f8 01       	movw	r30, r16
     5da:	80 83       	st	Z, r24
     5dc:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     5e0:	8e 83       	std	Y+6, r24	; 0x06
     5e2:	9f 83       	std	Y+7, r25	; 0x07
     5e4:	8f e3       	ldi	r24, 0x3F	; 63
     5e6:	9f e1       	ldi	r25, 0x1F	; 31

000005e8 <.L1^B4>:
     5e8:	01 97       	sbiw	r24, 0x01	; 1
     5ea:	f1 f7       	brne	.-4      	; 0x5e8 <.L1^B4>
     5ec:	00 c0       	rjmp	.+0      	; 0x5ee <L0^A>

000005ee <L0^A>:
     5ee:	00 00       	nop
     5f0:	84 e0       	ldi	r24, 0x04	; 4
     5f2:	f8 01       	movw	r30, r16
     5f4:	80 83       	st	Z, r24
     5f6:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     5fa:	88 87       	std	Y+8, r24	; 0x08
     5fc:	99 87       	std	Y+9, r25	; 0x09
     5fe:	8f e3       	ldi	r24, 0x3F	; 63
     600:	9f e1       	ldi	r25, 0x1F	; 31

00000602 <.L1^B5>:
     602:	01 97       	sbiw	r24, 0x01	; 1
     604:	f1 f7       	brne	.-4      	; 0x602 <.L1^B5>
     606:	00 c0       	rjmp	.+0      	; 0x608 <L0^A>

00000608 <L0^A>:
     608:	00 00       	nop
     60a:	f8 01       	movw	r30, r16
     60c:	f0 82       	st	Z, r15
     60e:	0e 94 9c 02 	call	0x538	; 0x538 <ADC_get>
     612:	8a 87       	std	Y+10, r24	; 0x0a
     614:	9b 87       	std	Y+11, r25	; 0x0b
     616:	8f e3       	ldi	r24, 0x3F	; 63
     618:	9f e1       	ldi	r25, 0x1F	; 31

0000061a <.L1^B6>:
     61a:	01 97       	sbiw	r24, 0x01	; 1
     61c:	f1 f7       	brne	.-4      	; 0x61a <.L1^B6>
     61e:	00 c0       	rjmp	.+0      	; 0x620 <L0^A>

00000620 <L0^A>:
     620:	00 00       	nop
     622:	df 91       	pop	r29
     624:	cf 91       	pop	r28
     626:	1f 91       	pop	r17
     628:	0f 91       	pop	r16
     62a:	ff 90       	pop	r15
     62c:	08 95       	ret

0000062e <volts_to_D>:
     62e:	bc 01       	movw	r22, r24
     630:	80 e0       	ldi	r24, 0x00	; 0
     632:	90 e0       	ldi	r25, 0x00	; 0
     634:	0e 94 ff 04 	call	0x9fe	; 0x9fe <__floatunsisf>
     638:	20 e0       	ldi	r18, 0x00	; 0
     63a:	30 e0       	ldi	r19, 0x00	; 0
     63c:	4a e7       	ldi	r20, 0x7A	; 122
     63e:	56 e4       	ldi	r21, 0x46	; 70
     640:	0e 94 8d 05 	call	0xb1a	; 0xb1a <__mulsf3>
     644:	20 e0       	ldi	r18, 0x00	; 0
     646:	30 e4       	ldi	r19, 0x40	; 64
     648:	4c e9       	ldi	r20, 0x9C	; 156
     64a:	55 e4       	ldi	r21, 0x45	; 69
     64c:	0e 94 5e 04 	call	0x8bc	; 0x8bc <__divsf3>
     650:	20 e0       	ldi	r18, 0x00	; 0
     652:	30 e0       	ldi	r19, 0x00	; 0
     654:	40 e8       	ldi	r20, 0x80	; 128
     656:	5f e3       	ldi	r21, 0x3F	; 63
     658:	0e 94 f1 03 	call	0x7e2	; 0x7e2 <__subsf3>
     65c:	0e 94 d0 04 	call	0x9a0	; 0x9a0 <__fixunssfsi>
     660:	cb 01       	movw	r24, r22
     662:	08 95       	ret

00000664 <GPIO_PORTD_IT_init>:
     664:	88 30       	cpi	r24, 0x08	; 8
     666:	d0 f4       	brcc	.+52     	; 0x69c <.L9>
     668:	4a b1       	in	r20, 0x0a	; 10
     66a:	21 e0       	ldi	r18, 0x01	; 1
     66c:	30 e0       	ldi	r19, 0x00	; 0
     66e:	b9 01       	movw	r22, r18
     670:	01 c0       	rjmp	.+2      	; 0x674 <.L2^B1>

00000672 <.L1^B7>:
     672:	66 0f       	add	r22, r22

00000674 <.L2^B1>:
     674:	8a 95       	dec	r24
     676:	ea f7       	brpl	.-6      	; 0x672 <.L1^B7>
     678:	86 2f       	mov	r24, r22
     67a:	96 2f       	mov	r25, r22
     67c:	90 95       	com	r25
     67e:	94 23       	and	r25, r20
     680:	9a b9       	out	0x0a, r25	; 10
     682:	9b b1       	in	r25, 0x0b	; 11
     684:	96 2b       	or	r25, r22
     686:	9b b9       	out	0x0b, r25	; 11
     688:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     68c:	94 60       	ori	r25, 0x04	; 4
     68e:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     692:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     696:	89 2b       	or	r24, r25
     698:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

0000069c <.L9>:
     69c:	80 e0       	ldi	r24, 0x00	; 0
     69e:	90 e0       	ldi	r25, 0x00	; 0
     6a0:	08 95       	ret

000006a2 <PWM_TIM1_init>:
     6a2:	21 9a       	sbi	0x04, 1	; 4
     6a4:	22 9a       	sbi	0x04, 2	; 4
     6a6:	22 ea       	ldi	r18, 0xA2	; 162
     6a8:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     6ac:	2a e1       	ldi	r18, 0x1A	; 26
     6ae:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     6b2:	40 ed       	ldi	r20, 0xD0	; 208
     6b4:	57 e0       	ldi	r21, 0x07	; 7
     6b6:	84 9f       	mul	r24, r20
     6b8:	90 01       	movw	r18, r0
     6ba:	85 9f       	mul	r24, r21
     6bc:	30 0d       	add	r19, r0
     6be:	94 9f       	mul	r25, r20
     6c0:	30 0d       	add	r19, r0
     6c2:	11 24       	eor	r1, r1
     6c4:	21 50       	subi	r18, 0x01	; 1
     6c6:	31 09       	sbc	r19, r1
     6c8:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     6cc:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     6d0:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     6d4:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     6d8:	08 95       	ret

000006da <PWM_set_DC>:
     6da:	9c 01       	movw	r18, r24
     6dc:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     6e0:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     6e4:	42 9f       	mul	r20, r18
     6e6:	c0 01       	movw	r24, r0
     6e8:	43 9f       	mul	r20, r19
     6ea:	90 0d       	add	r25, r0
     6ec:	52 9f       	mul	r21, r18
     6ee:	90 0d       	add	r25, r0
     6f0:	11 24       	eor	r1, r1
     6f2:	64 e6       	ldi	r22, 0x64	; 100
     6f4:	70 e0       	ldi	r23, 0x00	; 0
     6f6:	0e 94 dd 03 	call	0x7ba	; 0x7ba <__udivmodhi4>
     6fa:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     6fe:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     702:	08 95       	ret

00000704 <DEBUG_init>:
     704:	20 9a       	sbi	0x04, 0	; 4
     706:	08 95       	ret

00000708 <Error_Handler>:
     708:	88 e1       	ldi	r24, 0x18	; 24
     70a:	98 e0       	ldi	r25, 0x08	; 8
     70c:	0f b6       	in	r0, 0x3f	; 63
     70e:	f8 94       	cli
     710:	a8 95       	wdr
     712:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     716:	0f be       	out	0x3f, r0	; 63
     718:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

0000071c <.L2>:
     71c:	ff cf       	rjmp	.-2      	; 0x71c <.L2>

0000071e <__vector_7>:
     71e:	18 95       	reti

00000720 <__vector_5>:
     720:	8f 93       	push	r24
     722:	89 b1       	in	r24, 0x09	; 9
     724:	8f 91       	pop	r24
     726:	18 95       	reti

00000728 <__vector_2>:
     728:	18 95       	reti

0000072a <__vector_14>:
     72a:	18 95       	reti

0000072c <main>:
     72c:	84 e1       	ldi	r24, 0x14	; 20
     72e:	90 e0       	ldi	r25, 0x00	; 0
     730:	0e 94 51 03 	call	0x6a2	; 0x6a2 <PWM_TIM1_init>
     734:	0e 94 1e 02 	call	0x43c	; 0x43c <I2C_init>
     738:	2f ef       	ldi	r18, 0xFF	; 255
     73a:	83 e2       	ldi	r24, 0x23	; 35
     73c:	94 ef       	ldi	r25, 0xF4	; 244

0000073e <.L1^B1>:
     73e:	21 50       	subi	r18, 0x01	; 1
     740:	80 40       	sbci	r24, 0x00	; 0
     742:	90 40       	sbci	r25, 0x00	; 0
     744:	e1 f7       	brne	.-8      	; 0x73e <.L1^B1>
     746:	00 c0       	rjmp	.+0      	; 0x748 <L0^A>

00000748 <L0^A>:
     748:	00 00       	nop
     74a:	0e 94 bd 01 	call	0x37a	; 0x37a <USART_init>
     74e:	0e 94 82 03 	call	0x704	; 0x704 <DEBUG_init>
     752:	78 94       	sei

00000754 <.L8>:
     754:	83 e0       	ldi	r24, 0x03	; 3
     756:	91 e0       	ldi	r25, 0x01	; 1
     758:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     75c:	2f ef       	ldi	r18, 0xFF	; 255
     75e:	83 e2       	ldi	r24, 0x23	; 35
     760:	94 ef       	ldi	r25, 0xF4	; 244

00000762 <.L1^B2>:
     762:	21 50       	subi	r18, 0x01	; 1
     764:	80 40       	sbci	r24, 0x00	; 0
     766:	90 40       	sbci	r25, 0x00	; 0
     768:	e1 f7       	brne	.-8      	; 0x762 <.L1^B2>
     76a:	00 c0       	rjmp	.+0      	; 0x76c <L0^A>

0000076c <L0^A>:
     76c:	00 00       	nop
     76e:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <VL53L0X_test>
     772:	81 15       	cp	r24, r1
     774:	f9 f0       	breq	.+62     	; 0x7b4 <.L6>
     776:	86 e1       	ldi	r24, 0x16	; 22
     778:	91 e0       	ldi	r25, 0x01	; 1

0000077a <.L9>:
     77a:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     77e:	80 e3       	ldi	r24, 0x30	; 48
     780:	91 e0       	ldi	r25, 0x01	; 1
     782:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     786:	2f ef       	ldi	r18, 0xFF	; 255
     788:	83 ed       	ldi	r24, 0xD3	; 211
     78a:	90 e3       	ldi	r25, 0x30	; 48

0000078c <.L1^B3>:
     78c:	21 50       	subi	r18, 0x01	; 1
     78e:	80 40       	sbci	r24, 0x00	; 0
     790:	90 40       	sbci	r25, 0x00	; 0
     792:	e1 f7       	brne	.-8      	; 0x78c <.L1^B3>
     794:	00 c0       	rjmp	.+0      	; 0x796 <L0^A>

00000796 <L0^A>:
     796:	00 00       	nop
     798:	86 e3       	ldi	r24, 0x36	; 54
     79a:	91 e0       	ldi	r25, 0x01	; 1
     79c:	0e 94 d7 01 	call	0x3ae	; 0x3ae <USART_putstring>
     7a0:	2f ef       	ldi	r18, 0xFF	; 255
     7a2:	83 ed       	ldi	r24, 0xD3	; 211
     7a4:	90 e3       	ldi	r25, 0x30	; 48

000007a6 <.L1^B4>:
     7a6:	21 50       	subi	r18, 0x01	; 1
     7a8:	80 40       	sbci	r24, 0x00	; 0
     7aa:	90 40       	sbci	r25, 0x00	; 0
     7ac:	e1 f7       	brne	.-8      	; 0x7a6 <.L1^B4>
     7ae:	00 c0       	rjmp	.+0      	; 0x7b0 <L0^A>

000007b0 <L0^A>:
     7b0:	00 00       	nop
     7b2:	d0 cf       	rjmp	.-96     	; 0x754 <.L8>

000007b4 <.L6>:
     7b4:	81 e2       	ldi	r24, 0x21	; 33
     7b6:	91 e0       	ldi	r25, 0x01	; 1
     7b8:	e0 cf       	rjmp	.-64     	; 0x77a <.L9>

000007ba <__udivmodhi4>:
     7ba:	aa 1b       	sub	r26, r26

000007bc <.Loc.1>:
     7bc:	bb 1b       	sub	r27, r27

000007be <.Loc.2>:
     7be:	51 e1       	ldi	r21, 0x11	; 17

000007c0 <.Loc.3>:
     7c0:	07 c0       	rjmp	.+14     	; 0x7d0 <__udivmodhi4_ep>

000007c2 <__udivmodhi4_loop>:
     7c2:	aa 1f       	adc	r26, r26

000007c4 <.Loc.5>:
     7c4:	bb 1f       	adc	r27, r27

000007c6 <.Loc.6>:
     7c6:	a6 17       	cp	r26, r22

000007c8 <.Loc.7>:
     7c8:	b7 07       	cpc	r27, r23

000007ca <.Loc.8>:
     7ca:	10 f0       	brcs	.+4      	; 0x7d0 <__udivmodhi4_ep>

000007cc <.Loc.9>:
     7cc:	a6 1b       	sub	r26, r22

000007ce <.Loc.10>:
     7ce:	b7 0b       	sbc	r27, r23

000007d0 <__udivmodhi4_ep>:
     7d0:	88 1f       	adc	r24, r24

000007d2 <.Loc.12>:
     7d2:	99 1f       	adc	r25, r25

000007d4 <.Loc.13>:
     7d4:	5a 95       	dec	r21

000007d6 <.Loc.14>:
     7d6:	a9 f7       	brne	.-22     	; 0x7c2 <__udivmodhi4_loop>

000007d8 <.Loc.15>:
     7d8:	80 95       	com	r24

000007da <.Loc.16>:
     7da:	90 95       	com	r25

000007dc <.Loc.17>:
     7dc:	bc 01       	movw	r22, r24

000007de <.Loc.18>:
     7de:	cd 01       	movw	r24, r26

000007e0 <.Loc.19>:
     7e0:	08 95       	ret

000007e2 <__subsf3>:
     7e2:	50 58       	subi	r21, 0x80	; 128

000007e4 <__addsf3>:
     7e4:	bb 27       	eor	r27, r27
     7e6:	aa 27       	eor	r26, r26
     7e8:	0e 94 09 04 	call	0x812	; 0x812 <__addsf3x>
     7ec:	0c 94 53 05 	jmp	0xaa6	; 0xaa6 <__fp_round>

000007f0 <.L0^B1>:
     7f0:	0e 94 45 05 	call	0xa8a	; 0xa8a <__fp_pscA>
     7f4:	38 f0       	brcs	.+14     	; 0x804 <.L_nan>
     7f6:	0e 94 4c 05 	call	0xa98	; 0xa98 <__fp_pscB>
     7fa:	20 f0       	brcs	.+8      	; 0x804 <.L_nan>
     7fc:	39 f4       	brne	.+14     	; 0x80c <.L_inf>
     7fe:	9f 3f       	cpi	r25, 0xFF	; 255
     800:	19 f4       	brne	.+6      	; 0x808 <.L_infB>
     802:	26 f4       	brtc	.+8      	; 0x80c <.L_inf>

00000804 <.L_nan>:
     804:	0c 94 42 05 	jmp	0xa84	; 0xa84 <__fp_nan>

00000808 <.L_infB>:
     808:	0e f4       	brtc	.+2      	; 0x80c <.L_inf>
     80a:	e0 95       	com	r30

0000080c <.L_inf>:
     80c:	e7 fb       	bst	r30, 7
     80e:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <__fp_inf>

00000812 <__addsf3x>:
     812:	e9 2f       	mov	r30, r25
     814:	0e 94 64 05 	call	0xac8	; 0xac8 <__fp_split3>
     818:	58 f3       	brcs	.-42     	; 0x7f0 <.L0^B1>
     81a:	ba 17       	cp	r27, r26
     81c:	62 07       	cpc	r22, r18
     81e:	73 07       	cpc	r23, r19
     820:	84 07       	cpc	r24, r20
     822:	95 07       	cpc	r25, r21
     824:	20 f0       	brcs	.+8      	; 0x82e <.L2^B1>
     826:	79 f4       	brne	.+30     	; 0x846 <.L4^B1>
     828:	a6 f5       	brtc	.+104    	; 0x892 <.L_add>
     82a:	0c 94 86 05 	jmp	0xb0c	; 0xb0c <__fp_zero>

0000082e <.L2^B1>:
     82e:	0e f4       	brtc	.+2      	; 0x832 <.L3^B1>
     830:	e0 95       	com	r30

00000832 <.L3^B1>:
     832:	0b 2e       	mov	r0, r27
     834:	ba 2f       	mov	r27, r26
     836:	a0 2d       	mov	r26, r0
     838:	0b 01       	movw	r0, r22
     83a:	b9 01       	movw	r22, r18
     83c:	90 01       	movw	r18, r0
     83e:	0c 01       	movw	r0, r24
     840:	ca 01       	movw	r24, r20
     842:	a0 01       	movw	r20, r0
     844:	11 24       	eor	r1, r1

00000846 <.L4^B1>:
     846:	ff 27       	eor	r31, r31
     848:	59 1b       	sub	r21, r25

0000084a <.L5^B1>:
     84a:	99 f0       	breq	.+38     	; 0x872 <.L7^B1>
     84c:	59 3f       	cpi	r21, 0xF9	; 249
     84e:	50 f4       	brcc	.+20     	; 0x864 <.L6^B1>
     850:	50 3e       	cpi	r21, 0xE0	; 224
     852:	68 f1       	brcs	.+90     	; 0x8ae <.L_ret>
     854:	1a 16       	cp	r1, r26
     856:	f0 40       	sbci	r31, 0x00	; 0
     858:	a2 2f       	mov	r26, r18
     85a:	23 2f       	mov	r18, r19
     85c:	34 2f       	mov	r19, r20
     85e:	44 27       	eor	r20, r20
     860:	58 5f       	subi	r21, 0xF8	; 248
     862:	f3 cf       	rjmp	.-26     	; 0x84a <.L5^B1>

00000864 <.L6^B1>:
     864:	46 95       	lsr	r20
     866:	37 95       	ror	r19
     868:	27 95       	ror	r18
     86a:	a7 95       	ror	r26
     86c:	f0 40       	sbci	r31, 0x00	; 0
     86e:	53 95       	inc	r21
     870:	c9 f7       	brne	.-14     	; 0x864 <.L6^B1>

00000872 <.L7^B1>:
     872:	7e f4       	brtc	.+30     	; 0x892 <.L_add>
     874:	1f 16       	cp	r1, r31
     876:	ba 0b       	sbc	r27, r26
     878:	62 0b       	sbc	r22, r18
     87a:	73 0b       	sbc	r23, r19
     87c:	84 0b       	sbc	r24, r20
     87e:	ba f0       	brmi	.+46     	; 0x8ae <.L_ret>

00000880 <.L8^B1>:
     880:	91 50       	subi	r25, 0x01	; 1
     882:	a1 f0       	breq	.+40     	; 0x8ac <.L9^B1>
     884:	ff 0f       	add	r31, r31
     886:	bb 1f       	adc	r27, r27
     888:	66 1f       	adc	r22, r22
     88a:	77 1f       	adc	r23, r23
     88c:	88 1f       	adc	r24, r24
     88e:	c2 f7       	brpl	.-16     	; 0x880 <.L8^B1>
     890:	0e c0       	rjmp	.+28     	; 0x8ae <.L_ret>

00000892 <.L_add>:
     892:	ba 0f       	add	r27, r26
     894:	62 1f       	adc	r22, r18
     896:	73 1f       	adc	r23, r19
     898:	84 1f       	adc	r24, r20
     89a:	48 f4       	brcc	.+18     	; 0x8ae <.L_ret>
     89c:	87 95       	ror	r24
     89e:	77 95       	ror	r23
     8a0:	67 95       	ror	r22
     8a2:	b7 95       	ror	r27
     8a4:	f7 95       	ror	r31
     8a6:	9e 3f       	cpi	r25, 0xFE	; 254
     8a8:	08 f0       	brcs	.+2      	; 0x8ac <.L9^B1>
     8aa:	b0 cf       	rjmp	.-160    	; 0x80c <.L_inf>

000008ac <.L9^B1>:
     8ac:	93 95       	inc	r25

000008ae <.L_ret>:
     8ae:	88 0f       	add	r24, r24
     8b0:	08 f0       	brcs	.+2      	; 0x8b4 <.L1^B1>
     8b2:	99 27       	eor	r25, r25

000008b4 <.L1^B1>:
     8b4:	ee 0f       	add	r30, r30
     8b6:	97 95       	ror	r25
     8b8:	87 95       	ror	r24
     8ba:	08 95       	ret

000008bc <__divsf3>:
     8bc:	0e 94 72 04 	call	0x8e4	; 0x8e4 <__divsf3x>
     8c0:	0c 94 53 05 	jmp	0xaa6	; 0xaa6 <__fp_round>

000008c4 <.L0^B1>:
     8c4:	0e 94 4c 05 	call	0xa98	; 0xa98 <__fp_pscB>
     8c8:	58 f0       	brcs	.+22     	; 0x8e0 <.L_nan>
     8ca:	0e 94 45 05 	call	0xa8a	; 0xa8a <__fp_pscA>
     8ce:	40 f0       	brcs	.+16     	; 0x8e0 <.L_nan>
     8d0:	29 f4       	brne	.+10     	; 0x8dc <.L_zr>
     8d2:	5f 3f       	cpi	r21, 0xFF	; 255
     8d4:	29 f0       	breq	.+10     	; 0x8e0 <.L_nan>

000008d6 <.L_inf>:
     8d6:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <__fp_inf>

000008da <.L1^B1>:
     8da:	51 11       	cpse	r21, r1

000008dc <.L_zr>:
     8dc:	0c 94 87 05 	jmp	0xb0e	; 0xb0e <__fp_szero>

000008e0 <.L_nan>:
     8e0:	0c 94 42 05 	jmp	0xa84	; 0xa84 <__fp_nan>

000008e4 <__divsf3x>:
     8e4:	0e 94 64 05 	call	0xac8	; 0xac8 <__fp_split3>
     8e8:	68 f3       	brcs	.-38     	; 0x8c4 <.L0^B1>

000008ea <__divsf3_pse>:
     8ea:	99 23       	and	r25, r25
     8ec:	b1 f3       	breq	.-20     	; 0x8da <.L1^B1>
     8ee:	55 23       	and	r21, r21
     8f0:	91 f3       	breq	.-28     	; 0x8d6 <.L_inf>
     8f2:	95 1b       	sub	r25, r21
     8f4:	55 0b       	sbc	r21, r21
     8f6:	bb 27       	eor	r27, r27
     8f8:	aa 27       	eor	r26, r26

000008fa <.L2^B1>:
     8fa:	62 17       	cp	r22, r18
     8fc:	73 07       	cpc	r23, r19
     8fe:	84 07       	cpc	r24, r20
     900:	38 f0       	brcs	.+14     	; 0x910 <.L3^B1>
     902:	9f 5f       	subi	r25, 0xFF	; 255
     904:	5f 4f       	sbci	r21, 0xFF	; 255
     906:	22 0f       	add	r18, r18
     908:	33 1f       	adc	r19, r19
     90a:	44 1f       	adc	r20, r20
     90c:	aa 1f       	adc	r26, r26
     90e:	a9 f3       	breq	.-22     	; 0x8fa <.L2^B1>

00000910 <.L3^B1>:
     910:	35 d0       	rcall	.+106    	; 0x97c <.L_div>
     912:	0e 2e       	mov	r0, r30
     914:	3a f0       	brmi	.+14     	; 0x924 <.L5^B1>

00000916 <.L4^B1>:
     916:	e0 e8       	ldi	r30, 0x80	; 128
     918:	32 d0       	rcall	.+100    	; 0x97e <.L_div1>
     91a:	91 50       	subi	r25, 0x01	; 1
     91c:	50 40       	sbci	r21, 0x00	; 0
     91e:	e6 95       	lsr	r30
     920:	00 1c       	adc	r0, r0
     922:	ca f7       	brpl	.-14     	; 0x916 <.L4^B1>

00000924 <.L5^B1>:
     924:	2b d0       	rcall	.+86     	; 0x97c <.L_div>
     926:	fe 2f       	mov	r31, r30
     928:	29 d0       	rcall	.+82     	; 0x97c <.L_div>
     92a:	66 0f       	add	r22, r22
     92c:	77 1f       	adc	r23, r23
     92e:	88 1f       	adc	r24, r24
     930:	bb 1f       	adc	r27, r27
     932:	26 17       	cp	r18, r22
     934:	37 07       	cpc	r19, r23
     936:	48 07       	cpc	r20, r24
     938:	ab 07       	cpc	r26, r27
     93a:	b0 e8       	ldi	r27, 0x80	; 128
     93c:	09 f0       	breq	.+2      	; 0x940 <.L4^B2>
     93e:	bb 0b       	sbc	r27, r27

00000940 <.L4^B2>:
     940:	80 2d       	mov	r24, r0
     942:	bf 01       	movw	r22, r30
     944:	ff 27       	eor	r31, r31
     946:	93 58       	subi	r25, 0x83	; 131
     948:	5f 4f       	sbci	r21, 0xFF	; 255
     94a:	3a f0       	brmi	.+14     	; 0x95a <.L13^B1>
     94c:	9e 3f       	cpi	r25, 0xFE	; 254
     94e:	51 05       	cpc	r21, r1
     950:	78 f0       	brcs	.+30     	; 0x970 <.L15^B1>
     952:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <__fp_inf>

00000956 <.L12^B1>:
     956:	0c 94 87 05 	jmp	0xb0e	; 0xb0e <__fp_szero>

0000095a <.L13^B1>:
     95a:	5f 3f       	cpi	r21, 0xFF	; 255
     95c:	e4 f3       	brlt	.-8      	; 0x956 <.L12^B1>
     95e:	98 3e       	cpi	r25, 0xE8	; 232
     960:	d4 f3       	brlt	.-12     	; 0x956 <.L12^B1>

00000962 <.L14^B1>:
     962:	86 95       	lsr	r24
     964:	77 95       	ror	r23
     966:	67 95       	ror	r22
     968:	b7 95       	ror	r27
     96a:	f7 95       	ror	r31
     96c:	9f 5f       	subi	r25, 0xFF	; 255
     96e:	c9 f7       	brne	.-14     	; 0x962 <.L14^B1>

00000970 <.L15^B1>:
     970:	88 0f       	add	r24, r24
     972:	91 1d       	adc	r25, r1
     974:	96 95       	lsr	r25
     976:	87 95       	ror	r24
     978:	97 f9       	bld	r25, 7
     97a:	08 95       	ret

0000097c <.L_div>:
     97c:	e1 e0       	ldi	r30, 0x01	; 1

0000097e <.L_div1>:
     97e:	66 0f       	add	r22, r22
     980:	77 1f       	adc	r23, r23
     982:	88 1f       	adc	r24, r24
     984:	bb 1f       	adc	r27, r27
     986:	62 17       	cp	r22, r18
     988:	73 07       	cpc	r23, r19
     98a:	84 07       	cpc	r24, r20
     98c:	ba 07       	cpc	r27, r26
     98e:	20 f0       	brcs	.+8      	; 0x998 <.L2^B2>
     990:	62 1b       	sub	r22, r18
     992:	73 0b       	sbc	r23, r19
     994:	84 0b       	sbc	r24, r20
     996:	ba 0b       	sbc	r27, r26

00000998 <.L2^B2>:
     998:	ee 1f       	adc	r30, r30
     99a:	88 f7       	brcc	.-30     	; 0x97e <.L_div1>
     99c:	e0 95       	com	r30
     99e:	08 95       	ret

000009a0 <__fixunssfsi>:
     9a0:	0e 94 6c 05 	call	0xad8	; 0xad8 <__fp_splitA>
     9a4:	88 f0       	brcs	.+34     	; 0x9c8 <.L_err>
     9a6:	9f 57       	subi	r25, 0x7F	; 127
     9a8:	98 f0       	brcs	.+38     	; 0x9d0 <.L_zr>
     9aa:	b9 2f       	mov	r27, r25
     9ac:	99 27       	eor	r25, r25
     9ae:	b7 51       	subi	r27, 0x17	; 23
     9b0:	b0 f0       	brcs	.+44     	; 0x9de <.L4^B1>
     9b2:	e1 f0       	breq	.+56     	; 0x9ec <.L_sign>

000009b4 <.L1^B1>:
     9b4:	66 0f       	add	r22, r22
     9b6:	77 1f       	adc	r23, r23
     9b8:	88 1f       	adc	r24, r24
     9ba:	99 1f       	adc	r25, r25
     9bc:	1a f0       	brmi	.+6      	; 0x9c4 <.L2^B1>
     9be:	ba 95       	dec	r27
     9c0:	c9 f7       	brne	.-14     	; 0x9b4 <.L1^B1>
     9c2:	14 c0       	rjmp	.+40     	; 0x9ec <.L_sign>

000009c4 <.L2^B1>:
     9c4:	b1 30       	cpi	r27, 0x01	; 1
     9c6:	91 f0       	breq	.+36     	; 0x9ec <.L_sign>

000009c8 <.L_err>:
     9c8:	0e 94 86 05 	call	0xb0c	; 0xb0c <__fp_zero>
     9cc:	b1 e0       	ldi	r27, 0x01	; 1
     9ce:	08 95       	ret

000009d0 <.L_zr>:
     9d0:	0c 94 86 05 	jmp	0xb0c	; 0xb0c <__fp_zero>

000009d4 <.L3^B1>:
     9d4:	67 2f       	mov	r22, r23
     9d6:	78 2f       	mov	r23, r24
     9d8:	88 27       	eor	r24, r24
     9da:	b8 5f       	subi	r27, 0xF8	; 248
     9dc:	39 f0       	breq	.+14     	; 0x9ec <.L_sign>

000009de <.L4^B1>:
     9de:	b9 3f       	cpi	r27, 0xF9	; 249
     9e0:	cc f3       	brlt	.-14     	; 0x9d4 <.L3^B1>

000009e2 <.L5^B1>:
     9e2:	86 95       	lsr	r24
     9e4:	77 95       	ror	r23
     9e6:	67 95       	ror	r22
     9e8:	b3 95       	inc	r27
     9ea:	d9 f7       	brne	.-10     	; 0x9e2 <.L5^B1>

000009ec <.L_sign>:
     9ec:	3e f4       	brtc	.+14     	; 0x9fc <.L6^B1>
     9ee:	90 95       	com	r25
     9f0:	80 95       	com	r24
     9f2:	70 95       	com	r23
     9f4:	61 95       	neg	r22
     9f6:	7f 4f       	sbci	r23, 0xFF	; 255
     9f8:	8f 4f       	sbci	r24, 0xFF	; 255
     9fa:	9f 4f       	sbci	r25, 0xFF	; 255

000009fc <.L6^B1>:
     9fc:	08 95       	ret

000009fe <__floatunsisf>:
     9fe:	e8 94       	clt
     a00:	09 c0       	rjmp	.+18     	; 0xa14 <.L1^B1>

00000a02 <__floatsisf>:
     a02:	97 fb       	bst	r25, 7
     a04:	3e f4       	brtc	.+14     	; 0xa14 <.L1^B1>
     a06:	90 95       	com	r25
     a08:	80 95       	com	r24
     a0a:	70 95       	com	r23
     a0c:	61 95       	neg	r22
     a0e:	7f 4f       	sbci	r23, 0xFF	; 255
     a10:	8f 4f       	sbci	r24, 0xFF	; 255
     a12:	9f 4f       	sbci	r25, 0xFF	; 255

00000a14 <.L1^B1>:
     a14:	99 23       	and	r25, r25
     a16:	a9 f0       	breq	.+42     	; 0xa42 <.L4^B1>
     a18:	f9 2f       	mov	r31, r25
     a1a:	96 e9       	ldi	r25, 0x96	; 150
     a1c:	bb 27       	eor	r27, r27

00000a1e <.L2^B1>:
     a1e:	93 95       	inc	r25
     a20:	f6 95       	lsr	r31
     a22:	87 95       	ror	r24
     a24:	77 95       	ror	r23
     a26:	67 95       	ror	r22
     a28:	b7 95       	ror	r27
     a2a:	f1 11       	cpse	r31, r1
     a2c:	f8 cf       	rjmp	.-16     	; 0xa1e <.L2^B1>
     a2e:	fa f4       	brpl	.+62     	; 0xa6e <.L_pack>
     a30:	bb 0f       	add	r27, r27
     a32:	11 f4       	brne	.+4      	; 0xa38 <.L3^B1>
     a34:	60 ff       	sbrs	r22, 0
     a36:	1b c0       	rjmp	.+54     	; 0xa6e <.L_pack>

00000a38 <.L3^B1>:
     a38:	6f 5f       	subi	r22, 0xFF	; 255
     a3a:	7f 4f       	sbci	r23, 0xFF	; 255
     a3c:	8f 4f       	sbci	r24, 0xFF	; 255
     a3e:	9f 4f       	sbci	r25, 0xFF	; 255
     a40:	16 c0       	rjmp	.+44     	; 0xa6e <.L_pack>

00000a42 <.L4^B1>:
     a42:	88 23       	and	r24, r24
     a44:	11 f0       	breq	.+4      	; 0xa4a <.L5^B1>
     a46:	96 e9       	ldi	r25, 0x96	; 150
     a48:	11 c0       	rjmp	.+34     	; 0xa6c <.L8^B1>

00000a4a <.L5^B1>:
     a4a:	77 23       	and	r23, r23
     a4c:	21 f0       	breq	.+8      	; 0xa56 <.L6^B1>
     a4e:	9e e8       	ldi	r25, 0x8E	; 142
     a50:	87 2f       	mov	r24, r23
     a52:	76 2f       	mov	r23, r22
     a54:	05 c0       	rjmp	.+10     	; 0xa60 <.L7^B1>

00000a56 <.L6^B1>:
     a56:	66 23       	and	r22, r22
     a58:	71 f0       	breq	.+28     	; 0xa76 <.L9^B1>
     a5a:	96 e8       	ldi	r25, 0x86	; 134
     a5c:	86 2f       	mov	r24, r22
     a5e:	70 e0       	ldi	r23, 0x00	; 0

00000a60 <.L7^B1>:
     a60:	60 e0       	ldi	r22, 0x00	; 0
     a62:	2a f0       	brmi	.+10     	; 0xa6e <.L_pack>

00000a64 <.L10^B1>:
     a64:	9a 95       	dec	r25
     a66:	66 0f       	add	r22, r22
     a68:	77 1f       	adc	r23, r23
     a6a:	88 1f       	adc	r24, r24

00000a6c <.L8^B1>:
     a6c:	da f7       	brpl	.-10     	; 0xa64 <.L10^B1>

00000a6e <.L_pack>:
     a6e:	88 0f       	add	r24, r24
     a70:	96 95       	lsr	r25
     a72:	87 95       	ror	r24
     a74:	97 f9       	bld	r25, 7

00000a76 <.L9^B1>:
     a76:	08 95       	ret

00000a78 <__fp_inf>:
     a78:	97 f9       	bld	r25, 7
     a7a:	9f 67       	ori	r25, 0x7F	; 127
     a7c:	80 e8       	ldi	r24, 0x80	; 128
     a7e:	70 e0       	ldi	r23, 0x00	; 0
     a80:	60 e0       	ldi	r22, 0x00	; 0
     a82:	08 95       	ret

00000a84 <__fp_nan>:
     a84:	9f ef       	ldi	r25, 0xFF	; 255
     a86:	80 ec       	ldi	r24, 0xC0	; 192
     a88:	08 95       	ret

00000a8a <__fp_pscA>:
     a8a:	00 24       	eor	r0, r0
     a8c:	0a 94       	dec	r0
     a8e:	16 16       	cp	r1, r22
     a90:	17 06       	cpc	r1, r23
     a92:	18 06       	cpc	r1, r24
     a94:	09 06       	cpc	r0, r25
     a96:	08 95       	ret

00000a98 <__fp_pscB>:
     a98:	00 24       	eor	r0, r0
     a9a:	0a 94       	dec	r0
     a9c:	12 16       	cp	r1, r18
     a9e:	13 06       	cpc	r1, r19
     aa0:	14 06       	cpc	r1, r20
     aa2:	05 06       	cpc	r0, r21
     aa4:	08 95       	ret

00000aa6 <__fp_round>:
     aa6:	09 2e       	mov	r0, r25
     aa8:	03 94       	inc	r0
     aaa:	00 0c       	add	r0, r0
     aac:	11 f4       	brne	.+4      	; 0xab2 <.L1^B1>
     aae:	88 23       	and	r24, r24
     ab0:	52 f0       	brmi	.+20     	; 0xac6 <.L3^B1>

00000ab2 <.L1^B1>:
     ab2:	bb 0f       	add	r27, r27
     ab4:	40 f4       	brcc	.+16     	; 0xac6 <.L3^B1>
     ab6:	bf 2b       	or	r27, r31
     ab8:	11 f4       	brne	.+4      	; 0xabe <.L2^B1>
     aba:	60 ff       	sbrs	r22, 0
     abc:	04 c0       	rjmp	.+8      	; 0xac6 <.L3^B1>

00000abe <.L2^B1>:
     abe:	6f 5f       	subi	r22, 0xFF	; 255
     ac0:	7f 4f       	sbci	r23, 0xFF	; 255
     ac2:	8f 4f       	sbci	r24, 0xFF	; 255
     ac4:	9f 4f       	sbci	r25, 0xFF	; 255

00000ac6 <.L3^B1>:
     ac6:	08 95       	ret

00000ac8 <__fp_split3>:
     ac8:	57 fd       	sbrc	r21, 7
     aca:	90 58       	subi	r25, 0x80	; 128
     acc:	44 0f       	add	r20, r20
     ace:	55 1f       	adc	r21, r21
     ad0:	59 f0       	breq	.+22     	; 0xae8 <.L4^B1>
     ad2:	5f 3f       	cpi	r21, 0xFF	; 255
     ad4:	71 f0       	breq	.+28     	; 0xaf2 <.L5^B1>

00000ad6 <.L1^B1>:
     ad6:	47 95       	ror	r20

00000ad8 <__fp_splitA>:
     ad8:	88 0f       	add	r24, r24
     ada:	97 fb       	bst	r25, 7
     adc:	99 1f       	adc	r25, r25
     ade:	61 f0       	breq	.+24     	; 0xaf8 <.L6^B1>
     ae0:	9f 3f       	cpi	r25, 0xFF	; 255
     ae2:	79 f0       	breq	.+30     	; 0xb02 <.L7^B1>

00000ae4 <.L3^B1>:
     ae4:	87 95       	ror	r24
     ae6:	08 95       	ret

00000ae8 <.L4^B1>:
     ae8:	12 16       	cp	r1, r18
     aea:	13 06       	cpc	r1, r19
     aec:	14 06       	cpc	r1, r20
     aee:	55 1f       	adc	r21, r21
     af0:	f2 cf       	rjmp	.-28     	; 0xad6 <.L1^B1>

00000af2 <.L5^B1>:
     af2:	46 95       	lsr	r20
     af4:	f1 df       	rcall	.-30     	; 0xad8 <__fp_splitA>
     af6:	08 c0       	rjmp	.+16     	; 0xb08 <.L8^B1>

00000af8 <.L6^B1>:
     af8:	16 16       	cp	r1, r22
     afa:	17 06       	cpc	r1, r23
     afc:	18 06       	cpc	r1, r24
     afe:	99 1f       	adc	r25, r25
     b00:	f1 cf       	rjmp	.-30     	; 0xae4 <.L3^B1>

00000b02 <.L7^B1>:
     b02:	86 95       	lsr	r24
     b04:	71 05       	cpc	r23, r1
     b06:	61 05       	cpc	r22, r1

00000b08 <.L8^B1>:
     b08:	08 94       	sec
     b0a:	08 95       	ret

00000b0c <__fp_zero>:
     b0c:	e8 94       	clt

00000b0e <__fp_szero>:
     b0e:	bb 27       	eor	r27, r27
     b10:	66 27       	eor	r22, r22
     b12:	77 27       	eor	r23, r23
     b14:	cb 01       	movw	r24, r22
     b16:	97 f9       	bld	r25, 7
     b18:	08 95       	ret

00000b1a <__mulsf3>:
     b1a:	0e 94 a0 05 	call	0xb40	; 0xb40 <__mulsf3x>
     b1e:	0c 94 53 05 	jmp	0xaa6	; 0xaa6 <__fp_round>

00000b22 <.L0^B1>:
     b22:	0e 94 45 05 	call	0xa8a	; 0xa8a <__fp_pscA>
     b26:	38 f0       	brcs	.+14     	; 0xb36 <.L1^B1>
     b28:	0e 94 4c 05 	call	0xa98	; 0xa98 <__fp_pscB>
     b2c:	20 f0       	brcs	.+8      	; 0xb36 <.L1^B1>
     b2e:	95 23       	and	r25, r21
     b30:	11 f0       	breq	.+4      	; 0xb36 <.L1^B1>
     b32:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <__fp_inf>

00000b36 <.L1^B1>:
     b36:	0c 94 42 05 	jmp	0xa84	; 0xa84 <__fp_nan>

00000b3a <.L2^B1>:
     b3a:	11 24       	eor	r1, r1
     b3c:	0c 94 87 05 	jmp	0xb0e	; 0xb0e <__fp_szero>

00000b40 <__mulsf3x>:
     b40:	0e 94 64 05 	call	0xac8	; 0xac8 <__fp_split3>
     b44:	70 f3       	brcs	.-36     	; 0xb22 <.L0^B1>

00000b46 <__mulsf3_pse>:
     b46:	95 9f       	mul	r25, r21
     b48:	c1 f3       	breq	.-16     	; 0xb3a <.L2^B1>
     b4a:	95 0f       	add	r25, r21
     b4c:	50 e0       	ldi	r21, 0x00	; 0
     b4e:	55 1f       	adc	r21, r21
     b50:	62 9f       	mul	r22, r18
     b52:	f0 01       	movw	r30, r0
     b54:	72 9f       	mul	r23, r18
     b56:	bb 27       	eor	r27, r27
     b58:	f0 0d       	add	r31, r0
     b5a:	b1 1d       	adc	r27, r1
     b5c:	63 9f       	mul	r22, r19
     b5e:	aa 27       	eor	r26, r26
     b60:	f0 0d       	add	r31, r0
     b62:	b1 1d       	adc	r27, r1
     b64:	aa 1f       	adc	r26, r26
     b66:	64 9f       	mul	r22, r20
     b68:	66 27       	eor	r22, r22
     b6a:	b0 0d       	add	r27, r0
     b6c:	a1 1d       	adc	r26, r1
     b6e:	66 1f       	adc	r22, r22
     b70:	82 9f       	mul	r24, r18
     b72:	22 27       	eor	r18, r18
     b74:	b0 0d       	add	r27, r0
     b76:	a1 1d       	adc	r26, r1
     b78:	62 1f       	adc	r22, r18
     b7a:	73 9f       	mul	r23, r19
     b7c:	b0 0d       	add	r27, r0
     b7e:	a1 1d       	adc	r26, r1
     b80:	62 1f       	adc	r22, r18
     b82:	83 9f       	mul	r24, r19
     b84:	a0 0d       	add	r26, r0
     b86:	61 1d       	adc	r22, r1
     b88:	22 1f       	adc	r18, r18
     b8a:	74 9f       	mul	r23, r20
     b8c:	33 27       	eor	r19, r19
     b8e:	a0 0d       	add	r26, r0
     b90:	61 1d       	adc	r22, r1
     b92:	23 1f       	adc	r18, r19
     b94:	84 9f       	mul	r24, r20
     b96:	60 0d       	add	r22, r0
     b98:	21 1d       	adc	r18, r1
     b9a:	82 2f       	mov	r24, r18
     b9c:	76 2f       	mov	r23, r22
     b9e:	6a 2f       	mov	r22, r26
     ba0:	11 24       	eor	r1, r1
     ba2:	9f 57       	subi	r25, 0x7F	; 127
     ba4:	50 40       	sbci	r21, 0x00	; 0
     ba6:	9a f0       	brmi	.+38     	; 0xbce <.L13^B1>
     ba8:	f1 f0       	breq	.+60     	; 0xbe6 <.L15^B1>

00000baa <.L10^B1>:
     baa:	88 23       	and	r24, r24
     bac:	4a f0       	brmi	.+18     	; 0xbc0 <.L11^B1>
     bae:	ee 0f       	add	r30, r30
     bb0:	ff 1f       	adc	r31, r31
     bb2:	bb 1f       	adc	r27, r27
     bb4:	66 1f       	adc	r22, r22
     bb6:	77 1f       	adc	r23, r23
     bb8:	88 1f       	adc	r24, r24
     bba:	91 50       	subi	r25, 0x01	; 1
     bbc:	50 40       	sbci	r21, 0x00	; 0
     bbe:	a9 f7       	brne	.-22     	; 0xbaa <.L10^B1>

00000bc0 <.L11^B1>:
     bc0:	9e 3f       	cpi	r25, 0xFE	; 254
     bc2:	51 05       	cpc	r21, r1
     bc4:	80 f0       	brcs	.+32     	; 0xbe6 <.L15^B1>
     bc6:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <__fp_inf>

00000bca <.L12^B1>:
     bca:	0c 94 87 05 	jmp	0xb0e	; 0xb0e <__fp_szero>

00000bce <.L13^B1>:
     bce:	5f 3f       	cpi	r21, 0xFF	; 255
     bd0:	e4 f3       	brlt	.-8      	; 0xbca <.L12^B1>
     bd2:	98 3e       	cpi	r25, 0xE8	; 232
     bd4:	d4 f3       	brlt	.-12     	; 0xbca <.L12^B1>

00000bd6 <.L14^B1>:
     bd6:	86 95       	lsr	r24
     bd8:	77 95       	ror	r23
     bda:	67 95       	ror	r22
     bdc:	b7 95       	ror	r27
     bde:	f7 95       	ror	r31
     be0:	e7 95       	ror	r30
     be2:	9f 5f       	subi	r25, 0xFF	; 255
     be4:	c1 f7       	brne	.-16     	; 0xbd6 <.L14^B1>

00000be6 <.L15^B1>:
     be6:	fe 2b       	or	r31, r30
     be8:	88 0f       	add	r24, r24
     bea:	91 1d       	adc	r25, r1
     bec:	96 95       	lsr	r25
     bee:	87 95       	ror	r24
     bf0:	97 f9       	bld	r25, 7
     bf2:	08 95       	ret

00000bf4 <sprintf>:
     bf4:	ae e0       	ldi	r26, 0x0E	; 14
     bf6:	b0 e0       	ldi	r27, 0x00	; 0
     bf8:	e0 e0       	ldi	r30, 0x00	; 0
     bfa:	f6 e0       	ldi	r31, 0x06	; 6
     bfc:	0c 94 cb 08 	jmp	0x1196	; 0x1196 <.Loc.16>

00000c00 <.L1^B1>:
     c00:	86 e0       	ldi	r24, 0x06	; 6
     c02:	8c 83       	std	Y+4, r24	; 0x04
     c04:	2b 89       	ldd	r18, Y+19	; 0x13
     c06:	3c 89       	ldd	r19, Y+20	; 0x14
     c08:	29 83       	std	Y+1, r18	; 0x01
     c0a:	3a 83       	std	Y+2, r19	; 0x02
     c0c:	8f ef       	ldi	r24, 0xFF	; 255
     c0e:	9f e7       	ldi	r25, 0x7F	; 127
     c10:	8d 83       	std	Y+5, r24	; 0x05
     c12:	9e 83       	std	Y+6, r25	; 0x06
     c14:	ae 01       	movw	r20, r28
     c16:	49 5e       	subi	r20, 0xE9	; 233
     c18:	5f 4f       	sbci	r21, 0xFF	; 255
     c1a:	6d 89       	ldd	r22, Y+21	; 0x15
     c1c:	7e 89       	ldd	r23, Y+22	; 0x16
     c1e:	ce 01       	movw	r24, r28
     c20:	01 96       	adiw	r24, 0x01	; 1
     c22:	0e 94 1e 06 	call	0xc3c	; 0xc3c <vfprintf>
     c26:	ef 81       	ldd	r30, Y+7	; 0x07
     c28:	f8 85       	ldd	r31, Y+8	; 0x08
     c2a:	2b 89       	ldd	r18, Y+19	; 0x13
     c2c:	3c 89       	ldd	r19, Y+20	; 0x14
     c2e:	e2 0f       	add	r30, r18
     c30:	f3 1f       	adc	r31, r19
     c32:	10 82       	st	Z, r1
     c34:	2e 96       	adiw	r28, 0x0e	; 14
     c36:	e2 e0       	ldi	r30, 0x02	; 2
     c38:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <.Loc.16>

00000c3c <vfprintf>:
     c3c:	ab e0       	ldi	r26, 0x0B	; 11
     c3e:	b0 e0       	ldi	r27, 0x00	; 0
     c40:	e4 e2       	ldi	r30, 0x24	; 36
     c42:	f6 e0       	ldi	r31, 0x06	; 6
     c44:	0c 94 be 08 	jmp	0x117c	; 0x117c <.Loc.3>

00000c48 <.L1^B1>:
     c48:	6c 01       	movw	r12, r24
     c4a:	7b 01       	movw	r14, r22
     c4c:	8a 01       	movw	r16, r20
     c4e:	fc 01       	movw	r30, r24
     c50:	16 82       	std	Z+6, r1	; 0x06
     c52:	17 82       	std	Z+7, r1	; 0x07
     c54:	83 81       	ldd	r24, Z+3	; 0x03
     c56:	81 ff       	sbrs	r24, 1
     c58:	df c1       	rjmp	.+958    	; 0x1018 <.L80>
     c5a:	3a e0       	ldi	r19, 0x0A	; 10
     c5c:	53 2e       	mov	r5, r19

00000c5e <.L3>:
     c5e:	f6 01       	movw	r30, r12
     c60:	23 81       	ldd	r18, Z+3	; 0x03
     c62:	f7 01       	movw	r30, r14
     c64:	23 fd       	sbrc	r18, 3
     c66:	85 91       	lpm	r24, Z+
     c68:	23 ff       	sbrs	r18, 3
     c6a:	81 91       	ld	r24, Z+
     c6c:	7f 01       	movw	r14, r30
     c6e:	81 15       	cp	r24, r1
     c70:	09 f4       	brne	.+2      	; 0xc74 <L0^A+0x2>

00000c72 <L0^A>:
     c72:	37 c1       	rjmp	.+622    	; 0xee2 <.L4>
     c74:	85 32       	cpi	r24, 0x25	; 37
     c76:	39 f4       	brne	.+14     	; 0xc86 <.L5>
     c78:	23 fd       	sbrc	r18, 3
     c7a:	95 91       	lpm	r25, Z+
     c7c:	23 ff       	sbrs	r18, 3
     c7e:	91 91       	ld	r25, Z+
     c80:	7f 01       	movw	r14, r30
     c82:	95 32       	cpi	r25, 0x25	; 37
     c84:	29 f4       	brne	.+10     	; 0xc90 <.L81>

00000c86 <.L5>:
     c86:	b6 01       	movw	r22, r12
     c88:	90 e0       	ldi	r25, 0x00	; 0
     c8a:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     c8e:	e7 cf       	rjmp	.-50     	; 0xc5e <.L3>

00000c90 <.L81>:
     c90:	30 e0       	ldi	r19, 0x00	; 0
     c92:	91 2c       	mov	r9, r1
     c94:	61 2c       	mov	r6, r1
     c96:	71 2c       	mov	r7, r1

00000c98 <.L6>:
     c98:	f0 e2       	ldi	r31, 0x20	; 32
     c9a:	7f 16       	cp	r7, r31
     c9c:	40 f5       	brcc	.+80     	; 0xcee <.L8>
     c9e:	9b 32       	cpi	r25, 0x2B	; 43
     ca0:	d9 f0       	breq	.+54     	; 0xcd8 <.L9>
     ca2:	58 f4       	brcc	.+22     	; 0xcba <.L10>
     ca4:	90 32       	cpi	r25, 0x20	; 32
     ca6:	d1 f0       	breq	.+52     	; 0xcdc <.L11>
     ca8:	93 32       	cpi	r25, 0x23	; 35
     caa:	f1 f0       	breq	.+60     	; 0xce8 <.L12>

00000cac <.L13>:
     cac:	9e 32       	cpi	r25, 0x2E	; 46
     cae:	91 f5       	brne	.+100    	; 0xd14 <.L19>
     cb0:	76 fc       	sbrc	r7, 6
     cb2:	17 c1       	rjmp	.+558    	; 0xee2 <.L4>
     cb4:	68 94       	set
     cb6:	76 f8       	bld	r7, 6
     cb8:	06 c0       	rjmp	.+12     	; 0xcc6 <.L16>

00000cba <.L10>:
     cba:	9d 32       	cpi	r25, 0x2D	; 45
     cbc:	91 f0       	breq	.+36     	; 0xce2 <.L14>
     cbe:	90 33       	cpi	r25, 0x30	; 48
     cc0:	c1 f4       	brne	.+48     	; 0xcf2 <.L15>
     cc2:	68 94       	set
     cc4:	70 f8       	bld	r7, 0

00000cc6 <.L16>:
     cc6:	f7 01       	movw	r30, r14
     cc8:	23 fd       	sbrc	r18, 3
     cca:	95 91       	lpm	r25, Z+
     ccc:	23 ff       	sbrs	r18, 3
     cce:	91 91       	ld	r25, Z+
     cd0:	7f 01       	movw	r14, r30
     cd2:	91 11       	cpse	r25, r1
     cd4:	e1 cf       	rjmp	.-62     	; 0xc98 <.L6>
     cd6:	28 c0       	rjmp	.+80     	; 0xd28 <.L17>

00000cd8 <.L9>:
     cd8:	68 94       	set
     cda:	71 f8       	bld	r7, 1

00000cdc <.L11>:
     cdc:	68 94       	set
     cde:	72 f8       	bld	r7, 2
     ce0:	f2 cf       	rjmp	.-28     	; 0xcc6 <.L16>

00000ce2 <.L14>:
     ce2:	68 94       	set
     ce4:	73 f8       	bld	r7, 3
     ce6:	ef cf       	rjmp	.-34     	; 0xcc6 <.L16>

00000ce8 <.L12>:
     ce8:	68 94       	set
     cea:	74 f8       	bld	r7, 4
     cec:	ec cf       	rjmp	.-40     	; 0xcc6 <.L16>

00000cee <.L8>:
     cee:	77 fc       	sbrc	r7, 7
     cf0:	1b c0       	rjmp	.+54     	; 0xd28 <.L17>

00000cf2 <.L15>:
     cf2:	80 ed       	ldi	r24, 0xD0	; 208
     cf4:	89 0f       	add	r24, r25
     cf6:	8a 30       	cpi	r24, 0x0A	; 10
     cf8:	c8 f6       	brcc	.-78     	; 0xcac <.L13>
     cfa:	76 fe       	sbrs	r7, 6
     cfc:	05 c0       	rjmp	.+10     	; 0xd08 <.L18>
     cfe:	95 9c       	mul	r9, r5
     d00:	80 0d       	add	r24, r0
     d02:	11 24       	eor	r1, r1
     d04:	98 2e       	mov	r9, r24
     d06:	df cf       	rjmp	.-66     	; 0xcc6 <.L16>

00000d08 <.L18>:
     d08:	65 9c       	mul	r6, r5
     d0a:	80 0d       	add	r24, r0
     d0c:	11 24       	eor	r1, r1
     d0e:	68 2e       	mov	r6, r24
     d10:	7f 2a       	or	r7, r31
     d12:	d9 cf       	rjmp	.-78     	; 0xcc6 <.L16>

00000d14 <.L19>:
     d14:	9c 36       	cpi	r25, 0x6C	; 108
     d16:	19 f4       	brne	.+6      	; 0xd1e <.L20>
     d18:	68 94       	set
     d1a:	77 f8       	bld	r7, 7
     d1c:	d4 cf       	rjmp	.-88     	; 0xcc6 <.L16>

00000d1e <.L20>:
     d1e:	9c 34       	cpi	r25, 0x4C	; 76
     d20:	09 f4       	brne	.+2      	; 0xd24 <L0^A+0x2>

00000d22 <L0^A>:
     d22:	45 c0       	rjmp	.+138    	; 0xdae <.L82>
     d24:	98 36       	cpi	r25, 0x68	; 104
     d26:	79 f2       	breq	.-98     	; 0xcc6 <.L16>

00000d28 <.L17>:
     d28:	89 2f       	mov	r24, r25
     d2a:	8f 7d       	andi	r24, 0xDF	; 223
     d2c:	85 54       	subi	r24, 0x45	; 69
     d2e:	83 30       	cpi	r24, 0x03	; 3
     d30:	08 f4       	brcc	.+2      	; 0xd34 <L0^A+0x2>

00000d32 <L0^A>:
     d32:	3f c0       	rjmp	.+126    	; 0xdb2 <.L21>
     d34:	93 36       	cpi	r25, 0x63	; 99
     d36:	09 f4       	brne	.+2      	; 0xd3a <L0^A+0x2>

00000d38 <L0^A>:
     d38:	61 c0       	rjmp	.+194    	; 0xdfc <.L22>
     d3a:	93 37       	cpi	r25, 0x73	; 115
     d3c:	09 f4       	brne	.+2      	; 0xd40 <L0^A+0x2>

00000d3e <L0^A>:
     d3e:	6b c0       	rjmp	.+214    	; 0xe16 <.L23>
     d40:	93 35       	cpi	r25, 0x53	; 83
     d42:	09 f4       	brne	.+2      	; 0xd46 <L0^A+0x2>

00000d44 <L0^A>:
     d44:	77 c0       	rjmp	.+238    	; 0xe34 <.L24>
     d46:	94 36       	cpi	r25, 0x64	; 100
     d48:	19 f0       	breq	.+6      	; 0xd50 <.L39>
     d4a:	99 36       	cpi	r25, 0x69	; 105
     d4c:	09 f0       	breq	.+2      	; 0xd50 <.L39>

00000d4e <L0^A>:
     d4e:	a4 c0       	rjmp	.+328    	; 0xe98 <.L40>

00000d50 <.L39>:
     d50:	f8 01       	movw	r30, r16
     d52:	77 fe       	sbrs	r7, 7
     d54:	9a c0       	rjmp	.+308    	; 0xe8a <.L41>
     d56:	61 91       	ld	r22, Z+
     d58:	71 91       	ld	r23, Z+
     d5a:	81 91       	ld	r24, Z+
     d5c:	91 91       	ld	r25, Z+

00000d5e <.L126>:
     d5e:	8f 01       	movw	r16, r30
     d60:	27 2d       	mov	r18, r7
     d62:	2f 76       	andi	r18, 0x6F	; 111
     d64:	82 2e       	mov	r8, r18
     d66:	97 ff       	sbrs	r25, 7
     d68:	04 c0       	rjmp	.+8      	; 0xd72 <.L43>
     d6a:	0e 94 b3 08 	call	0x1166	; 0x1166 <__negsi2>
     d6e:	68 94       	set
     d70:	87 f8       	bld	r8, 7

00000d72 <.L43>:
     d72:	2a e0       	ldi	r18, 0x0A	; 10
     d74:	30 e0       	ldi	r19, 0x00	; 0
     d76:	5e 01       	movw	r10, r28
     d78:	4f ef       	ldi	r20, 0xFF	; 255
     d7a:	a4 1a       	sub	r10, r20
     d7c:	b4 0a       	sbc	r11, r20
     d7e:	a5 01       	movw	r20, r10
     d80:	0e 94 55 08 	call	0x10aa	; 0x10aa <__ultoa_invert>
     d84:	78 2e       	mov	r7, r24
     d86:	7a 18       	sub	r7, r10

00000d88 <.L44>:
     d88:	86 fe       	sbrs	r8, 6
     d8a:	cf c0       	rjmp	.+414    	; 0xf2a <.L54>
     d8c:	88 2d       	mov	r24, r8
     d8e:	8e 7f       	andi	r24, 0xFE	; 254
     d90:	79 14       	cp	r7, r9
     d92:	08 f0       	brcs	.+2      	; 0xd96 <L0^A+0x2>

00000d94 <L0^A>:
     d94:	c9 c0       	rjmp	.+402    	; 0xf28 <.L88>
     d96:	84 fe       	sbrs	r8, 4
     d98:	1d c1       	rjmp	.+570    	; 0xfd4 <.L89>
     d9a:	82 fc       	sbrc	r8, 2
     d9c:	11 c1       	rjmp	.+546    	; 0xfc0 <.L90>
     d9e:	2e ee       	ldi	r18, 0xEE	; 238
     da0:	82 22       	and	r8, r18
     da2:	b9 2c       	mov	r11, r9

00000da4 <.L55>:
     da4:	88 2d       	mov	r24, r8
     da6:	86 78       	andi	r24, 0x86	; 134
     da8:	09 f4       	brne	.+2      	; 0xdac <L0^A+0x2>

00000daa <L0^A>:
     daa:	cb c0       	rjmp	.+406    	; 0xf42 <.L58>
     dac:	0e c1       	rjmp	.+540    	; 0xfca <.L128>

00000dae <.L82>:
     dae:	31 e0       	ldi	r19, 0x01	; 1
     db0:	8a cf       	rjmp	.-236    	; 0xcc6 <.L16>

00000db2 <.L21>:
     db2:	31 15       	cp	r19, r1
     db4:	01 f1       	breq	.+64     	; 0xdf6 <.L26>
     db6:	08 5f       	subi	r16, 0xF8	; 248
     db8:	1f 4f       	sbci	r17, 0xFF	; 255

00000dba <.L27>:
     dba:	8f e3       	ldi	r24, 0x3F	; 63
     dbc:	89 83       	std	Y+1, r24	; 0x01
     dbe:	21 e0       	ldi	r18, 0x01	; 1
     dc0:	82 2e       	mov	r8, r18
     dc2:	91 2c       	mov	r9, r1
     dc4:	5e 01       	movw	r10, r28
     dc6:	2f ef       	ldi	r18, 0xFF	; 255
     dc8:	a2 1a       	sub	r10, r18
     dca:	b2 0a       	sbc	r11, r18

00000dcc <.L28>:
     dcc:	e8 94       	clt
     dce:	77 f8       	bld	r7, 7

00000dd0 <.L30>:
     dd0:	73 fc       	sbrc	r7, 3
     dd2:	03 c0       	rjmp	.+6      	; 0xdda <.L36>

00000dd4 <.L32>:
     dd4:	86 14       	cp	r8, r6
     dd6:	91 04       	cpc	r9, r1
     dd8:	f0 f1       	brcs	.+124    	; 0xe56 <.L34>

00000dda <.L36>:
     dda:	81 14       	cp	r8, r1
     ddc:	91 04       	cpc	r9, r1
     dde:	09 f0       	breq	.+2      	; 0xde2 <.L77>

00000de0 <L0^A>:
     de0:	41 c0       	rjmp	.+130    	; 0xe64 <.L37>

00000de2 <.L77>:
     de2:	61 14       	cp	r6, r1
     de4:	09 f4       	brne	.+2      	; 0xde8 <L0^A+0x2>

00000de6 <L0^A>:
     de6:	3b cf       	rjmp	.-394    	; 0xc5e <.L3>
     de8:	b6 01       	movw	r22, r12
     dea:	80 e2       	ldi	r24, 0x20	; 32
     dec:	90 e0       	ldi	r25, 0x00	; 0
     dee:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     df2:	6a 94       	dec	r6
     df4:	f6 cf       	rjmp	.-20     	; 0xde2 <.L77>

00000df6 <.L26>:
     df6:	0c 5f       	subi	r16, 0xFC	; 252
     df8:	1f 4f       	sbci	r17, 0xFF	; 255
     dfa:	df cf       	rjmp	.-66     	; 0xdba <.L27>

00000dfc <.L22>:
     dfc:	f8 01       	movw	r30, r16
     dfe:	80 81       	ld	r24, Z
     e00:	89 83       	std	Y+1, r24	; 0x01
     e02:	0e 5f       	subi	r16, 0xFE	; 254
     e04:	1f 4f       	sbci	r17, 0xFF	; 255
     e06:	91 e0       	ldi	r25, 0x01	; 1
     e08:	89 2e       	mov	r8, r25
     e0a:	91 2c       	mov	r9, r1
     e0c:	5e 01       	movw	r10, r28
     e0e:	ff ef       	ldi	r31, 0xFF	; 255
     e10:	af 1a       	sub	r10, r31
     e12:	bf 0a       	sbc	r11, r31
     e14:	db cf       	rjmp	.-74     	; 0xdcc <.L28>

00000e16 <.L23>:
     e16:	f8 01       	movw	r30, r16
     e18:	a1 90       	ld	r10, Z+
     e1a:	b1 90       	ld	r11, Z+
     e1c:	8f 01       	movw	r16, r30
     e1e:	69 2d       	mov	r22, r9
     e20:	70 e0       	ldi	r23, 0x00	; 0
     e22:	76 fc       	sbrc	r7, 6
     e24:	02 c0       	rjmp	.+4      	; 0xe2a <.L29>
     e26:	6f ef       	ldi	r22, 0xFF	; 255
     e28:	7f ef       	ldi	r23, 0xFF	; 255

00000e2a <.L29>:
     e2a:	c5 01       	movw	r24, r10
     e2c:	0e 94 1a 08 	call	0x1034	; 0x1034 <strnlen>
     e30:	4c 01       	movw	r8, r24
     e32:	cc cf       	rjmp	.-104    	; 0xdcc <.L28>

00000e34 <.L24>:
     e34:	f8 01       	movw	r30, r16
     e36:	a1 90       	ld	r10, Z+
     e38:	b1 90       	ld	r11, Z+
     e3a:	8f 01       	movw	r16, r30
     e3c:	69 2d       	mov	r22, r9
     e3e:	70 e0       	ldi	r23, 0x00	; 0
     e40:	76 fc       	sbrc	r7, 6
     e42:	02 c0       	rjmp	.+4      	; 0xe48 <.L31>
     e44:	6f ef       	ldi	r22, 0xFF	; 255
     e46:	7f ef       	ldi	r23, 0xFF	; 255

00000e48 <.L31>:
     e48:	c5 01       	movw	r24, r10
     e4a:	0e 94 0f 08 	call	0x101e	; 0x101e <strnlen_P>
     e4e:	4c 01       	movw	r8, r24
     e50:	68 94       	set
     e52:	77 f8       	bld	r7, 7
     e54:	bd cf       	rjmp	.-134    	; 0xdd0 <.L30>

00000e56 <.L34>:
     e56:	b6 01       	movw	r22, r12
     e58:	80 e2       	ldi	r24, 0x20	; 32
     e5a:	90 e0       	ldi	r25, 0x00	; 0
     e5c:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     e60:	6a 94       	dec	r6
     e62:	b8 cf       	rjmp	.-144    	; 0xdd4 <.L32>

00000e64 <.L37>:
     e64:	f5 01       	movw	r30, r10
     e66:	77 fc       	sbrc	r7, 7
     e68:	85 91       	lpm	r24, Z+
     e6a:	77 fe       	sbrs	r7, 7
     e6c:	81 91       	ld	r24, Z+
     e6e:	5f 01       	movw	r10, r30
     e70:	b6 01       	movw	r22, r12
     e72:	90 e0       	ldi	r25, 0x00	; 0
     e74:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     e78:	81 e0       	ldi	r24, 0x01	; 1
     e7a:	61 10       	cpse	r6, r1
     e7c:	01 c0       	rjmp	.+2      	; 0xe80 <.L35>
     e7e:	80 e0       	ldi	r24, 0x00	; 0

00000e80 <.L35>:
     e80:	68 1a       	sub	r6, r24
     e82:	f1 e0       	ldi	r31, 0x01	; 1
     e84:	8f 1a       	sub	r8, r31
     e86:	91 08       	sbc	r9, r1
     e88:	a8 cf       	rjmp	.-176    	; 0xdda <.L36>

00000e8a <.L41>:
     e8a:	61 91       	ld	r22, Z+
     e8c:	71 91       	ld	r23, Z+
     e8e:	87 2f       	mov	r24, r23
     e90:	88 0f       	add	r24, r24
     e92:	88 0b       	sbc	r24, r24
     e94:	98 2f       	mov	r25, r24
     e96:	63 cf       	rjmp	.-314    	; 0xd5e <.L126>

00000e98 <.L40>:
     e98:	95 37       	cpi	r25, 0x75	; 117
     e9a:	c9 f4       	brne	.+50     	; 0xece <.L45>
     e9c:	87 2c       	mov	r8, r7
     e9e:	e8 94       	clt
     ea0:	84 f8       	bld	r8, 4
     ea2:	2a e0       	ldi	r18, 0x0A	; 10
     ea4:	30 e0       	ldi	r19, 0x00	; 0

00000ea6 <.L46>:
     ea6:	f8 01       	movw	r30, r16
     ea8:	87 fe       	sbrs	r8, 7
     eaa:	39 c0       	rjmp	.+114    	; 0xf1e <.L52>
     eac:	61 91       	ld	r22, Z+
     eae:	71 91       	ld	r23, Z+
     eb0:	81 91       	ld	r24, Z+
     eb2:	91 91       	ld	r25, Z+

00000eb4 <.L127>:
     eb4:	8f 01       	movw	r16, r30
     eb6:	5e 01       	movw	r10, r28
     eb8:	ff ef       	ldi	r31, 0xFF	; 255
     eba:	af 1a       	sub	r10, r31
     ebc:	bf 0a       	sbc	r11, r31
     ebe:	a5 01       	movw	r20, r10
     ec0:	0e 94 55 08 	call	0x10aa	; 0x10aa <__ultoa_invert>
     ec4:	78 2e       	mov	r7, r24
     ec6:	7a 18       	sub	r7, r10
     ec8:	e8 94       	clt
     eca:	87 f8       	bld	r8, 7
     ecc:	5d cf       	rjmp	.-326    	; 0xd88 <.L44>

00000ece <.L45>:
     ece:	87 2d       	mov	r24, r7
     ed0:	89 7f       	andi	r24, 0xF9	; 249
     ed2:	88 2e       	mov	r8, r24
     ed4:	90 37       	cpi	r25, 0x70	; 112
     ed6:	99 f0       	breq	.+38     	; 0xefe <.L47>
     ed8:	58 f4       	brcc	.+22     	; 0xef0 <.L48>
     eda:	98 35       	cpi	r25, 0x58	; 88
     edc:	a9 f0       	breq	.+42     	; 0xf08 <.L49>
     ede:	9f 36       	cpi	r25, 0x6F	; 111
     ee0:	d9 f0       	breq	.+54     	; 0xf18 <.L85>

00000ee2 <.L4>:
     ee2:	f6 01       	movw	r30, r12
     ee4:	86 81       	ldd	r24, Z+6	; 0x06
     ee6:	97 81       	ldd	r25, Z+7	; 0x07

00000ee8 <.L1>:
     ee8:	2b 96       	adiw	r28, 0x0b	; 11
     eea:	ef e0       	ldi	r30, 0x0F	; 15
     eec:	0c 94 da 08 	jmp	0x11b4	; 0x11b4 <.Loc.3>

00000ef0 <.L48>:
     ef0:	98 37       	cpi	r25, 0x78	; 120
     ef2:	b9 f7       	brne	.-18     	; 0xee2 <.L4>
     ef4:	74 fc       	sbrc	r7, 4
     ef6:	05 c0       	rjmp	.+10     	; 0xf02 <.L51>

00000ef8 <.L86>:
     ef8:	20 e1       	ldi	r18, 0x10	; 16
     efa:	30 e0       	ldi	r19, 0x00	; 0
     efc:	d4 cf       	rjmp	.-88     	; 0xea6 <.L46>

00000efe <.L47>:
     efe:	68 94       	set
     f00:	84 f8       	bld	r8, 4

00000f02 <.L51>:
     f02:	68 94       	set
     f04:	82 f8       	bld	r8, 2
     f06:	f8 cf       	rjmp	.-16     	; 0xef8 <.L86>

00000f08 <.L49>:
     f08:	74 fe       	sbrs	r7, 4
     f0a:	03 c0       	rjmp	.+6      	; 0xf12 <.L87>
     f0c:	e7 2d       	mov	r30, r7
     f0e:	e6 60       	ori	r30, 0x06	; 6
     f10:	8e 2e       	mov	r8, r30

00000f12 <.L87>:
     f12:	20 e1       	ldi	r18, 0x10	; 16
     f14:	32 e0       	ldi	r19, 0x02	; 2
     f16:	c7 cf       	rjmp	.-114    	; 0xea6 <.L46>

00000f18 <.L85>:
     f18:	28 e0       	ldi	r18, 0x08	; 8
     f1a:	30 e0       	ldi	r19, 0x00	; 0
     f1c:	c4 cf       	rjmp	.-120    	; 0xea6 <.L46>

00000f1e <.L52>:
     f1e:	61 91       	ld	r22, Z+
     f20:	71 91       	ld	r23, Z+
     f22:	80 e0       	ldi	r24, 0x00	; 0
     f24:	90 e0       	ldi	r25, 0x00	; 0
     f26:	c6 cf       	rjmp	.-116    	; 0xeb4 <.L127>

00000f28 <.L88>:
     f28:	88 2e       	mov	r8, r24

00000f2a <.L54>:
     f2a:	b7 2c       	mov	r11, r7
     f2c:	84 fe       	sbrs	r8, 4
     f2e:	3a cf       	rjmp	.-396    	; 0xda4 <.L55>

00000f30 <.L56>:
     f30:	fe 01       	movw	r30, r28
     f32:	e7 0d       	add	r30, r7
     f34:	f1 1d       	adc	r31, r1
     f36:	80 81       	ld	r24, Z
     f38:	80 33       	cpi	r24, 0x30	; 48
     f3a:	09 f0       	breq	.+2      	; 0xf3e <L0^A+0x2>

00000f3c <L0^A>:
     f3c:	44 c0       	rjmp	.+136    	; 0xfc6 <.L57>
     f3e:	49 ee       	ldi	r20, 0xE9	; 233
     f40:	84 22       	and	r8, r20

00000f42 <.L58>:
     f42:	83 fc       	sbrc	r8, 3
     f44:	0e c0       	rjmp	.+28     	; 0xf62 <.L60>
     f46:	80 fe       	sbrs	r8, 0
     f48:	51 c0       	rjmp	.+162    	; 0xfec <.L92>
     f4a:	97 2c       	mov	r9, r7
     f4c:	b6 14       	cp	r11, r6
     f4e:	18 f4       	brcc	.+6      	; 0xf56 <.L79>
     f50:	96 0c       	add	r9, r6
     f52:	9b 18       	sub	r9, r11
     f54:	b6 2c       	mov	r11, r6

00000f56 <.L79>:
     f56:	86 2d       	mov	r24, r6
     f58:	8b 19       	sub	r24, r11
     f5a:	6b 14       	cp	r6, r11
     f5c:	08 f4       	brcc	.+2      	; 0xf60 <.L65>
     f5e:	80 e0       	ldi	r24, 0x00	; 0

00000f60 <.L65>:
     f60:	b8 0e       	add	r11, r24

00000f62 <.L60>:
     f62:	b6 14       	cp	r11, r6
     f64:	08 f0       	brcs	.+2      	; 0xf68 <L0^A+0x2>

00000f66 <L0^A>:
     f66:	44 c0       	rjmp	.+136    	; 0xff0 <.L94>
     f68:	6b 18       	sub	r6, r11

00000f6a <.L67>:
     f6a:	84 fe       	sbrs	r8, 4
     f6c:	43 c0       	rjmp	.+134    	; 0xff4 <.L68>
     f6e:	b6 01       	movw	r22, r12
     f70:	80 e3       	ldi	r24, 0x30	; 48
     f72:	90 e0       	ldi	r25, 0x00	; 0
     f74:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     f78:	82 fe       	sbrs	r8, 2
     f7a:	09 c0       	rjmp	.+18     	; 0xf8e <.L74>
     f7c:	88 e5       	ldi	r24, 0x58	; 88
     f7e:	90 e0       	ldi	r25, 0x00	; 0
     f80:	81 fc       	sbrc	r8, 1
     f82:	02 c0       	rjmp	.+4      	; 0xf88 <.L70>
     f84:	88 e7       	ldi	r24, 0x78	; 120
     f86:	90 e0       	ldi	r25, 0x00	; 0

00000f88 <.L70>:
     f88:	b6 01       	movw	r22, r12

00000f8a <.L129>:
     f8a:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>

00000f8e <.L74>:
     f8e:	79 14       	cp	r7, r9
     f90:	e0 f1       	brcs	.+120    	; 0x100a <.L75>
     f92:	5e 01       	movw	r10, r28
     f94:	8f ef       	ldi	r24, 0xFF	; 255
     f96:	a8 1a       	sub	r10, r24
     f98:	b8 0a       	sbc	r11, r24
     f9a:	7a 94       	dec	r7
     f9c:	82 e0       	ldi	r24, 0x02	; 2
     f9e:	88 2e       	mov	r8, r24
     fa0:	91 2c       	mov	r9, r1
     fa2:	8c 0e       	add	r8, r28
     fa4:	9d 1e       	adc	r9, r29
     fa6:	87 0c       	add	r8, r7
     fa8:	91 1c       	adc	r9, r1

00000faa <.L76>:
     faa:	f4 01       	movw	r30, r8
     fac:	82 91       	ld	r24, -Z
     fae:	4f 01       	movw	r8, r30
     fb0:	b6 01       	movw	r22, r12
     fb2:	90 e0       	ldi	r25, 0x00	; 0
     fb4:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     fb8:	8a 14       	cp	r8, r10
     fba:	9b 04       	cpc	r9, r11
     fbc:	b1 f7       	brne	.-20     	; 0xfaa <.L76>
     fbe:	11 cf       	rjmp	.-478    	; 0xde2 <.L77>

00000fc0 <.L90>:
     fc0:	b9 2c       	mov	r11, r9
     fc2:	88 2e       	mov	r8, r24
     fc4:	b5 cf       	rjmp	.-150    	; 0xf30 <.L56>

00000fc6 <.L57>:
     fc6:	82 fc       	sbrc	r8, 2
     fc8:	02 c0       	rjmp	.+4      	; 0xfce <.L59>

00000fca <.L128>:
     fca:	b3 94       	inc	r11
     fcc:	ba cf       	rjmp	.-140    	; 0xf42 <.L58>

00000fce <.L59>:
     fce:	b3 94       	inc	r11
     fd0:	b3 94       	inc	r11
     fd2:	b7 cf       	rjmp	.-146    	; 0xf42 <.L58>

00000fd4 <.L89>:
     fd4:	b9 2c       	mov	r11, r9
     fd6:	88 2e       	mov	r8, r24
     fd8:	e5 ce       	rjmp	.-566    	; 0xda4 <.L55>

00000fda <.L63>:
     fda:	b6 01       	movw	r22, r12
     fdc:	80 e2       	ldi	r24, 0x20	; 32
     fde:	90 e0       	ldi	r25, 0x00	; 0
     fe0:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
     fe4:	a3 94       	inc	r10

00000fe6 <.L61>:
     fe6:	a6 14       	cp	r10, r6
     fe8:	c0 f3       	brcs	.-16     	; 0xfda <.L63>
     fea:	b5 cf       	rjmp	.-150    	; 0xf56 <.L79>

00000fec <.L92>:
     fec:	ab 2c       	mov	r10, r11
     fee:	fb cf       	rjmp	.-10     	; 0xfe6 <.L61>

00000ff0 <.L94>:
     ff0:	61 2c       	mov	r6, r1
     ff2:	bb cf       	rjmp	.-138    	; 0xf6a <.L67>

00000ff4 <.L68>:
     ff4:	88 2d       	mov	r24, r8
     ff6:	86 78       	andi	r24, 0x86	; 134
     ff8:	51 f2       	breq	.-108    	; 0xf8e <.L74>
     ffa:	80 e2       	ldi	r24, 0x20	; 32
     ffc:	81 fc       	sbrc	r8, 1
     ffe:	8b e2       	ldi	r24, 0x2B	; 43
    1000:	87 fc       	sbrc	r8, 7
    1002:	8d e2       	ldi	r24, 0x2D	; 45
    1004:	b6 01       	movw	r22, r12
    1006:	90 e0       	ldi	r25, 0x00	; 0
    1008:	c0 cf       	rjmp	.-128    	; 0xf8a <.L129>

0000100a <.L75>:
    100a:	b6 01       	movw	r22, r12
    100c:	80 e3       	ldi	r24, 0x30	; 48
    100e:	90 e0       	ldi	r25, 0x00	; 0
    1010:	0e 94 25 08 	call	0x104a	; 0x104a <fputc>
    1014:	9a 94       	dec	r9
    1016:	bb cf       	rjmp	.-138    	; 0xf8e <.L74>

00001018 <.L80>:
    1018:	8f ef       	ldi	r24, 0xFF	; 255
    101a:	9f ef       	ldi	r25, 0xFF	; 255
    101c:	65 cf       	rjmp	.-310    	; 0xee8 <.L1>

0000101e <strnlen_P>:
    101e:	fc 01       	movw	r30, r24

00001020 <.L_strnlen_P_loop>:
    1020:	05 90       	lpm	r0, Z+
    1022:	61 50       	subi	r22, 0x01	; 1
    1024:	70 40       	sbci	r23, 0x00	; 0
    1026:	01 10       	cpse	r0, r1
    1028:	d8 f7       	brcc	.-10     	; 0x1020 <.L_strnlen_P_loop>
    102a:	80 95       	com	r24
    102c:	90 95       	com	r25
    102e:	8e 0f       	add	r24, r30
    1030:	9f 1f       	adc	r25, r31
    1032:	08 95       	ret

00001034 <strnlen>:
    1034:	fc 01       	movw	r30, r24

00001036 <.L_strnlen_loop>:
    1036:	61 50       	subi	r22, 0x01	; 1
    1038:	70 40       	sbci	r23, 0x00	; 0
    103a:	01 90       	ld	r0, Z+
    103c:	01 10       	cpse	r0, r1
    103e:	d8 f7       	brcc	.-10     	; 0x1036 <.L_strnlen_loop>
    1040:	80 95       	com	r24
    1042:	90 95       	com	r25
    1044:	8e 0f       	add	r24, r30
    1046:	9f 1f       	adc	r25, r31
    1048:	08 95       	ret

0000104a <fputc>:
    104a:	0f 93       	push	r16
    104c:	1f 93       	push	r17
    104e:	cf 93       	push	r28
    1050:	df 93       	push	r29
    1052:	18 2f       	mov	r17, r24
    1054:	09 2f       	mov	r16, r25
    1056:	eb 01       	movw	r28, r22
    1058:	8b 81       	ldd	r24, Y+3	; 0x03
    105a:	81 fd       	sbrc	r24, 1
    105c:	09 c0       	rjmp	.+18     	; 0x1070 <.L2>

0000105e <.L7>:
    105e:	0f ef       	ldi	r16, 0xFF	; 255
    1060:	1f ef       	ldi	r17, 0xFF	; 255

00001062 <.L3>:
    1062:	81 2f       	mov	r24, r17
    1064:	90 2f       	mov	r25, r16
    1066:	df 91       	pop	r29
    1068:	cf 91       	pop	r28
    106a:	1f 91       	pop	r17
    106c:	0f 91       	pop	r16
    106e:	08 95       	ret

00001070 <.L2>:
    1070:	82 ff       	sbrs	r24, 2
    1072:	14 c0       	rjmp	.+40     	; 0x109c <.L4>
    1074:	2e 81       	ldd	r18, Y+6	; 0x06
    1076:	3f 81       	ldd	r19, Y+7	; 0x07
    1078:	8c 81       	ldd	r24, Y+4	; 0x04
    107a:	9d 81       	ldd	r25, Y+5	; 0x05
    107c:	28 17       	cp	r18, r24
    107e:	39 07       	cpc	r19, r25
    1080:	3c f4       	brge	.+14     	; 0x1090 <.L8>
    1082:	e8 81       	ld	r30, Y
    1084:	f9 81       	ldd	r31, Y+1	; 0x01
    1086:	cf 01       	movw	r24, r30
    1088:	01 96       	adiw	r24, 0x01	; 1
    108a:	88 83       	st	Y, r24
    108c:	99 83       	std	Y+1, r25	; 0x01
    108e:	10 83       	st	Z, r17

00001090 <.L8>:
    1090:	8e 81       	ldd	r24, Y+6	; 0x06
    1092:	9f 81       	ldd	r25, Y+7	; 0x07
    1094:	01 96       	adiw	r24, 0x01	; 1
    1096:	8e 83       	std	Y+6, r24	; 0x06
    1098:	9f 83       	std	Y+7, r25	; 0x07
    109a:	e3 cf       	rjmp	.-58     	; 0x1062 <.L3>

0000109c <.L4>:
    109c:	e8 85       	ldd	r30, Y+8	; 0x08
    109e:	f9 85       	ldd	r31, Y+9	; 0x09
    10a0:	81 2f       	mov	r24, r17
    10a2:	09 95       	icall
    10a4:	89 2b       	or	r24, r25
    10a6:	a1 f3       	breq	.-24     	; 0x1090 <.L8>
    10a8:	da cf       	rjmp	.-76     	; 0x105e <.L7>

000010aa <__ultoa_invert>:
    10aa:	fa 01       	movw	r30, r20
    10ac:	aa 27       	eor	r26, r26
    10ae:	28 30       	cpi	r18, 0x08	; 8
    10b0:	51 f1       	breq	.+84     	; 0x1106 <.L_oct>
    10b2:	20 31       	cpi	r18, 0x10	; 16
    10b4:	81 f1       	breq	.+96     	; 0x1116 <.L_hex>
    10b6:	e8 94       	clt

000010b8 <.L_dec_loop>:
    10b8:	6f 93       	push	r22
    10ba:	6e 7f       	andi	r22, 0xFE	; 254
    10bc:	6e 5f       	subi	r22, 0xFE	; 254
    10be:	7f 4f       	sbci	r23, 0xFF	; 255
    10c0:	8f 4f       	sbci	r24, 0xFF	; 255
    10c2:	9f 4f       	sbci	r25, 0xFF	; 255
    10c4:	af 4f       	sbci	r26, 0xFF	; 255
    10c6:	b1 e0       	ldi	r27, 0x01	; 1
    10c8:	3e d0       	rcall	.+124    	; 0x1146 <.L_div_add>
    10ca:	b4 e0       	ldi	r27, 0x04	; 4
    10cc:	3c d0       	rcall	.+120    	; 0x1146 <.L_div_add>
    10ce:	67 0f       	add	r22, r23
    10d0:	78 1f       	adc	r23, r24
    10d2:	89 1f       	adc	r24, r25
    10d4:	9a 1f       	adc	r25, r26
    10d6:	a1 1d       	adc	r26, r1
    10d8:	68 0f       	add	r22, r24
    10da:	79 1f       	adc	r23, r25
    10dc:	8a 1f       	adc	r24, r26
    10de:	91 1d       	adc	r25, r1
    10e0:	a1 1d       	adc	r26, r1
    10e2:	6a 0f       	add	r22, r26
    10e4:	71 1d       	adc	r23, r1
    10e6:	81 1d       	adc	r24, r1
    10e8:	91 1d       	adc	r25, r1
    10ea:	a1 1d       	adc	r26, r1
    10ec:	20 d0       	rcall	.+64     	; 0x112e <.L_lsr_4>
    10ee:	09 f4       	brne	.+2      	; 0x10f2 <.L1^B1>
    10f0:	68 94       	set

000010f2 <.L1^B1>:
    10f2:	3f 91       	pop	r19
    10f4:	2a e0       	ldi	r18, 0x0A	; 10
    10f6:	26 9f       	mul	r18, r22
    10f8:	11 24       	eor	r1, r1
    10fa:	30 19       	sub	r19, r0
    10fc:	30 5d       	subi	r19, 0xD0	; 208
    10fe:	31 93       	st	Z+, r19
    1100:	de f6       	brtc	.-74     	; 0x10b8 <.L_dec_loop>

00001102 <.L_eos>:
    1102:	cf 01       	movw	r24, r30
    1104:	08 95       	ret

00001106 <.L_oct>:
    1106:	46 2f       	mov	r20, r22
    1108:	47 70       	andi	r20, 0x07	; 7
    110a:	40 5d       	subi	r20, 0xD0	; 208
    110c:	41 93       	st	Z+, r20
    110e:	b3 e0       	ldi	r27, 0x03	; 3
    1110:	0f d0       	rcall	.+30     	; 0x1130 <.L_lsr>
    1112:	c9 f7       	brne	.-14     	; 0x1106 <.L_oct>
    1114:	f6 cf       	rjmp	.-20     	; 0x1102 <.L_eos>

00001116 <.L_hex>:
    1116:	46 2f       	mov	r20, r22
    1118:	4f 70       	andi	r20, 0x0F	; 15
    111a:	40 5d       	subi	r20, 0xD0	; 208
    111c:	4a 33       	cpi	r20, 0x3A	; 58
    111e:	18 f0       	brcs	.+6      	; 0x1126 <.L3^B1>
    1120:	49 5d       	subi	r20, 0xD9	; 217
    1122:	31 fd       	sbrc	r19, 1
    1124:	40 52       	subi	r20, 0x20	; 32

00001126 <.L3^B1>:
    1126:	41 93       	st	Z+, r20
    1128:	02 d0       	rcall	.+4      	; 0x112e <.L_lsr_4>
    112a:	a9 f7       	brne	.-22     	; 0x1116 <.L_hex>
    112c:	ea cf       	rjmp	.-44     	; 0x1102 <.L_eos>

0000112e <.L_lsr_4>:
    112e:	b4 e0       	ldi	r27, 0x04	; 4

00001130 <.L_lsr>:
    1130:	a6 95       	lsr	r26
    1132:	97 95       	ror	r25
    1134:	87 95       	ror	r24
    1136:	77 95       	ror	r23
    1138:	67 95       	ror	r22
    113a:	ba 95       	dec	r27
    113c:	c9 f7       	brne	.-14     	; 0x1130 <.L_lsr>
    113e:	00 97       	sbiw	r24, 0x00	; 0
    1140:	61 05       	cpc	r22, r1
    1142:	71 05       	cpc	r23, r1
    1144:	08 95       	ret

00001146 <.L_div_add>:
    1146:	9b 01       	movw	r18, r22
    1148:	ac 01       	movw	r20, r24
    114a:	0a 2e       	mov	r0, r26

0000114c <.L7^B1>:
    114c:	06 94       	lsr	r0
    114e:	57 95       	ror	r21
    1150:	47 95       	ror	r20
    1152:	37 95       	ror	r19
    1154:	27 95       	ror	r18
    1156:	ba 95       	dec	r27
    1158:	c9 f7       	brne	.-14     	; 0x114c <.L7^B1>
    115a:	62 0f       	add	r22, r18
    115c:	73 1f       	adc	r23, r19
    115e:	84 1f       	adc	r24, r20
    1160:	95 1f       	adc	r25, r21
    1162:	a0 1d       	adc	r26, r0
    1164:	08 95       	ret

00001166 <__negsi2>:
    1166:	90 95       	com	r25
    1168:	80 95       	com	r24
    116a:	70 95       	com	r23
    116c:	61 95       	neg	r22
    116e:	7f 4f       	sbci	r23, 0xFF	; 255
    1170:	8f 4f       	sbci	r24, 0xFF	; 255
    1172:	9f 4f       	sbci	r25, 0xFF	; 255

00001174 <.Loc.1>:
    1174:	08 95       	ret

00001176 <__prologue_saves__>:
    1176:	2f 92       	push	r2

00001178 <.Loc.1>:
    1178:	3f 92       	push	r3

0000117a <.Loc.2>:
    117a:	4f 92       	push	r4

0000117c <.Loc.3>:
    117c:	5f 92       	push	r5

0000117e <.Loc.4>:
    117e:	6f 92       	push	r6

00001180 <.Loc.5>:
    1180:	7f 92       	push	r7

00001182 <.Loc.6>:
    1182:	8f 92       	push	r8

00001184 <.Loc.7>:
    1184:	9f 92       	push	r9

00001186 <.Loc.8>:
    1186:	af 92       	push	r10

00001188 <.Loc.9>:
    1188:	bf 92       	push	r11

0000118a <.Loc.10>:
    118a:	cf 92       	push	r12

0000118c <.Loc.11>:
    118c:	df 92       	push	r13

0000118e <.Loc.12>:
    118e:	ef 92       	push	r14

00001190 <.Loc.13>:
    1190:	ff 92       	push	r15

00001192 <.Loc.14>:
    1192:	0f 93       	push	r16

00001194 <.Loc.15>:
    1194:	1f 93       	push	r17

00001196 <.Loc.16>:
    1196:	cf 93       	push	r28

00001198 <.Loc.17>:
    1198:	df 93       	push	r29

0000119a <.Loc.18>:
    119a:	cd b7       	in	r28, 0x3d	; 61

0000119c <.Loc.19>:
    119c:	de b7       	in	r29, 0x3e	; 62

0000119e <.Loc.20>:
    119e:	ca 1b       	sub	r28, r26

000011a0 <.Loc.21>:
    11a0:	db 0b       	sbc	r29, r27

000011a2 <.Loc.22>:
    11a2:	0f b6       	in	r0, 0x3f	; 63

000011a4 <.Loc.23>:
    11a4:	f8 94       	cli

000011a6 <.Loc.24>:
    11a6:	de bf       	out	0x3e, r29	; 62

000011a8 <.Loc.25>:
    11a8:	0f be       	out	0x3f, r0	; 63

000011aa <.Loc.26>:
    11aa:	cd bf       	out	0x3d, r28	; 61

000011ac <.Loc.27>:
    11ac:	09 94       	ijmp

000011ae <__epilogue_restores__>:
    11ae:	2a 88       	ldd	r2, Y+18	; 0x12

000011b0 <.Loc.1>:
    11b0:	39 88       	ldd	r3, Y+17	; 0x11

000011b2 <.Loc.2>:
    11b2:	48 88       	ldd	r4, Y+16	; 0x10

000011b4 <.Loc.3>:
    11b4:	5f 84       	ldd	r5, Y+15	; 0x0f

000011b6 <.Loc.4>:
    11b6:	6e 84       	ldd	r6, Y+14	; 0x0e

000011b8 <.Loc.5>:
    11b8:	7d 84       	ldd	r7, Y+13	; 0x0d

000011ba <.Loc.6>:
    11ba:	8c 84       	ldd	r8, Y+12	; 0x0c

000011bc <.Loc.7>:
    11bc:	9b 84       	ldd	r9, Y+11	; 0x0b

000011be <.Loc.8>:
    11be:	aa 84       	ldd	r10, Y+10	; 0x0a

000011c0 <.Loc.9>:
    11c0:	b9 84       	ldd	r11, Y+9	; 0x09

000011c2 <.Loc.10>:
    11c2:	c8 84       	ldd	r12, Y+8	; 0x08

000011c4 <.Loc.11>:
    11c4:	df 80       	ldd	r13, Y+7	; 0x07

000011c6 <.Loc.12>:
    11c6:	ee 80       	ldd	r14, Y+6	; 0x06

000011c8 <.Loc.13>:
    11c8:	fd 80       	ldd	r15, Y+5	; 0x05

000011ca <.Loc.14>:
    11ca:	0c 81       	ldd	r16, Y+4	; 0x04

000011cc <.Loc.15>:
    11cc:	1b 81       	ldd	r17, Y+3	; 0x03

000011ce <.Loc.16>:
    11ce:	aa 81       	ldd	r26, Y+2	; 0x02

000011d0 <.Loc.17>:
    11d0:	b9 81       	ldd	r27, Y+1	; 0x01

000011d2 <.Loc.18>:
    11d2:	ce 0f       	add	r28, r30

000011d4 <.Loc.19>:
    11d4:	d1 1d       	adc	r29, r1

000011d6 <.Loc.20>:
    11d6:	0f b6       	in	r0, 0x3f	; 63

000011d8 <.Loc.21>:
    11d8:	f8 94       	cli

000011da <.Loc.22>:
    11da:	de bf       	out	0x3e, r29	; 62

000011dc <.Loc.23>:
    11dc:	0f be       	out	0x3f, r0	; 63

000011de <.Loc.24>:
    11de:	cd bf       	out	0x3d, r28	; 61

000011e0 <.Loc.25>:
    11e0:	ed 01       	movw	r28, r26

000011e2 <.Loc.26>:
    11e2:	08 95       	ret

000011e4 <_exit>:
    11e4:	f8 94       	cli

000011e6 <__stop_program>:
    11e6:	ff cf       	rjmp	.-2      	; 0x11e6 <__stop_program>
