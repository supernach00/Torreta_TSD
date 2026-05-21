
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
       4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
       8:	0c 94 5e 03 	jmp	0x6bc	; 0x6bc <__vector_2>
       c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      14:	0c 94 5a 03 	jmp	0x6b4	; 0x6b4 <__vector_5>
      18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      1c:	0c 94 59 03 	jmp	0x6b2	; 0x6b2 <__vector_7>
      20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      38:	0c 94 5f 03 	jmp	0x6be	; 0x6be <__vector_14>
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
      7a:	e8 e3       	ldi	r30, 0x38	; 56

0000007c <.Loc.4>:
      7c:	f1 e1       	ldi	r31, 0x11	; 17

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

0000008a <L0^A>:
      8a:	0e 94 6b 03 	call	0x6d6	; 0x6d6 <main>
      8e:	0c 94 9a 08 	jmp	0x1134	; 0x1134 <_exit>

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
      b0:	0e 94 85 03 	call	0x70a	; 0x70a <__udivmodhi4>
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
      d2:	0e 94 85 03 	call	0x70a	; 0x70a <__udivmodhi4>
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

000001e4 <NUN_init>:
     1e4:	0e 94 f3 01 	call	0x3e6	; 0x3e6 <I2C_init>
     1e8:	06 97       	sbiw	r24, 0x06	; 6
     1ea:	11 f0       	breq	.+4      	; 0x1f0 <.L2>
     1ec:	0e 94 60 03 	call	0x6c0	; 0x6c0 <Error_Handler>

000001f0 <.L2>:
     1f0:	0e 94 01 02 	call	0x402	; 0x402 <I2C_start>
     1f4:	06 97       	sbiw	r24, 0x06	; 6
     1f6:	11 f0       	breq	.+4      	; 0x1fc <.L3>
     1f8:	0e 94 60 03 	call	0x6c0	; 0x6c0 <Error_Handler>

000001fc <.L3>:
     1fc:	60 e0       	ldi	r22, 0x00	; 0
     1fe:	70 e0       	ldi	r23, 0x00	; 0
     200:	84 ea       	ldi	r24, 0xA4	; 164
     202:	0e 94 13 02 	call	0x426	; 0x426 <I2C_connect_address>
     206:	80 ef       	ldi	r24, 0xF0	; 240
     208:	0e 94 31 02 	call	0x462	; 0x462 <I2C_write>
     20c:	85 e5       	ldi	r24, 0x55	; 85
     20e:	0e 94 31 02 	call	0x462	; 0x462 <I2C_write>
     212:	0e 94 59 02 	call	0x4b2	; 0x4b2 <I2C_stop>
     216:	0e 94 01 02 	call	0x402	; 0x402 <I2C_start>
     21a:	06 97       	sbiw	r24, 0x06	; 6
     21c:	11 f0       	breq	.+4      	; 0x222 <.L4>
     21e:	0e 94 60 03 	call	0x6c0	; 0x6c0 <Error_Handler>

00000222 <.L4>:
     222:	60 e0       	ldi	r22, 0x00	; 0
     224:	70 e0       	ldi	r23, 0x00	; 0
     226:	84 ea       	ldi	r24, 0xA4	; 164
     228:	0e 94 13 02 	call	0x426	; 0x426 <I2C_connect_address>
     22c:	8b ef       	ldi	r24, 0xFB	; 251
     22e:	0e 94 31 02 	call	0x462	; 0x462 <I2C_write>
     232:	80 e0       	ldi	r24, 0x00	; 0
     234:	0e 94 31 02 	call	0x462	; 0x462 <I2C_write>
     238:	0e 94 59 02 	call	0x4b2	; 0x4b2 <I2C_stop>
     23c:	0e 94 01 02 	call	0x402	; 0x402 <I2C_start>
     240:	06 97       	sbiw	r24, 0x06	; 6
     242:	11 f0       	breq	.+4      	; 0x248 <.L5>
     244:	0e 94 60 03 	call	0x6c0	; 0x6c0 <Error_Handler>

00000248 <.L5>:
     248:	60 e0       	ldi	r22, 0x00	; 0
     24a:	70 e0       	ldi	r23, 0x00	; 0
     24c:	84 ea       	ldi	r24, 0xA4	; 164
     24e:	0e 94 13 02 	call	0x426	; 0x426 <I2C_connect_address>
     252:	80 e0       	ldi	r24, 0x00	; 0
     254:	0e 94 31 02 	call	0x462	; 0x462 <I2C_write>
     258:	0c 94 59 02 	jmp	0x4b2	; 0x4b2 <I2C_stop>

0000025c <NUN_get_raw>:
     25c:	ef 92       	push	r14
     25e:	ff 92       	push	r15
     260:	0f 93       	push	r16
     262:	1f 93       	push	r17
     264:	cf 93       	push	r28
     266:	df 93       	push	r29
     268:	ec 01       	movw	r28, r24
     26a:	0e 94 01 02 	call	0x402	; 0x402 <I2C_start>
     26e:	06 97       	sbiw	r24, 0x06	; 6
     270:	11 f0       	breq	.+4      	; 0x276 <.L19>
     272:	0e 94 60 03 	call	0x6c0	; 0x6c0 <Error_Handler>

00000276 <.L19>:
     276:	61 e0       	ldi	r22, 0x01	; 1
     278:	70 e0       	ldi	r23, 0x00	; 0
     27a:	85 ea       	ldi	r24, 0xA5	; 165
     27c:	0e 94 13 02 	call	0x426	; 0x426 <I2C_connect_address>
     280:	8e 01       	movw	r16, r28
     282:	7e 01       	movw	r14, r28
     284:	85 e0       	ldi	r24, 0x05	; 5
     286:	e8 0e       	add	r14, r24
     288:	f1 1c       	adc	r15, r1

0000028a <.L20>:
     28a:	0e 94 45 02 	call	0x48a	; 0x48a <I2C_read_ACK>
     28e:	f8 01       	movw	r30, r16
     290:	81 93       	st	Z+, r24
     292:	8f 01       	movw	r16, r30
     294:	ee 15       	cp	r30, r14
     296:	ff 05       	cpc	r31, r15
     298:	c1 f7       	brne	.-16     	; 0x28a <.L20>
     29a:	0e 94 4f 02 	call	0x49e	; 0x49e <I2C_read_NACK>
     29e:	8d 83       	std	Y+5, r24	; 0x05
     2a0:	df 91       	pop	r29
     2a2:	cf 91       	pop	r28
     2a4:	1f 91       	pop	r17
     2a6:	0f 91       	pop	r16
     2a8:	ff 90       	pop	r15
     2aa:	ef 90       	pop	r14
     2ac:	0c 94 59 02 	jmp	0x4b2	; 0x4b2 <I2C_stop>

000002b0 <NUN_get_joystick>:
     2b0:	cf 93       	push	r28
     2b2:	df 93       	push	r29
     2b4:	cd b7       	in	r28, 0x3d	; 61
     2b6:	de b7       	in	r29, 0x3e	; 62
     2b8:	28 97       	sbiw	r28, 0x08	; 8
     2ba:	0f b6       	in	r0, 0x3f	; 63
     2bc:	f8 94       	cli
     2be:	de bf       	out	0x3e, r29	; 62
     2c0:	0f be       	out	0x3f, r0	; 63
     2c2:	cd bf       	out	0x3d, r28	; 61
     2c4:	8f 83       	std	Y+7, r24	; 0x07
     2c6:	98 87       	std	Y+8, r25	; 0x08
     2c8:	ce 01       	movw	r24, r28
     2ca:	01 96       	adiw	r24, 0x01	; 1
     2cc:	26 e0       	ldi	r18, 0x06	; 6
     2ce:	fc 01       	movw	r30, r24

000002d0 <.L0^B1>:
     2d0:	11 92       	st	Z+, r1
     2d2:	2a 95       	dec	r18
     2d4:	e9 f7       	brne	.-6      	; 0x2d0 <.L0^B1>
     2d6:	0e 94 2e 01 	call	0x25c	; 0x25c <NUN_get_raw>
     2da:	8a 81       	ldd	r24, Y+2	; 0x02
     2dc:	99 81       	ldd	r25, Y+1	; 0x01
     2de:	ef 81       	ldd	r30, Y+7	; 0x07
     2e0:	f8 85       	ldd	r31, Y+8	; 0x08
     2e2:	90 83       	st	Z, r25
     2e4:	81 83       	std	Z+1, r24	; 0x01
     2e6:	28 96       	adiw	r28, 0x08	; 8
     2e8:	0f b6       	in	r0, 0x3f	; 63
     2ea:	f8 94       	cli
     2ec:	de bf       	out	0x3e, r29	; 62
     2ee:	0f be       	out	0x3f, r0	; 63
     2f0:	cd bf       	out	0x3d, r28	; 61
     2f2:	df 91       	pop	r29
     2f4:	cf 91       	pop	r28
     2f6:	08 95       	ret

000002f8 <NUN_get_CZ>:
     2f8:	cf 93       	push	r28
     2fa:	df 93       	push	r29
     2fc:	00 d0       	rcall	.+0      	; 0x2fe <L0^A>

000002fe <L0^A>:
     2fe:	00 d0       	rcall	.+0      	; 0x300 <L0^A>

00000300 <L0^A>:
     300:	00 d0       	rcall	.+0      	; 0x302 <L0^A>

00000302 <L0^A>:
     302:	cd b7       	in	r28, 0x3d	; 61
     304:	de b7       	in	r29, 0x3e	; 62
     306:	ce 01       	movw	r24, r28
     308:	01 96       	adiw	r24, 0x01	; 1
     30a:	0e 94 2e 01 	call	0x25c	; 0x25c <NUN_get_raw>
     30e:	8e 81       	ldd	r24, Y+6	; 0x06
     310:	8c 7f       	andi	r24, 0xFC	; 252
     312:	0f 90       	pop	r0
     314:	0f 90       	pop	r0
     316:	0f 90       	pop	r0
     318:	0f 90       	pop	r0
     31a:	0f 90       	pop	r0
     31c:	0f 90       	pop	r0
     31e:	df 91       	pop	r29
     320:	cf 91       	pop	r28
     322:	08 95       	ret

00000324 <USART_init>:
     324:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
     328:	87 e6       	ldi	r24, 0x67	; 103
     32a:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
     32e:	88 e1       	ldi	r24, 0x18	; 24
     330:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
     334:	86 e0       	ldi	r24, 0x06	; 6
     336:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
     33a:	08 95       	ret

0000033c <USART_send>:
     33c:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     340:	95 ff       	sbrs	r25, 5
     342:	fc cf       	rjmp	.-8      	; 0x33c <USART_send>
     344:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     348:	08 95       	ret

0000034a <USART_receive>:
     34a:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     34e:	87 ff       	sbrs	r24, 7
     350:	fc cf       	rjmp	.-8      	; 0x34a <USART_receive>
     352:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     356:	08 95       	ret

00000358 <USART_putstring>:
     358:	cf 93       	push	r28
     35a:	df 93       	push	r29
     35c:	ec 01       	movw	r28, r24

0000035e <.L10>:
     35e:	88 81       	ld	r24, Y
     360:	81 11       	cpse	r24, r1
     362:	03 c0       	rjmp	.+6      	; 0x36a <.L11>
     364:	df 91       	pop	r29
     366:	cf 91       	pop	r28
     368:	08 95       	ret

0000036a <.L11>:
     36a:	21 96       	adiw	r28, 0x01	; 1
     36c:	0e 94 9e 01 	call	0x33c	; 0x33c <USART_send>
     370:	f6 cf       	rjmp	.-20     	; 0x35e <.L10>

00000372 <USART_put_uint16>:
     372:	0f 93       	push	r16
     374:	1f 93       	push	r17
     376:	cf 93       	push	r28
     378:	df 93       	push	r29
     37a:	cd b7       	in	r28, 0x3d	; 61
     37c:	de b7       	in	r29, 0x3e	; 62
     37e:	2a 97       	sbiw	r28, 0x0a	; 10
     380:	0f b6       	in	r0, 0x3f	; 63
     382:	f8 94       	cli
     384:	de bf       	out	0x3e, r29	; 62
     386:	0f be       	out	0x3f, r0	; 63
     388:	cd bf       	out	0x3d, r28	; 61
     38a:	9f 93       	push	r25
     38c:	8f 93       	push	r24
     38e:	80 e0       	ldi	r24, 0x00	; 0
     390:	91 e0       	ldi	r25, 0x01	; 1
     392:	9f 93       	push	r25
     394:	8f 93       	push	r24
     396:	8e 01       	movw	r16, r28
     398:	0f 5f       	subi	r16, 0xFF	; 255
     39a:	1f 4f       	sbci	r17, 0xFF	; 255
     39c:	1f 93       	push	r17
     39e:	0f 93       	push	r16
     3a0:	0e 94 a2 05 	call	0xb44	; 0xb44 <sprintf>
     3a4:	c8 01       	movw	r24, r16
     3a6:	0e 94 ac 01 	call	0x358	; 0x358 <USART_putstring>
     3aa:	83 e0       	ldi	r24, 0x03	; 3
     3ac:	91 e0       	ldi	r25, 0x01	; 1
     3ae:	0e 94 ac 01 	call	0x358	; 0x358 <USART_putstring>
     3b2:	2f ef       	ldi	r18, 0xFF	; 255
     3b4:	89 e6       	ldi	r24, 0x69	; 105
     3b6:	98 e1       	ldi	r25, 0x18	; 24

000003b8 <.L1^B1>:
     3b8:	21 50       	subi	r18, 0x01	; 1
     3ba:	80 40       	sbci	r24, 0x00	; 0
     3bc:	90 40       	sbci	r25, 0x00	; 0
     3be:	e1 f7       	brne	.-8      	; 0x3b8 <.L1^B1>
     3c0:	00 c0       	rjmp	.+0      	; 0x3c2 <L0^A>

000003c2 <L0^A>:
     3c2:	00 00       	nop
     3c4:	0f 90       	pop	r0
     3c6:	0f 90       	pop	r0
     3c8:	0f 90       	pop	r0
     3ca:	0f 90       	pop	r0
     3cc:	0f 90       	pop	r0
     3ce:	0f 90       	pop	r0
     3d0:	2a 96       	adiw	r28, 0x0a	; 10
     3d2:	0f b6       	in	r0, 0x3f	; 63
     3d4:	f8 94       	cli
     3d6:	de bf       	out	0x3e, r29	; 62
     3d8:	0f be       	out	0x3f, r0	; 63
     3da:	cd bf       	out	0x3d, r28	; 61
     3dc:	df 91       	pop	r29
     3de:	cf 91       	pop	r28
     3e0:	1f 91       	pop	r17
     3e2:	0f 91       	pop	r16
     3e4:	08 95       	ret

000003e6 <I2C_init>:
     3e6:	87 b1       	in	r24, 0x07	; 7
     3e8:	8f 7c       	andi	r24, 0xCF	; 207
     3ea:	87 b9       	out	0x07, r24	; 7
     3ec:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3f0:	88 e4       	ldi	r24, 0x48	; 72
     3f2:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     3f6:	84 e0       	ldi	r24, 0x04	; 4
     3f8:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3fc:	86 e0       	ldi	r24, 0x06	; 6
     3fe:	90 e0       	ldi	r25, 0x00	; 0
     400:	08 95       	ret

00000402 <I2C_start>:
     402:	84 ea       	ldi	r24, 0xA4	; 164
     404:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000408 <.L3>:
     408:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     40c:	87 ff       	sbrs	r24, 7
     40e:	fc cf       	rjmp	.-8      	; 0x408 <.L3>
     410:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     414:	88 7f       	andi	r24, 0xF8	; 248
     416:	88 30       	cpi	r24, 0x08	; 8
     418:	19 f4       	brne	.+6      	; 0x420 <.L5>
     41a:	86 e0       	ldi	r24, 0x06	; 6
     41c:	90 e0       	ldi	r25, 0x00	; 0
     41e:	08 95       	ret

00000420 <.L5>:
     420:	81 e0       	ldi	r24, 0x01	; 1
     422:	90 e0       	ldi	r25, 0x00	; 0
     424:	08 95       	ret

00000426 <I2C_connect_address>:
     426:	88 0f       	add	r24, r24
     428:	86 2b       	or	r24, r22
     42a:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     42e:	84 e8       	ldi	r24, 0x84	; 132
     430:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000434 <.L8>:
     434:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     438:	87 ff       	sbrs	r24, 7
     43a:	fc cf       	rjmp	.-8      	; 0x434 <.L8>
     43c:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     440:	88 7f       	andi	r24, 0xF8	; 248
     442:	88 31       	cpi	r24, 0x18	; 24
     444:	41 f4       	brne	.+16     	; 0x456 <.L10>
     446:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     44a:	88 7f       	andi	r24, 0xF8	; 248
     44c:	88 34       	cpi	r24, 0x48	; 72
     44e:	31 f0       	breq	.+12     	; 0x45c <.L11>
     450:	84 e0       	ldi	r24, 0x04	; 4
     452:	90 e0       	ldi	r25, 0x00	; 0
     454:	08 95       	ret

00000456 <.L10>:
     456:	83 e0       	ldi	r24, 0x03	; 3
     458:	90 e0       	ldi	r25, 0x00	; 0
     45a:	08 95       	ret

0000045c <.L11>:
     45c:	86 e0       	ldi	r24, 0x06	; 6
     45e:	90 e0       	ldi	r25, 0x00	; 0
     460:	08 95       	ret

00000462 <I2C_write>:
     462:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     466:	84 e8       	ldi	r24, 0x84	; 132
     468:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000046c <.L14>:
     46c:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     470:	87 ff       	sbrs	r24, 7
     472:	fc cf       	rjmp	.-8      	; 0x46c <.L14>
     474:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     478:	88 7f       	andi	r24, 0xF8	; 248
     47a:	88 32       	cpi	r24, 0x28	; 40
     47c:	19 f0       	breq	.+6      	; 0x484 <.L16>
     47e:	82 e0       	ldi	r24, 0x02	; 2
     480:	90 e0       	ldi	r25, 0x00	; 0
     482:	08 95       	ret

00000484 <.L16>:
     484:	86 e0       	ldi	r24, 0x06	; 6
     486:	90 e0       	ldi	r25, 0x00	; 0
     488:	08 95       	ret

0000048a <I2C_read_ACK>:
     48a:	84 ec       	ldi	r24, 0xC4	; 196
     48c:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000490 <.L19>:
     490:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     494:	87 ff       	sbrs	r24, 7
     496:	fc cf       	rjmp	.-8      	; 0x490 <.L19>
     498:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     49c:	08 95       	ret

0000049e <I2C_read_NACK>:
     49e:	84 e8       	ldi	r24, 0x84	; 132
     4a0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004a4 <.L22>:
     4a4:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4a8:	87 ff       	sbrs	r24, 7
     4aa:	fc cf       	rjmp	.-8      	; 0x4a4 <.L22>
     4ac:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4b0:	08 95       	ret

000004b2 <I2C_stop>:
     4b2:	84 e9       	ldi	r24, 0x94	; 148
     4b4:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4b8:	08 95       	ret

000004ba <ADC_init>:
     4ba:	85 e4       	ldi	r24, 0x45	; 69
     4bc:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
     4c0:	87 e8       	ldi	r24, 0x87	; 135
     4c2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     4c6:	82 e0       	ldi	r24, 0x02	; 2
     4c8:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     4cc:	94 e0       	ldi	r25, 0x04	; 4
     4ce:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     4d2:	99 ef       	ldi	r25, 0xF9	; 249
     4d4:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     4d8:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     4dc:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
     4e0:	08 95       	ret

000004e2 <ADC_get>:
     4e2:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     4e6:	80 64       	ori	r24, 0x40	; 64
     4e8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

000004ec <.L3>:
     4ec:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     4f0:	84 ff       	sbrs	r24, 4
     4f2:	fc cf       	rjmp	.-8      	; 0x4ec <.L3>
     4f4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     4f8:	80 61       	ori	r24, 0x10	; 16
     4fa:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     4fe:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
     502:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
     506:	80 e0       	ldi	r24, 0x00	; 0
     508:	90 e0       	ldi	r25, 0x00	; 0
     50a:	0e 94 a7 04 	call	0x94e	; 0x94e <__floatunsisf>
     50e:	26 ef       	ldi	r18, 0xF6	; 246
     510:	38 e2       	ldi	r19, 0x28	; 40
     512:	4c e9       	ldi	r20, 0x9C	; 156
     514:	50 e4       	ldi	r21, 0x40	; 64
     516:	0e 94 35 05 	call	0xa6a	; 0xa6a <__mulsf3>
     51a:	0e 94 78 04 	call	0x8f0	; 0x8f0 <__fixunssfsi>
     51e:	cb 01       	movw	r24, r22
     520:	08 95       	ret

00000522 <ADC_sweep>:
     522:	ff 92       	push	r15
     524:	0f 93       	push	r16
     526:	1f 93       	push	r17
     528:	cf 93       	push	r28
     52a:	df 93       	push	r29
     52c:	ec 01       	movw	r28, r24
     52e:	0c e7       	ldi	r16, 0x7C	; 124
     530:	10 e0       	ldi	r17, 0x00	; 0
     532:	f8 01       	movw	r30, r16
     534:	10 82       	st	Z, r1
     536:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     53a:	8a 83       	std	Y+2, r24	; 0x02
     53c:	9b 83       	std	Y+3, r25	; 0x03
     53e:	8f e3       	ldi	r24, 0x3F	; 63
     540:	9f e1       	ldi	r25, 0x1F	; 31

00000542 <.L1^B1>:
     542:	01 97       	sbiw	r24, 0x01	; 1
     544:	f1 f7       	brne	.-4      	; 0x542 <.L1^B1>
     546:	00 c0       	rjmp	.+0      	; 0x548 <L0^A>

00000548 <L0^A>:
     548:	00 00       	nop
     54a:	ff 24       	eor	r15, r15
     54c:	f3 94       	inc	r15
     54e:	f8 01       	movw	r30, r16
     550:	f0 82       	st	Z, r15
     552:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     556:	88 83       	st	Y, r24
     558:	99 83       	std	Y+1, r25	; 0x01
     55a:	8f e3       	ldi	r24, 0x3F	; 63
     55c:	9f e1       	ldi	r25, 0x1F	; 31

0000055e <.L1^B2>:
     55e:	01 97       	sbiw	r24, 0x01	; 1
     560:	f1 f7       	brne	.-4      	; 0x55e <.L1^B2>
     562:	00 c0       	rjmp	.+0      	; 0x564 <L0^A>

00000564 <L0^A>:
     564:	00 00       	nop
     566:	82 e0       	ldi	r24, 0x02	; 2
     568:	f8 01       	movw	r30, r16
     56a:	80 83       	st	Z, r24
     56c:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     570:	8c 83       	std	Y+4, r24	; 0x04
     572:	9d 83       	std	Y+5, r25	; 0x05
     574:	8f e3       	ldi	r24, 0x3F	; 63
     576:	9f e1       	ldi	r25, 0x1F	; 31

00000578 <.L1^B3>:
     578:	01 97       	sbiw	r24, 0x01	; 1
     57a:	f1 f7       	brne	.-4      	; 0x578 <.L1^B3>
     57c:	00 c0       	rjmp	.+0      	; 0x57e <L0^A>

0000057e <L0^A>:
     57e:	00 00       	nop
     580:	83 e0       	ldi	r24, 0x03	; 3
     582:	f8 01       	movw	r30, r16
     584:	80 83       	st	Z, r24
     586:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     58a:	8e 83       	std	Y+6, r24	; 0x06
     58c:	9f 83       	std	Y+7, r25	; 0x07
     58e:	8f e3       	ldi	r24, 0x3F	; 63
     590:	9f e1       	ldi	r25, 0x1F	; 31

00000592 <.L1^B4>:
     592:	01 97       	sbiw	r24, 0x01	; 1
     594:	f1 f7       	brne	.-4      	; 0x592 <.L1^B4>
     596:	00 c0       	rjmp	.+0      	; 0x598 <L0^A>

00000598 <L0^A>:
     598:	00 00       	nop
     59a:	84 e0       	ldi	r24, 0x04	; 4
     59c:	f8 01       	movw	r30, r16
     59e:	80 83       	st	Z, r24
     5a0:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     5a4:	88 87       	std	Y+8, r24	; 0x08
     5a6:	99 87       	std	Y+9, r25	; 0x09
     5a8:	8f e3       	ldi	r24, 0x3F	; 63
     5aa:	9f e1       	ldi	r25, 0x1F	; 31

000005ac <.L1^B5>:
     5ac:	01 97       	sbiw	r24, 0x01	; 1
     5ae:	f1 f7       	brne	.-4      	; 0x5ac <.L1^B5>
     5b0:	00 c0       	rjmp	.+0      	; 0x5b2 <L0^A>

000005b2 <L0^A>:
     5b2:	00 00       	nop
     5b4:	f8 01       	movw	r30, r16
     5b6:	f0 82       	st	Z, r15
     5b8:	0e 94 71 02 	call	0x4e2	; 0x4e2 <ADC_get>
     5bc:	8a 87       	std	Y+10, r24	; 0x0a
     5be:	9b 87       	std	Y+11, r25	; 0x0b
     5c0:	8f e3       	ldi	r24, 0x3F	; 63
     5c2:	9f e1       	ldi	r25, 0x1F	; 31

000005c4 <.L1^B6>:
     5c4:	01 97       	sbiw	r24, 0x01	; 1
     5c6:	f1 f7       	brne	.-4      	; 0x5c4 <.L1^B6>
     5c8:	00 c0       	rjmp	.+0      	; 0x5ca <L0^A>

000005ca <L0^A>:
     5ca:	00 00       	nop
     5cc:	df 91       	pop	r29
     5ce:	cf 91       	pop	r28
     5d0:	1f 91       	pop	r17
     5d2:	0f 91       	pop	r16
     5d4:	ff 90       	pop	r15
     5d6:	08 95       	ret

000005d8 <volts_to_D>:
     5d8:	bc 01       	movw	r22, r24
     5da:	80 e0       	ldi	r24, 0x00	; 0
     5dc:	90 e0       	ldi	r25, 0x00	; 0
     5de:	0e 94 a7 04 	call	0x94e	; 0x94e <__floatunsisf>
     5e2:	20 e0       	ldi	r18, 0x00	; 0
     5e4:	30 e0       	ldi	r19, 0x00	; 0
     5e6:	4a e7       	ldi	r20, 0x7A	; 122
     5e8:	56 e4       	ldi	r21, 0x46	; 70
     5ea:	0e 94 35 05 	call	0xa6a	; 0xa6a <__mulsf3>
     5ee:	20 e0       	ldi	r18, 0x00	; 0
     5f0:	30 e4       	ldi	r19, 0x40	; 64
     5f2:	4c e9       	ldi	r20, 0x9C	; 156
     5f4:	55 e4       	ldi	r21, 0x45	; 69
     5f6:	0e 94 06 04 	call	0x80c	; 0x80c <__divsf3>
     5fa:	20 e0       	ldi	r18, 0x00	; 0
     5fc:	30 e0       	ldi	r19, 0x00	; 0
     5fe:	40 e8       	ldi	r20, 0x80	; 128
     600:	5f e3       	ldi	r21, 0x3F	; 63
     602:	0e 94 99 03 	call	0x732	; 0x732 <__subsf3>
     606:	0e 94 78 04 	call	0x8f0	; 0x8f0 <__fixunssfsi>
     60a:	cb 01       	movw	r24, r22
     60c:	08 95       	ret

0000060e <GPIO_PORTD_IT_init>:
     60e:	88 30       	cpi	r24, 0x08	; 8
     610:	d0 f4       	brcc	.+52     	; 0x646 <.L9>
     612:	4a b1       	in	r20, 0x0a	; 10
     614:	21 e0       	ldi	r18, 0x01	; 1
     616:	30 e0       	ldi	r19, 0x00	; 0
     618:	b9 01       	movw	r22, r18
     61a:	01 c0       	rjmp	.+2      	; 0x61e <.L2^B1>

0000061c <.L1^B7>:
     61c:	66 0f       	add	r22, r22

0000061e <.L2^B1>:
     61e:	8a 95       	dec	r24
     620:	ea f7       	brpl	.-6      	; 0x61c <.L1^B7>
     622:	86 2f       	mov	r24, r22
     624:	96 2f       	mov	r25, r22
     626:	90 95       	com	r25
     628:	94 23       	and	r25, r20
     62a:	9a b9       	out	0x0a, r25	; 10
     62c:	9b b1       	in	r25, 0x0b	; 11
     62e:	96 2b       	or	r25, r22
     630:	9b b9       	out	0x0b, r25	; 11
     632:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     636:	94 60       	ori	r25, 0x04	; 4
     638:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     63c:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     640:	89 2b       	or	r24, r25
     642:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

00000646 <.L9>:
     646:	80 e0       	ldi	r24, 0x00	; 0
     648:	90 e0       	ldi	r25, 0x00	; 0
     64a:	08 95       	ret

0000064c <PWM_TIM1_init>:
     64c:	21 9a       	sbi	0x04, 1	; 4
     64e:	22 9a       	sbi	0x04, 2	; 4
     650:	22 ea       	ldi	r18, 0xA2	; 162
     652:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     656:	2a e1       	ldi	r18, 0x1A	; 26
     658:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     65c:	40 ed       	ldi	r20, 0xD0	; 208
     65e:	57 e0       	ldi	r21, 0x07	; 7
     660:	84 9f       	mul	r24, r20
     662:	90 01       	movw	r18, r0
     664:	85 9f       	mul	r24, r21
     666:	30 0d       	add	r19, r0
     668:	94 9f       	mul	r25, r20
     66a:	30 0d       	add	r19, r0
     66c:	11 24       	eor	r1, r1
     66e:	21 50       	subi	r18, 0x01	; 1
     670:	31 09       	sbc	r19, r1
     672:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     676:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     67a:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     67e:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     682:	08 95       	ret

00000684 <PWM_set_DC>:
     684:	9c 01       	movw	r18, r24
     686:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     68a:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     68e:	42 9f       	mul	r20, r18
     690:	c0 01       	movw	r24, r0
     692:	43 9f       	mul	r20, r19
     694:	90 0d       	add	r25, r0
     696:	52 9f       	mul	r21, r18
     698:	90 0d       	add	r25, r0
     69a:	11 24       	eor	r1, r1
     69c:	64 e6       	ldi	r22, 0x64	; 100
     69e:	70 e0       	ldi	r23, 0x00	; 0
     6a0:	0e 94 85 03 	call	0x70a	; 0x70a <__udivmodhi4>
     6a4:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     6a8:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     6ac:	08 95       	ret

000006ae <DEBUG_init>:
     6ae:	20 9a       	sbi	0x04, 0	; 4
     6b0:	08 95       	ret

000006b2 <__vector_7>:
     6b2:	18 95       	reti

000006b4 <__vector_5>:
     6b4:	8f 93       	push	r24
     6b6:	89 b1       	in	r24, 0x09	; 9
     6b8:	8f 91       	pop	r24
     6ba:	18 95       	reti

000006bc <__vector_2>:
     6bc:	18 95       	reti

000006be <__vector_14>:
     6be:	18 95       	reti

000006c0 <Error_Handler>:
     6c0:	88 e1       	ldi	r24, 0x18	; 24
     6c2:	98 e0       	ldi	r25, 0x08	; 8
     6c4:	0f b6       	in	r0, 0x3f	; 63
     6c6:	f8 94       	cli
     6c8:	a8 95       	wdr
     6ca:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     6ce:	0f be       	out	0x3f, r0	; 63
     6d0:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

000006d4 <.L2>:
     6d4:	ff cf       	rjmp	.-2      	; 0x6d4 <.L2>

000006d6 <main>:
     6d6:	0e 94 f3 01 	call	0x3e6	; 0x3e6 <I2C_init>
     6da:	0e 94 57 03 	call	0x6ae	; 0x6ae <DEBUG_init>
     6de:	78 94       	sei
     6e0:	c1 e0       	ldi	r28, 0x01	; 1

000006e2 <.L6>:
     6e2:	0e 94 01 02 	call	0x402	; 0x402 <I2C_start>
     6e6:	60 e0       	ldi	r22, 0x00	; 0
     6e8:	70 e0       	ldi	r23, 0x00	; 0
     6ea:	82 e5       	ldi	r24, 0x52	; 82
     6ec:	0e 94 13 02 	call	0x426	; 0x426 <I2C_connect_address>
     6f0:	85 b1       	in	r24, 0x05	; 5
     6f2:	8c 27       	eor	r24, r28
     6f4:	85 b9       	out	0x05, r24	; 5
     6f6:	2f ef       	ldi	r18, 0xFF	; 255
     6f8:	8b e7       	ldi	r24, 0x7B	; 123
     6fa:	92 e9       	ldi	r25, 0x92	; 146

000006fc <.L1^B1>:
     6fc:	21 50       	subi	r18, 0x01	; 1
     6fe:	80 40       	sbci	r24, 0x00	; 0
     700:	90 40       	sbci	r25, 0x00	; 0
     702:	e1 f7       	brne	.-8      	; 0x6fc <.L1^B1>
     704:	00 c0       	rjmp	.+0      	; 0x706 <L0^A>

00000706 <L0^A>:
     706:	00 00       	nop
     708:	ec cf       	rjmp	.-40     	; 0x6e2 <.L6>

0000070a <__udivmodhi4>:
     70a:	aa 1b       	sub	r26, r26

0000070c <.Loc.1>:
     70c:	bb 1b       	sub	r27, r27

0000070e <.Loc.2>:
     70e:	51 e1       	ldi	r21, 0x11	; 17

00000710 <.Loc.3>:
     710:	07 c0       	rjmp	.+14     	; 0x720 <__udivmodhi4_ep>

00000712 <__udivmodhi4_loop>:
     712:	aa 1f       	adc	r26, r26

00000714 <.Loc.5>:
     714:	bb 1f       	adc	r27, r27

00000716 <.Loc.6>:
     716:	a6 17       	cp	r26, r22

00000718 <.Loc.7>:
     718:	b7 07       	cpc	r27, r23

0000071a <.Loc.8>:
     71a:	10 f0       	brcs	.+4      	; 0x720 <__udivmodhi4_ep>

0000071c <.Loc.9>:
     71c:	a6 1b       	sub	r26, r22

0000071e <.Loc.10>:
     71e:	b7 0b       	sbc	r27, r23

00000720 <__udivmodhi4_ep>:
     720:	88 1f       	adc	r24, r24

00000722 <.Loc.12>:
     722:	99 1f       	adc	r25, r25

00000724 <.Loc.13>:
     724:	5a 95       	dec	r21

00000726 <.Loc.14>:
     726:	a9 f7       	brne	.-22     	; 0x712 <__udivmodhi4_loop>

00000728 <.Loc.15>:
     728:	80 95       	com	r24

0000072a <.Loc.16>:
     72a:	90 95       	com	r25

0000072c <.Loc.17>:
     72c:	bc 01       	movw	r22, r24

0000072e <.Loc.18>:
     72e:	cd 01       	movw	r24, r26

00000730 <.Loc.19>:
     730:	08 95       	ret

00000732 <__subsf3>:
     732:	50 58       	subi	r21, 0x80	; 128

00000734 <__addsf3>:
     734:	bb 27       	eor	r27, r27
     736:	aa 27       	eor	r26, r26
     738:	0e 94 b1 03 	call	0x762	; 0x762 <__addsf3x>
     73c:	0c 94 fb 04 	jmp	0x9f6	; 0x9f6 <__fp_round>

00000740 <.L0^B1>:
     740:	0e 94 ed 04 	call	0x9da	; 0x9da <__fp_pscA>
     744:	38 f0       	brcs	.+14     	; 0x754 <.L_nan>
     746:	0e 94 f4 04 	call	0x9e8	; 0x9e8 <__fp_pscB>
     74a:	20 f0       	brcs	.+8      	; 0x754 <.L_nan>
     74c:	39 f4       	brne	.+14     	; 0x75c <.L_inf>
     74e:	9f 3f       	cpi	r25, 0xFF	; 255
     750:	19 f4       	brne	.+6      	; 0x758 <.L_infB>
     752:	26 f4       	brtc	.+8      	; 0x75c <.L_inf>

00000754 <.L_nan>:
     754:	0c 94 ea 04 	jmp	0x9d4	; 0x9d4 <__fp_nan>

00000758 <.L_infB>:
     758:	0e f4       	brtc	.+2      	; 0x75c <.L_inf>
     75a:	e0 95       	com	r30

0000075c <.L_inf>:
     75c:	e7 fb       	bst	r30, 7
     75e:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <__fp_inf>

00000762 <__addsf3x>:
     762:	e9 2f       	mov	r30, r25
     764:	0e 94 0c 05 	call	0xa18	; 0xa18 <__fp_split3>
     768:	58 f3       	brcs	.-42     	; 0x740 <.L0^B1>
     76a:	ba 17       	cp	r27, r26
     76c:	62 07       	cpc	r22, r18
     76e:	73 07       	cpc	r23, r19
     770:	84 07       	cpc	r24, r20
     772:	95 07       	cpc	r25, r21
     774:	20 f0       	brcs	.+8      	; 0x77e <.L2^B1>
     776:	79 f4       	brne	.+30     	; 0x796 <.L4^B1>
     778:	a6 f5       	brtc	.+104    	; 0x7e2 <.L_add>
     77a:	0c 94 2e 05 	jmp	0xa5c	; 0xa5c <__fp_zero>

0000077e <.L2^B1>:
     77e:	0e f4       	brtc	.+2      	; 0x782 <.L3^B1>
     780:	e0 95       	com	r30

00000782 <.L3^B1>:
     782:	0b 2e       	mov	r0, r27
     784:	ba 2f       	mov	r27, r26
     786:	a0 2d       	mov	r26, r0
     788:	0b 01       	movw	r0, r22
     78a:	b9 01       	movw	r22, r18
     78c:	90 01       	movw	r18, r0
     78e:	0c 01       	movw	r0, r24
     790:	ca 01       	movw	r24, r20
     792:	a0 01       	movw	r20, r0
     794:	11 24       	eor	r1, r1

00000796 <.L4^B1>:
     796:	ff 27       	eor	r31, r31
     798:	59 1b       	sub	r21, r25

0000079a <.L5^B1>:
     79a:	99 f0       	breq	.+38     	; 0x7c2 <.L7^B1>
     79c:	59 3f       	cpi	r21, 0xF9	; 249
     79e:	50 f4       	brcc	.+20     	; 0x7b4 <.L6^B1>
     7a0:	50 3e       	cpi	r21, 0xE0	; 224
     7a2:	68 f1       	brcs	.+90     	; 0x7fe <.L_ret>
     7a4:	1a 16       	cp	r1, r26
     7a6:	f0 40       	sbci	r31, 0x00	; 0
     7a8:	a2 2f       	mov	r26, r18
     7aa:	23 2f       	mov	r18, r19
     7ac:	34 2f       	mov	r19, r20
     7ae:	44 27       	eor	r20, r20
     7b0:	58 5f       	subi	r21, 0xF8	; 248
     7b2:	f3 cf       	rjmp	.-26     	; 0x79a <.L5^B1>

000007b4 <.L6^B1>:
     7b4:	46 95       	lsr	r20
     7b6:	37 95       	ror	r19
     7b8:	27 95       	ror	r18
     7ba:	a7 95       	ror	r26
     7bc:	f0 40       	sbci	r31, 0x00	; 0
     7be:	53 95       	inc	r21
     7c0:	c9 f7       	brne	.-14     	; 0x7b4 <.L6^B1>

000007c2 <.L7^B1>:
     7c2:	7e f4       	brtc	.+30     	; 0x7e2 <.L_add>
     7c4:	1f 16       	cp	r1, r31
     7c6:	ba 0b       	sbc	r27, r26
     7c8:	62 0b       	sbc	r22, r18
     7ca:	73 0b       	sbc	r23, r19
     7cc:	84 0b       	sbc	r24, r20
     7ce:	ba f0       	brmi	.+46     	; 0x7fe <.L_ret>

000007d0 <.L8^B1>:
     7d0:	91 50       	subi	r25, 0x01	; 1
     7d2:	a1 f0       	breq	.+40     	; 0x7fc <.L9^B1>
     7d4:	ff 0f       	add	r31, r31
     7d6:	bb 1f       	adc	r27, r27
     7d8:	66 1f       	adc	r22, r22
     7da:	77 1f       	adc	r23, r23
     7dc:	88 1f       	adc	r24, r24
     7de:	c2 f7       	brpl	.-16     	; 0x7d0 <.L8^B1>
     7e0:	0e c0       	rjmp	.+28     	; 0x7fe <.L_ret>

000007e2 <.L_add>:
     7e2:	ba 0f       	add	r27, r26
     7e4:	62 1f       	adc	r22, r18
     7e6:	73 1f       	adc	r23, r19
     7e8:	84 1f       	adc	r24, r20
     7ea:	48 f4       	brcc	.+18     	; 0x7fe <.L_ret>
     7ec:	87 95       	ror	r24
     7ee:	77 95       	ror	r23
     7f0:	67 95       	ror	r22
     7f2:	b7 95       	ror	r27
     7f4:	f7 95       	ror	r31
     7f6:	9e 3f       	cpi	r25, 0xFE	; 254
     7f8:	08 f0       	brcs	.+2      	; 0x7fc <.L9^B1>
     7fa:	b0 cf       	rjmp	.-160    	; 0x75c <.L_inf>

000007fc <.L9^B1>:
     7fc:	93 95       	inc	r25

000007fe <.L_ret>:
     7fe:	88 0f       	add	r24, r24
     800:	08 f0       	brcs	.+2      	; 0x804 <.L1^B1>
     802:	99 27       	eor	r25, r25

00000804 <.L1^B1>:
     804:	ee 0f       	add	r30, r30
     806:	97 95       	ror	r25
     808:	87 95       	ror	r24
     80a:	08 95       	ret

0000080c <__divsf3>:
     80c:	0e 94 1a 04 	call	0x834	; 0x834 <__divsf3x>
     810:	0c 94 fb 04 	jmp	0x9f6	; 0x9f6 <__fp_round>

00000814 <.L0^B1>:
     814:	0e 94 f4 04 	call	0x9e8	; 0x9e8 <__fp_pscB>
     818:	58 f0       	brcs	.+22     	; 0x830 <.L_nan>
     81a:	0e 94 ed 04 	call	0x9da	; 0x9da <__fp_pscA>
     81e:	40 f0       	brcs	.+16     	; 0x830 <.L_nan>
     820:	29 f4       	brne	.+10     	; 0x82c <.L_zr>
     822:	5f 3f       	cpi	r21, 0xFF	; 255
     824:	29 f0       	breq	.+10     	; 0x830 <.L_nan>

00000826 <.L_inf>:
     826:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <__fp_inf>

0000082a <.L1^B1>:
     82a:	51 11       	cpse	r21, r1

0000082c <.L_zr>:
     82c:	0c 94 2f 05 	jmp	0xa5e	; 0xa5e <__fp_szero>

00000830 <.L_nan>:
     830:	0c 94 ea 04 	jmp	0x9d4	; 0x9d4 <__fp_nan>

00000834 <__divsf3x>:
     834:	0e 94 0c 05 	call	0xa18	; 0xa18 <__fp_split3>
     838:	68 f3       	brcs	.-38     	; 0x814 <.L0^B1>

0000083a <__divsf3_pse>:
     83a:	99 23       	and	r25, r25
     83c:	b1 f3       	breq	.-20     	; 0x82a <.L1^B1>
     83e:	55 23       	and	r21, r21
     840:	91 f3       	breq	.-28     	; 0x826 <.L_inf>
     842:	95 1b       	sub	r25, r21
     844:	55 0b       	sbc	r21, r21
     846:	bb 27       	eor	r27, r27
     848:	aa 27       	eor	r26, r26

0000084a <.L2^B1>:
     84a:	62 17       	cp	r22, r18
     84c:	73 07       	cpc	r23, r19
     84e:	84 07       	cpc	r24, r20
     850:	38 f0       	brcs	.+14     	; 0x860 <.L3^B1>
     852:	9f 5f       	subi	r25, 0xFF	; 255
     854:	5f 4f       	sbci	r21, 0xFF	; 255
     856:	22 0f       	add	r18, r18
     858:	33 1f       	adc	r19, r19
     85a:	44 1f       	adc	r20, r20
     85c:	aa 1f       	adc	r26, r26
     85e:	a9 f3       	breq	.-22     	; 0x84a <.L2^B1>

00000860 <.L3^B1>:
     860:	35 d0       	rcall	.+106    	; 0x8cc <.L_div>
     862:	0e 2e       	mov	r0, r30
     864:	3a f0       	brmi	.+14     	; 0x874 <.L5^B1>

00000866 <.L4^B1>:
     866:	e0 e8       	ldi	r30, 0x80	; 128
     868:	32 d0       	rcall	.+100    	; 0x8ce <.L_div1>
     86a:	91 50       	subi	r25, 0x01	; 1
     86c:	50 40       	sbci	r21, 0x00	; 0
     86e:	e6 95       	lsr	r30
     870:	00 1c       	adc	r0, r0
     872:	ca f7       	brpl	.-14     	; 0x866 <.L4^B1>

00000874 <.L5^B1>:
     874:	2b d0       	rcall	.+86     	; 0x8cc <.L_div>
     876:	fe 2f       	mov	r31, r30
     878:	29 d0       	rcall	.+82     	; 0x8cc <.L_div>
     87a:	66 0f       	add	r22, r22
     87c:	77 1f       	adc	r23, r23
     87e:	88 1f       	adc	r24, r24
     880:	bb 1f       	adc	r27, r27
     882:	26 17       	cp	r18, r22
     884:	37 07       	cpc	r19, r23
     886:	48 07       	cpc	r20, r24
     888:	ab 07       	cpc	r26, r27
     88a:	b0 e8       	ldi	r27, 0x80	; 128
     88c:	09 f0       	breq	.+2      	; 0x890 <.L4^B2>
     88e:	bb 0b       	sbc	r27, r27

00000890 <.L4^B2>:
     890:	80 2d       	mov	r24, r0
     892:	bf 01       	movw	r22, r30
     894:	ff 27       	eor	r31, r31
     896:	93 58       	subi	r25, 0x83	; 131
     898:	5f 4f       	sbci	r21, 0xFF	; 255
     89a:	3a f0       	brmi	.+14     	; 0x8aa <.L13^B1>
     89c:	9e 3f       	cpi	r25, 0xFE	; 254
     89e:	51 05       	cpc	r21, r1
     8a0:	78 f0       	brcs	.+30     	; 0x8c0 <.L15^B1>
     8a2:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <__fp_inf>

000008a6 <.L12^B1>:
     8a6:	0c 94 2f 05 	jmp	0xa5e	; 0xa5e <__fp_szero>

000008aa <.L13^B1>:
     8aa:	5f 3f       	cpi	r21, 0xFF	; 255
     8ac:	e4 f3       	brlt	.-8      	; 0x8a6 <.L12^B1>
     8ae:	98 3e       	cpi	r25, 0xE8	; 232
     8b0:	d4 f3       	brlt	.-12     	; 0x8a6 <.L12^B1>

000008b2 <.L14^B1>:
     8b2:	86 95       	lsr	r24
     8b4:	77 95       	ror	r23
     8b6:	67 95       	ror	r22
     8b8:	b7 95       	ror	r27
     8ba:	f7 95       	ror	r31
     8bc:	9f 5f       	subi	r25, 0xFF	; 255
     8be:	c9 f7       	brne	.-14     	; 0x8b2 <.L14^B1>

000008c0 <.L15^B1>:
     8c0:	88 0f       	add	r24, r24
     8c2:	91 1d       	adc	r25, r1
     8c4:	96 95       	lsr	r25
     8c6:	87 95       	ror	r24
     8c8:	97 f9       	bld	r25, 7
     8ca:	08 95       	ret

000008cc <.L_div>:
     8cc:	e1 e0       	ldi	r30, 0x01	; 1

000008ce <.L_div1>:
     8ce:	66 0f       	add	r22, r22
     8d0:	77 1f       	adc	r23, r23
     8d2:	88 1f       	adc	r24, r24
     8d4:	bb 1f       	adc	r27, r27
     8d6:	62 17       	cp	r22, r18
     8d8:	73 07       	cpc	r23, r19
     8da:	84 07       	cpc	r24, r20
     8dc:	ba 07       	cpc	r27, r26
     8de:	20 f0       	brcs	.+8      	; 0x8e8 <.L2^B2>
     8e0:	62 1b       	sub	r22, r18
     8e2:	73 0b       	sbc	r23, r19
     8e4:	84 0b       	sbc	r24, r20
     8e6:	ba 0b       	sbc	r27, r26

000008e8 <.L2^B2>:
     8e8:	ee 1f       	adc	r30, r30
     8ea:	88 f7       	brcc	.-30     	; 0x8ce <.L_div1>
     8ec:	e0 95       	com	r30
     8ee:	08 95       	ret

000008f0 <__fixunssfsi>:
     8f0:	0e 94 14 05 	call	0xa28	; 0xa28 <__fp_splitA>
     8f4:	88 f0       	brcs	.+34     	; 0x918 <.L_err>
     8f6:	9f 57       	subi	r25, 0x7F	; 127
     8f8:	98 f0       	brcs	.+38     	; 0x920 <.L_zr>
     8fa:	b9 2f       	mov	r27, r25
     8fc:	99 27       	eor	r25, r25
     8fe:	b7 51       	subi	r27, 0x17	; 23
     900:	b0 f0       	brcs	.+44     	; 0x92e <.L4^B1>
     902:	e1 f0       	breq	.+56     	; 0x93c <.L_sign>

00000904 <.L1^B1>:
     904:	66 0f       	add	r22, r22
     906:	77 1f       	adc	r23, r23
     908:	88 1f       	adc	r24, r24
     90a:	99 1f       	adc	r25, r25
     90c:	1a f0       	brmi	.+6      	; 0x914 <.L2^B1>
     90e:	ba 95       	dec	r27
     910:	c9 f7       	brne	.-14     	; 0x904 <.L1^B1>
     912:	14 c0       	rjmp	.+40     	; 0x93c <.L_sign>

00000914 <.L2^B1>:
     914:	b1 30       	cpi	r27, 0x01	; 1
     916:	91 f0       	breq	.+36     	; 0x93c <.L_sign>

00000918 <.L_err>:
     918:	0e 94 2e 05 	call	0xa5c	; 0xa5c <__fp_zero>
     91c:	b1 e0       	ldi	r27, 0x01	; 1
     91e:	08 95       	ret

00000920 <.L_zr>:
     920:	0c 94 2e 05 	jmp	0xa5c	; 0xa5c <__fp_zero>

00000924 <.L3^B1>:
     924:	67 2f       	mov	r22, r23
     926:	78 2f       	mov	r23, r24
     928:	88 27       	eor	r24, r24
     92a:	b8 5f       	subi	r27, 0xF8	; 248
     92c:	39 f0       	breq	.+14     	; 0x93c <.L_sign>

0000092e <.L4^B1>:
     92e:	b9 3f       	cpi	r27, 0xF9	; 249
     930:	cc f3       	brlt	.-14     	; 0x924 <.L3^B1>

00000932 <.L5^B1>:
     932:	86 95       	lsr	r24
     934:	77 95       	ror	r23
     936:	67 95       	ror	r22
     938:	b3 95       	inc	r27
     93a:	d9 f7       	brne	.-10     	; 0x932 <.L5^B1>

0000093c <.L_sign>:
     93c:	3e f4       	brtc	.+14     	; 0x94c <.L6^B1>
     93e:	90 95       	com	r25
     940:	80 95       	com	r24
     942:	70 95       	com	r23
     944:	61 95       	neg	r22
     946:	7f 4f       	sbci	r23, 0xFF	; 255
     948:	8f 4f       	sbci	r24, 0xFF	; 255
     94a:	9f 4f       	sbci	r25, 0xFF	; 255

0000094c <.L6^B1>:
     94c:	08 95       	ret

0000094e <__floatunsisf>:
     94e:	e8 94       	clt
     950:	09 c0       	rjmp	.+18     	; 0x964 <.L1^B1>

00000952 <__floatsisf>:
     952:	97 fb       	bst	r25, 7
     954:	3e f4       	brtc	.+14     	; 0x964 <.L1^B1>
     956:	90 95       	com	r25
     958:	80 95       	com	r24
     95a:	70 95       	com	r23
     95c:	61 95       	neg	r22
     95e:	7f 4f       	sbci	r23, 0xFF	; 255
     960:	8f 4f       	sbci	r24, 0xFF	; 255
     962:	9f 4f       	sbci	r25, 0xFF	; 255

00000964 <.L1^B1>:
     964:	99 23       	and	r25, r25
     966:	a9 f0       	breq	.+42     	; 0x992 <.L4^B1>
     968:	f9 2f       	mov	r31, r25
     96a:	96 e9       	ldi	r25, 0x96	; 150
     96c:	bb 27       	eor	r27, r27

0000096e <.L2^B1>:
     96e:	93 95       	inc	r25
     970:	f6 95       	lsr	r31
     972:	87 95       	ror	r24
     974:	77 95       	ror	r23
     976:	67 95       	ror	r22
     978:	b7 95       	ror	r27
     97a:	f1 11       	cpse	r31, r1
     97c:	f8 cf       	rjmp	.-16     	; 0x96e <.L2^B1>
     97e:	fa f4       	brpl	.+62     	; 0x9be <.L_pack>
     980:	bb 0f       	add	r27, r27
     982:	11 f4       	brne	.+4      	; 0x988 <.L3^B1>
     984:	60 ff       	sbrs	r22, 0
     986:	1b c0       	rjmp	.+54     	; 0x9be <.L_pack>

00000988 <.L3^B1>:
     988:	6f 5f       	subi	r22, 0xFF	; 255
     98a:	7f 4f       	sbci	r23, 0xFF	; 255
     98c:	8f 4f       	sbci	r24, 0xFF	; 255
     98e:	9f 4f       	sbci	r25, 0xFF	; 255
     990:	16 c0       	rjmp	.+44     	; 0x9be <.L_pack>

00000992 <.L4^B1>:
     992:	88 23       	and	r24, r24
     994:	11 f0       	breq	.+4      	; 0x99a <.L5^B1>
     996:	96 e9       	ldi	r25, 0x96	; 150
     998:	11 c0       	rjmp	.+34     	; 0x9bc <.L8^B1>

0000099a <.L5^B1>:
     99a:	77 23       	and	r23, r23
     99c:	21 f0       	breq	.+8      	; 0x9a6 <.L6^B1>
     99e:	9e e8       	ldi	r25, 0x8E	; 142
     9a0:	87 2f       	mov	r24, r23
     9a2:	76 2f       	mov	r23, r22
     9a4:	05 c0       	rjmp	.+10     	; 0x9b0 <.L7^B1>

000009a6 <.L6^B1>:
     9a6:	66 23       	and	r22, r22
     9a8:	71 f0       	breq	.+28     	; 0x9c6 <.L9^B1>
     9aa:	96 e8       	ldi	r25, 0x86	; 134
     9ac:	86 2f       	mov	r24, r22
     9ae:	70 e0       	ldi	r23, 0x00	; 0

000009b0 <.L7^B1>:
     9b0:	60 e0       	ldi	r22, 0x00	; 0
     9b2:	2a f0       	brmi	.+10     	; 0x9be <.L_pack>

000009b4 <.L10^B1>:
     9b4:	9a 95       	dec	r25
     9b6:	66 0f       	add	r22, r22
     9b8:	77 1f       	adc	r23, r23
     9ba:	88 1f       	adc	r24, r24

000009bc <.L8^B1>:
     9bc:	da f7       	brpl	.-10     	; 0x9b4 <.L10^B1>

000009be <.L_pack>:
     9be:	88 0f       	add	r24, r24
     9c0:	96 95       	lsr	r25
     9c2:	87 95       	ror	r24
     9c4:	97 f9       	bld	r25, 7

000009c6 <.L9^B1>:
     9c6:	08 95       	ret

000009c8 <__fp_inf>:
     9c8:	97 f9       	bld	r25, 7
     9ca:	9f 67       	ori	r25, 0x7F	; 127
     9cc:	80 e8       	ldi	r24, 0x80	; 128
     9ce:	70 e0       	ldi	r23, 0x00	; 0
     9d0:	60 e0       	ldi	r22, 0x00	; 0
     9d2:	08 95       	ret

000009d4 <__fp_nan>:
     9d4:	9f ef       	ldi	r25, 0xFF	; 255
     9d6:	80 ec       	ldi	r24, 0xC0	; 192
     9d8:	08 95       	ret

000009da <__fp_pscA>:
     9da:	00 24       	eor	r0, r0
     9dc:	0a 94       	dec	r0
     9de:	16 16       	cp	r1, r22
     9e0:	17 06       	cpc	r1, r23
     9e2:	18 06       	cpc	r1, r24
     9e4:	09 06       	cpc	r0, r25
     9e6:	08 95       	ret

000009e8 <__fp_pscB>:
     9e8:	00 24       	eor	r0, r0
     9ea:	0a 94       	dec	r0
     9ec:	12 16       	cp	r1, r18
     9ee:	13 06       	cpc	r1, r19
     9f0:	14 06       	cpc	r1, r20
     9f2:	05 06       	cpc	r0, r21
     9f4:	08 95       	ret

000009f6 <__fp_round>:
     9f6:	09 2e       	mov	r0, r25
     9f8:	03 94       	inc	r0
     9fa:	00 0c       	add	r0, r0
     9fc:	11 f4       	brne	.+4      	; 0xa02 <.L1^B1>
     9fe:	88 23       	and	r24, r24
     a00:	52 f0       	brmi	.+20     	; 0xa16 <.L3^B1>

00000a02 <.L1^B1>:
     a02:	bb 0f       	add	r27, r27
     a04:	40 f4       	brcc	.+16     	; 0xa16 <.L3^B1>
     a06:	bf 2b       	or	r27, r31
     a08:	11 f4       	brne	.+4      	; 0xa0e <.L2^B1>
     a0a:	60 ff       	sbrs	r22, 0
     a0c:	04 c0       	rjmp	.+8      	; 0xa16 <.L3^B1>

00000a0e <.L2^B1>:
     a0e:	6f 5f       	subi	r22, 0xFF	; 255
     a10:	7f 4f       	sbci	r23, 0xFF	; 255
     a12:	8f 4f       	sbci	r24, 0xFF	; 255
     a14:	9f 4f       	sbci	r25, 0xFF	; 255

00000a16 <.L3^B1>:
     a16:	08 95       	ret

00000a18 <__fp_split3>:
     a18:	57 fd       	sbrc	r21, 7
     a1a:	90 58       	subi	r25, 0x80	; 128
     a1c:	44 0f       	add	r20, r20
     a1e:	55 1f       	adc	r21, r21
     a20:	59 f0       	breq	.+22     	; 0xa38 <.L4^B1>
     a22:	5f 3f       	cpi	r21, 0xFF	; 255
     a24:	71 f0       	breq	.+28     	; 0xa42 <.L5^B1>

00000a26 <.L1^B1>:
     a26:	47 95       	ror	r20

00000a28 <__fp_splitA>:
     a28:	88 0f       	add	r24, r24
     a2a:	97 fb       	bst	r25, 7
     a2c:	99 1f       	adc	r25, r25
     a2e:	61 f0       	breq	.+24     	; 0xa48 <.L6^B1>
     a30:	9f 3f       	cpi	r25, 0xFF	; 255
     a32:	79 f0       	breq	.+30     	; 0xa52 <.L7^B1>

00000a34 <.L3^B1>:
     a34:	87 95       	ror	r24
     a36:	08 95       	ret

00000a38 <.L4^B1>:
     a38:	12 16       	cp	r1, r18
     a3a:	13 06       	cpc	r1, r19
     a3c:	14 06       	cpc	r1, r20
     a3e:	55 1f       	adc	r21, r21
     a40:	f2 cf       	rjmp	.-28     	; 0xa26 <.L1^B1>

00000a42 <.L5^B1>:
     a42:	46 95       	lsr	r20
     a44:	f1 df       	rcall	.-30     	; 0xa28 <__fp_splitA>
     a46:	08 c0       	rjmp	.+16     	; 0xa58 <.L8^B1>

00000a48 <.L6^B1>:
     a48:	16 16       	cp	r1, r22
     a4a:	17 06       	cpc	r1, r23
     a4c:	18 06       	cpc	r1, r24
     a4e:	99 1f       	adc	r25, r25
     a50:	f1 cf       	rjmp	.-30     	; 0xa34 <.L3^B1>

00000a52 <.L7^B1>:
     a52:	86 95       	lsr	r24
     a54:	71 05       	cpc	r23, r1
     a56:	61 05       	cpc	r22, r1

00000a58 <.L8^B1>:
     a58:	08 94       	sec
     a5a:	08 95       	ret

00000a5c <__fp_zero>:
     a5c:	e8 94       	clt

00000a5e <__fp_szero>:
     a5e:	bb 27       	eor	r27, r27
     a60:	66 27       	eor	r22, r22
     a62:	77 27       	eor	r23, r23
     a64:	cb 01       	movw	r24, r22
     a66:	97 f9       	bld	r25, 7
     a68:	08 95       	ret

00000a6a <__mulsf3>:
     a6a:	0e 94 48 05 	call	0xa90	; 0xa90 <__mulsf3x>
     a6e:	0c 94 fb 04 	jmp	0x9f6	; 0x9f6 <__fp_round>

00000a72 <.L0^B1>:
     a72:	0e 94 ed 04 	call	0x9da	; 0x9da <__fp_pscA>
     a76:	38 f0       	brcs	.+14     	; 0xa86 <.L1^B1>
     a78:	0e 94 f4 04 	call	0x9e8	; 0x9e8 <__fp_pscB>
     a7c:	20 f0       	brcs	.+8      	; 0xa86 <.L1^B1>
     a7e:	95 23       	and	r25, r21
     a80:	11 f0       	breq	.+4      	; 0xa86 <.L1^B1>
     a82:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <__fp_inf>

00000a86 <.L1^B1>:
     a86:	0c 94 ea 04 	jmp	0x9d4	; 0x9d4 <__fp_nan>

00000a8a <.L2^B1>:
     a8a:	11 24       	eor	r1, r1
     a8c:	0c 94 2f 05 	jmp	0xa5e	; 0xa5e <__fp_szero>

00000a90 <__mulsf3x>:
     a90:	0e 94 0c 05 	call	0xa18	; 0xa18 <__fp_split3>
     a94:	70 f3       	brcs	.-36     	; 0xa72 <.L0^B1>

00000a96 <__mulsf3_pse>:
     a96:	95 9f       	mul	r25, r21
     a98:	c1 f3       	breq	.-16     	; 0xa8a <.L2^B1>
     a9a:	95 0f       	add	r25, r21
     a9c:	50 e0       	ldi	r21, 0x00	; 0
     a9e:	55 1f       	adc	r21, r21
     aa0:	62 9f       	mul	r22, r18
     aa2:	f0 01       	movw	r30, r0
     aa4:	72 9f       	mul	r23, r18
     aa6:	bb 27       	eor	r27, r27
     aa8:	f0 0d       	add	r31, r0
     aaa:	b1 1d       	adc	r27, r1
     aac:	63 9f       	mul	r22, r19
     aae:	aa 27       	eor	r26, r26
     ab0:	f0 0d       	add	r31, r0
     ab2:	b1 1d       	adc	r27, r1
     ab4:	aa 1f       	adc	r26, r26
     ab6:	64 9f       	mul	r22, r20
     ab8:	66 27       	eor	r22, r22
     aba:	b0 0d       	add	r27, r0
     abc:	a1 1d       	adc	r26, r1
     abe:	66 1f       	adc	r22, r22
     ac0:	82 9f       	mul	r24, r18
     ac2:	22 27       	eor	r18, r18
     ac4:	b0 0d       	add	r27, r0
     ac6:	a1 1d       	adc	r26, r1
     ac8:	62 1f       	adc	r22, r18
     aca:	73 9f       	mul	r23, r19
     acc:	b0 0d       	add	r27, r0
     ace:	a1 1d       	adc	r26, r1
     ad0:	62 1f       	adc	r22, r18
     ad2:	83 9f       	mul	r24, r19
     ad4:	a0 0d       	add	r26, r0
     ad6:	61 1d       	adc	r22, r1
     ad8:	22 1f       	adc	r18, r18
     ada:	74 9f       	mul	r23, r20
     adc:	33 27       	eor	r19, r19
     ade:	a0 0d       	add	r26, r0
     ae0:	61 1d       	adc	r22, r1
     ae2:	23 1f       	adc	r18, r19
     ae4:	84 9f       	mul	r24, r20
     ae6:	60 0d       	add	r22, r0
     ae8:	21 1d       	adc	r18, r1
     aea:	82 2f       	mov	r24, r18
     aec:	76 2f       	mov	r23, r22
     aee:	6a 2f       	mov	r22, r26
     af0:	11 24       	eor	r1, r1
     af2:	9f 57       	subi	r25, 0x7F	; 127
     af4:	50 40       	sbci	r21, 0x00	; 0
     af6:	9a f0       	brmi	.+38     	; 0xb1e <.L13^B1>
     af8:	f1 f0       	breq	.+60     	; 0xb36 <.L15^B1>

00000afa <.L10^B1>:
     afa:	88 23       	and	r24, r24
     afc:	4a f0       	brmi	.+18     	; 0xb10 <.L11^B1>
     afe:	ee 0f       	add	r30, r30
     b00:	ff 1f       	adc	r31, r31
     b02:	bb 1f       	adc	r27, r27
     b04:	66 1f       	adc	r22, r22
     b06:	77 1f       	adc	r23, r23
     b08:	88 1f       	adc	r24, r24
     b0a:	91 50       	subi	r25, 0x01	; 1
     b0c:	50 40       	sbci	r21, 0x00	; 0
     b0e:	a9 f7       	brne	.-22     	; 0xafa <.L10^B1>

00000b10 <.L11^B1>:
     b10:	9e 3f       	cpi	r25, 0xFE	; 254
     b12:	51 05       	cpc	r21, r1
     b14:	80 f0       	brcs	.+32     	; 0xb36 <.L15^B1>
     b16:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <__fp_inf>

00000b1a <.L12^B1>:
     b1a:	0c 94 2f 05 	jmp	0xa5e	; 0xa5e <__fp_szero>

00000b1e <.L13^B1>:
     b1e:	5f 3f       	cpi	r21, 0xFF	; 255
     b20:	e4 f3       	brlt	.-8      	; 0xb1a <.L12^B1>
     b22:	98 3e       	cpi	r25, 0xE8	; 232
     b24:	d4 f3       	brlt	.-12     	; 0xb1a <.L12^B1>

00000b26 <.L14^B1>:
     b26:	86 95       	lsr	r24
     b28:	77 95       	ror	r23
     b2a:	67 95       	ror	r22
     b2c:	b7 95       	ror	r27
     b2e:	f7 95       	ror	r31
     b30:	e7 95       	ror	r30
     b32:	9f 5f       	subi	r25, 0xFF	; 255
     b34:	c1 f7       	brne	.-16     	; 0xb26 <.L14^B1>

00000b36 <.L15^B1>:
     b36:	fe 2b       	or	r31, r30
     b38:	88 0f       	add	r24, r24
     b3a:	91 1d       	adc	r25, r1
     b3c:	96 95       	lsr	r25
     b3e:	87 95       	ror	r24
     b40:	97 f9       	bld	r25, 7
     b42:	08 95       	ret

00000b44 <sprintf>:
     b44:	ae e0       	ldi	r26, 0x0E	; 14
     b46:	b0 e0       	ldi	r27, 0x00	; 0
     b48:	e8 ea       	ldi	r30, 0xA8	; 168
     b4a:	f5 e0       	ldi	r31, 0x05	; 5
     b4c:	0c 94 73 08 	jmp	0x10e6	; 0x10e6 <.Loc.16>

00000b50 <.L1^B1>:
     b50:	86 e0       	ldi	r24, 0x06	; 6
     b52:	8c 83       	std	Y+4, r24	; 0x04
     b54:	2b 89       	ldd	r18, Y+19	; 0x13
     b56:	3c 89       	ldd	r19, Y+20	; 0x14
     b58:	29 83       	std	Y+1, r18	; 0x01
     b5a:	3a 83       	std	Y+2, r19	; 0x02
     b5c:	8f ef       	ldi	r24, 0xFF	; 255
     b5e:	9f e7       	ldi	r25, 0x7F	; 127
     b60:	8d 83       	std	Y+5, r24	; 0x05
     b62:	9e 83       	std	Y+6, r25	; 0x06
     b64:	ae 01       	movw	r20, r28
     b66:	49 5e       	subi	r20, 0xE9	; 233
     b68:	5f 4f       	sbci	r21, 0xFF	; 255
     b6a:	6d 89       	ldd	r22, Y+21	; 0x15
     b6c:	7e 89       	ldd	r23, Y+22	; 0x16
     b6e:	ce 01       	movw	r24, r28
     b70:	01 96       	adiw	r24, 0x01	; 1
     b72:	0e 94 c6 05 	call	0xb8c	; 0xb8c <vfprintf>
     b76:	ef 81       	ldd	r30, Y+7	; 0x07
     b78:	f8 85       	ldd	r31, Y+8	; 0x08
     b7a:	2b 89       	ldd	r18, Y+19	; 0x13
     b7c:	3c 89       	ldd	r19, Y+20	; 0x14
     b7e:	e2 0f       	add	r30, r18
     b80:	f3 1f       	adc	r31, r19
     b82:	10 82       	st	Z, r1
     b84:	2e 96       	adiw	r28, 0x0e	; 14
     b86:	e2 e0       	ldi	r30, 0x02	; 2
     b88:	0c 94 8f 08 	jmp	0x111e	; 0x111e <.Loc.16>

00000b8c <vfprintf>:
     b8c:	ab e0       	ldi	r26, 0x0B	; 11
     b8e:	b0 e0       	ldi	r27, 0x00	; 0
     b90:	ec ec       	ldi	r30, 0xCC	; 204
     b92:	f5 e0       	ldi	r31, 0x05	; 5
     b94:	0c 94 66 08 	jmp	0x10cc	; 0x10cc <.Loc.3>

00000b98 <.L1^B1>:
     b98:	6c 01       	movw	r12, r24
     b9a:	7b 01       	movw	r14, r22
     b9c:	8a 01       	movw	r16, r20
     b9e:	fc 01       	movw	r30, r24
     ba0:	16 82       	std	Z+6, r1	; 0x06
     ba2:	17 82       	std	Z+7, r1	; 0x07
     ba4:	83 81       	ldd	r24, Z+3	; 0x03
     ba6:	81 ff       	sbrs	r24, 1
     ba8:	df c1       	rjmp	.+958    	; 0xf68 <.L80>
     baa:	3a e0       	ldi	r19, 0x0A	; 10
     bac:	53 2e       	mov	r5, r19

00000bae <.L3>:
     bae:	f6 01       	movw	r30, r12
     bb0:	23 81       	ldd	r18, Z+3	; 0x03
     bb2:	f7 01       	movw	r30, r14
     bb4:	23 fd       	sbrc	r18, 3
     bb6:	85 91       	lpm	r24, Z+
     bb8:	23 ff       	sbrs	r18, 3
     bba:	81 91       	ld	r24, Z+
     bbc:	7f 01       	movw	r14, r30
     bbe:	81 15       	cp	r24, r1
     bc0:	09 f4       	brne	.+2      	; 0xbc4 <L0^A+0x2>

00000bc2 <L0^A>:
     bc2:	37 c1       	rjmp	.+622    	; 0xe32 <.L4>
     bc4:	85 32       	cpi	r24, 0x25	; 37
     bc6:	39 f4       	brne	.+14     	; 0xbd6 <.L5>
     bc8:	23 fd       	sbrc	r18, 3
     bca:	95 91       	lpm	r25, Z+
     bcc:	23 ff       	sbrs	r18, 3
     bce:	91 91       	ld	r25, Z+
     bd0:	7f 01       	movw	r14, r30
     bd2:	95 32       	cpi	r25, 0x25	; 37
     bd4:	29 f4       	brne	.+10     	; 0xbe0 <.L81>

00000bd6 <.L5>:
     bd6:	b6 01       	movw	r22, r12
     bd8:	90 e0       	ldi	r25, 0x00	; 0
     bda:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     bde:	e7 cf       	rjmp	.-50     	; 0xbae <.L3>

00000be0 <.L81>:
     be0:	30 e0       	ldi	r19, 0x00	; 0
     be2:	91 2c       	mov	r9, r1
     be4:	61 2c       	mov	r6, r1
     be6:	71 2c       	mov	r7, r1

00000be8 <.L6>:
     be8:	f0 e2       	ldi	r31, 0x20	; 32
     bea:	7f 16       	cp	r7, r31
     bec:	40 f5       	brcc	.+80     	; 0xc3e <.L8>
     bee:	9b 32       	cpi	r25, 0x2B	; 43
     bf0:	d9 f0       	breq	.+54     	; 0xc28 <.L9>
     bf2:	58 f4       	brcc	.+22     	; 0xc0a <.L10>
     bf4:	90 32       	cpi	r25, 0x20	; 32
     bf6:	d1 f0       	breq	.+52     	; 0xc2c <.L11>
     bf8:	93 32       	cpi	r25, 0x23	; 35
     bfa:	f1 f0       	breq	.+60     	; 0xc38 <.L12>

00000bfc <.L13>:
     bfc:	9e 32       	cpi	r25, 0x2E	; 46
     bfe:	91 f5       	brne	.+100    	; 0xc64 <.L19>
     c00:	76 fc       	sbrc	r7, 6
     c02:	17 c1       	rjmp	.+558    	; 0xe32 <.L4>
     c04:	68 94       	set
     c06:	76 f8       	bld	r7, 6
     c08:	06 c0       	rjmp	.+12     	; 0xc16 <.L16>

00000c0a <.L10>:
     c0a:	9d 32       	cpi	r25, 0x2D	; 45
     c0c:	91 f0       	breq	.+36     	; 0xc32 <.L14>
     c0e:	90 33       	cpi	r25, 0x30	; 48
     c10:	c1 f4       	brne	.+48     	; 0xc42 <.L15>
     c12:	68 94       	set
     c14:	70 f8       	bld	r7, 0

00000c16 <.L16>:
     c16:	f7 01       	movw	r30, r14
     c18:	23 fd       	sbrc	r18, 3
     c1a:	95 91       	lpm	r25, Z+
     c1c:	23 ff       	sbrs	r18, 3
     c1e:	91 91       	ld	r25, Z+
     c20:	7f 01       	movw	r14, r30
     c22:	91 11       	cpse	r25, r1
     c24:	e1 cf       	rjmp	.-62     	; 0xbe8 <.L6>
     c26:	28 c0       	rjmp	.+80     	; 0xc78 <.L17>

00000c28 <.L9>:
     c28:	68 94       	set
     c2a:	71 f8       	bld	r7, 1

00000c2c <.L11>:
     c2c:	68 94       	set
     c2e:	72 f8       	bld	r7, 2
     c30:	f2 cf       	rjmp	.-28     	; 0xc16 <.L16>

00000c32 <.L14>:
     c32:	68 94       	set
     c34:	73 f8       	bld	r7, 3
     c36:	ef cf       	rjmp	.-34     	; 0xc16 <.L16>

00000c38 <.L12>:
     c38:	68 94       	set
     c3a:	74 f8       	bld	r7, 4
     c3c:	ec cf       	rjmp	.-40     	; 0xc16 <.L16>

00000c3e <.L8>:
     c3e:	77 fc       	sbrc	r7, 7
     c40:	1b c0       	rjmp	.+54     	; 0xc78 <.L17>

00000c42 <.L15>:
     c42:	80 ed       	ldi	r24, 0xD0	; 208
     c44:	89 0f       	add	r24, r25
     c46:	8a 30       	cpi	r24, 0x0A	; 10
     c48:	c8 f6       	brcc	.-78     	; 0xbfc <.L13>
     c4a:	76 fe       	sbrs	r7, 6
     c4c:	05 c0       	rjmp	.+10     	; 0xc58 <.L18>
     c4e:	95 9c       	mul	r9, r5
     c50:	80 0d       	add	r24, r0
     c52:	11 24       	eor	r1, r1
     c54:	98 2e       	mov	r9, r24
     c56:	df cf       	rjmp	.-66     	; 0xc16 <.L16>

00000c58 <.L18>:
     c58:	65 9c       	mul	r6, r5
     c5a:	80 0d       	add	r24, r0
     c5c:	11 24       	eor	r1, r1
     c5e:	68 2e       	mov	r6, r24
     c60:	7f 2a       	or	r7, r31
     c62:	d9 cf       	rjmp	.-78     	; 0xc16 <.L16>

00000c64 <.L19>:
     c64:	9c 36       	cpi	r25, 0x6C	; 108
     c66:	19 f4       	brne	.+6      	; 0xc6e <.L20>
     c68:	68 94       	set
     c6a:	77 f8       	bld	r7, 7
     c6c:	d4 cf       	rjmp	.-88     	; 0xc16 <.L16>

00000c6e <.L20>:
     c6e:	9c 34       	cpi	r25, 0x4C	; 76
     c70:	09 f4       	brne	.+2      	; 0xc74 <L0^A+0x2>

00000c72 <L0^A>:
     c72:	45 c0       	rjmp	.+138    	; 0xcfe <.L82>
     c74:	98 36       	cpi	r25, 0x68	; 104
     c76:	79 f2       	breq	.-98     	; 0xc16 <.L16>

00000c78 <.L17>:
     c78:	89 2f       	mov	r24, r25
     c7a:	8f 7d       	andi	r24, 0xDF	; 223
     c7c:	85 54       	subi	r24, 0x45	; 69
     c7e:	83 30       	cpi	r24, 0x03	; 3
     c80:	08 f4       	brcc	.+2      	; 0xc84 <L0^A+0x2>

00000c82 <L0^A>:
     c82:	3f c0       	rjmp	.+126    	; 0xd02 <.L21>
     c84:	93 36       	cpi	r25, 0x63	; 99
     c86:	09 f4       	brne	.+2      	; 0xc8a <L0^A+0x2>

00000c88 <L0^A>:
     c88:	61 c0       	rjmp	.+194    	; 0xd4c <.L22>
     c8a:	93 37       	cpi	r25, 0x73	; 115
     c8c:	09 f4       	brne	.+2      	; 0xc90 <L0^A+0x2>

00000c8e <L0^A>:
     c8e:	6b c0       	rjmp	.+214    	; 0xd66 <.L23>
     c90:	93 35       	cpi	r25, 0x53	; 83
     c92:	09 f4       	brne	.+2      	; 0xc96 <L0^A+0x2>

00000c94 <L0^A>:
     c94:	77 c0       	rjmp	.+238    	; 0xd84 <.L24>
     c96:	94 36       	cpi	r25, 0x64	; 100
     c98:	19 f0       	breq	.+6      	; 0xca0 <.L39>
     c9a:	99 36       	cpi	r25, 0x69	; 105
     c9c:	09 f0       	breq	.+2      	; 0xca0 <.L39>

00000c9e <L0^A>:
     c9e:	a4 c0       	rjmp	.+328    	; 0xde8 <.L40>

00000ca0 <.L39>:
     ca0:	f8 01       	movw	r30, r16
     ca2:	77 fe       	sbrs	r7, 7
     ca4:	9a c0       	rjmp	.+308    	; 0xdda <.L41>
     ca6:	61 91       	ld	r22, Z+
     ca8:	71 91       	ld	r23, Z+
     caa:	81 91       	ld	r24, Z+
     cac:	91 91       	ld	r25, Z+

00000cae <.L126>:
     cae:	8f 01       	movw	r16, r30
     cb0:	27 2d       	mov	r18, r7
     cb2:	2f 76       	andi	r18, 0x6F	; 111
     cb4:	82 2e       	mov	r8, r18
     cb6:	97 ff       	sbrs	r25, 7
     cb8:	04 c0       	rjmp	.+8      	; 0xcc2 <.L43>
     cba:	0e 94 5b 08 	call	0x10b6	; 0x10b6 <__negsi2>
     cbe:	68 94       	set
     cc0:	87 f8       	bld	r8, 7

00000cc2 <.L43>:
     cc2:	2a e0       	ldi	r18, 0x0A	; 10
     cc4:	30 e0       	ldi	r19, 0x00	; 0
     cc6:	5e 01       	movw	r10, r28
     cc8:	4f ef       	ldi	r20, 0xFF	; 255
     cca:	a4 1a       	sub	r10, r20
     ccc:	b4 0a       	sbc	r11, r20
     cce:	a5 01       	movw	r20, r10
     cd0:	0e 94 fd 07 	call	0xffa	; 0xffa <__ultoa_invert>
     cd4:	78 2e       	mov	r7, r24
     cd6:	7a 18       	sub	r7, r10

00000cd8 <.L44>:
     cd8:	86 fe       	sbrs	r8, 6
     cda:	cf c0       	rjmp	.+414    	; 0xe7a <.L54>
     cdc:	88 2d       	mov	r24, r8
     cde:	8e 7f       	andi	r24, 0xFE	; 254
     ce0:	79 14       	cp	r7, r9
     ce2:	08 f0       	brcs	.+2      	; 0xce6 <L0^A+0x2>

00000ce4 <L0^A>:
     ce4:	c9 c0       	rjmp	.+402    	; 0xe78 <.L88>
     ce6:	84 fe       	sbrs	r8, 4
     ce8:	1d c1       	rjmp	.+570    	; 0xf24 <.L89>
     cea:	82 fc       	sbrc	r8, 2
     cec:	11 c1       	rjmp	.+546    	; 0xf10 <.L90>
     cee:	2e ee       	ldi	r18, 0xEE	; 238
     cf0:	82 22       	and	r8, r18
     cf2:	b9 2c       	mov	r11, r9

00000cf4 <.L55>:
     cf4:	88 2d       	mov	r24, r8
     cf6:	86 78       	andi	r24, 0x86	; 134
     cf8:	09 f4       	brne	.+2      	; 0xcfc <L0^A+0x2>

00000cfa <L0^A>:
     cfa:	cb c0       	rjmp	.+406    	; 0xe92 <.L58>
     cfc:	0e c1       	rjmp	.+540    	; 0xf1a <.L128>

00000cfe <.L82>:
     cfe:	31 e0       	ldi	r19, 0x01	; 1
     d00:	8a cf       	rjmp	.-236    	; 0xc16 <.L16>

00000d02 <.L21>:
     d02:	31 15       	cp	r19, r1
     d04:	01 f1       	breq	.+64     	; 0xd46 <.L26>
     d06:	08 5f       	subi	r16, 0xF8	; 248
     d08:	1f 4f       	sbci	r17, 0xFF	; 255

00000d0a <.L27>:
     d0a:	8f e3       	ldi	r24, 0x3F	; 63
     d0c:	89 83       	std	Y+1, r24	; 0x01
     d0e:	21 e0       	ldi	r18, 0x01	; 1
     d10:	82 2e       	mov	r8, r18
     d12:	91 2c       	mov	r9, r1
     d14:	5e 01       	movw	r10, r28
     d16:	2f ef       	ldi	r18, 0xFF	; 255
     d18:	a2 1a       	sub	r10, r18
     d1a:	b2 0a       	sbc	r11, r18

00000d1c <.L28>:
     d1c:	e8 94       	clt
     d1e:	77 f8       	bld	r7, 7

00000d20 <.L30>:
     d20:	73 fc       	sbrc	r7, 3
     d22:	03 c0       	rjmp	.+6      	; 0xd2a <.L36>

00000d24 <.L32>:
     d24:	86 14       	cp	r8, r6
     d26:	91 04       	cpc	r9, r1
     d28:	f0 f1       	brcs	.+124    	; 0xda6 <.L34>

00000d2a <.L36>:
     d2a:	81 14       	cp	r8, r1
     d2c:	91 04       	cpc	r9, r1
     d2e:	09 f0       	breq	.+2      	; 0xd32 <.L77>

00000d30 <L0^A>:
     d30:	41 c0       	rjmp	.+130    	; 0xdb4 <.L37>

00000d32 <.L77>:
     d32:	61 14       	cp	r6, r1
     d34:	09 f4       	brne	.+2      	; 0xd38 <L0^A+0x2>

00000d36 <L0^A>:
     d36:	3b cf       	rjmp	.-394    	; 0xbae <.L3>
     d38:	b6 01       	movw	r22, r12
     d3a:	80 e2       	ldi	r24, 0x20	; 32
     d3c:	90 e0       	ldi	r25, 0x00	; 0
     d3e:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     d42:	6a 94       	dec	r6
     d44:	f6 cf       	rjmp	.-20     	; 0xd32 <.L77>

00000d46 <.L26>:
     d46:	0c 5f       	subi	r16, 0xFC	; 252
     d48:	1f 4f       	sbci	r17, 0xFF	; 255
     d4a:	df cf       	rjmp	.-66     	; 0xd0a <.L27>

00000d4c <.L22>:
     d4c:	f8 01       	movw	r30, r16
     d4e:	80 81       	ld	r24, Z
     d50:	89 83       	std	Y+1, r24	; 0x01
     d52:	0e 5f       	subi	r16, 0xFE	; 254
     d54:	1f 4f       	sbci	r17, 0xFF	; 255
     d56:	91 e0       	ldi	r25, 0x01	; 1
     d58:	89 2e       	mov	r8, r25
     d5a:	91 2c       	mov	r9, r1
     d5c:	5e 01       	movw	r10, r28
     d5e:	ff ef       	ldi	r31, 0xFF	; 255
     d60:	af 1a       	sub	r10, r31
     d62:	bf 0a       	sbc	r11, r31
     d64:	db cf       	rjmp	.-74     	; 0xd1c <.L28>

00000d66 <.L23>:
     d66:	f8 01       	movw	r30, r16
     d68:	a1 90       	ld	r10, Z+
     d6a:	b1 90       	ld	r11, Z+
     d6c:	8f 01       	movw	r16, r30
     d6e:	69 2d       	mov	r22, r9
     d70:	70 e0       	ldi	r23, 0x00	; 0
     d72:	76 fc       	sbrc	r7, 6
     d74:	02 c0       	rjmp	.+4      	; 0xd7a <.L29>
     d76:	6f ef       	ldi	r22, 0xFF	; 255
     d78:	7f ef       	ldi	r23, 0xFF	; 255

00000d7a <.L29>:
     d7a:	c5 01       	movw	r24, r10
     d7c:	0e 94 c2 07 	call	0xf84	; 0xf84 <strnlen>
     d80:	4c 01       	movw	r8, r24
     d82:	cc cf       	rjmp	.-104    	; 0xd1c <.L28>

00000d84 <.L24>:
     d84:	f8 01       	movw	r30, r16
     d86:	a1 90       	ld	r10, Z+
     d88:	b1 90       	ld	r11, Z+
     d8a:	8f 01       	movw	r16, r30
     d8c:	69 2d       	mov	r22, r9
     d8e:	70 e0       	ldi	r23, 0x00	; 0
     d90:	76 fc       	sbrc	r7, 6
     d92:	02 c0       	rjmp	.+4      	; 0xd98 <.L31>
     d94:	6f ef       	ldi	r22, 0xFF	; 255
     d96:	7f ef       	ldi	r23, 0xFF	; 255

00000d98 <.L31>:
     d98:	c5 01       	movw	r24, r10
     d9a:	0e 94 b7 07 	call	0xf6e	; 0xf6e <strnlen_P>
     d9e:	4c 01       	movw	r8, r24
     da0:	68 94       	set
     da2:	77 f8       	bld	r7, 7
     da4:	bd cf       	rjmp	.-134    	; 0xd20 <.L30>

00000da6 <.L34>:
     da6:	b6 01       	movw	r22, r12
     da8:	80 e2       	ldi	r24, 0x20	; 32
     daa:	90 e0       	ldi	r25, 0x00	; 0
     dac:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     db0:	6a 94       	dec	r6
     db2:	b8 cf       	rjmp	.-144    	; 0xd24 <.L32>

00000db4 <.L37>:
     db4:	f5 01       	movw	r30, r10
     db6:	77 fc       	sbrc	r7, 7
     db8:	85 91       	lpm	r24, Z+
     dba:	77 fe       	sbrs	r7, 7
     dbc:	81 91       	ld	r24, Z+
     dbe:	5f 01       	movw	r10, r30
     dc0:	b6 01       	movw	r22, r12
     dc2:	90 e0       	ldi	r25, 0x00	; 0
     dc4:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     dc8:	81 e0       	ldi	r24, 0x01	; 1
     dca:	61 10       	cpse	r6, r1
     dcc:	01 c0       	rjmp	.+2      	; 0xdd0 <.L35>
     dce:	80 e0       	ldi	r24, 0x00	; 0

00000dd0 <.L35>:
     dd0:	68 1a       	sub	r6, r24
     dd2:	f1 e0       	ldi	r31, 0x01	; 1
     dd4:	8f 1a       	sub	r8, r31
     dd6:	91 08       	sbc	r9, r1
     dd8:	a8 cf       	rjmp	.-176    	; 0xd2a <.L36>

00000dda <.L41>:
     dda:	61 91       	ld	r22, Z+
     ddc:	71 91       	ld	r23, Z+
     dde:	87 2f       	mov	r24, r23
     de0:	88 0f       	add	r24, r24
     de2:	88 0b       	sbc	r24, r24
     de4:	98 2f       	mov	r25, r24
     de6:	63 cf       	rjmp	.-314    	; 0xcae <.L126>

00000de8 <.L40>:
     de8:	95 37       	cpi	r25, 0x75	; 117
     dea:	c9 f4       	brne	.+50     	; 0xe1e <.L45>
     dec:	87 2c       	mov	r8, r7
     dee:	e8 94       	clt
     df0:	84 f8       	bld	r8, 4
     df2:	2a e0       	ldi	r18, 0x0A	; 10
     df4:	30 e0       	ldi	r19, 0x00	; 0

00000df6 <.L46>:
     df6:	f8 01       	movw	r30, r16
     df8:	87 fe       	sbrs	r8, 7
     dfa:	39 c0       	rjmp	.+114    	; 0xe6e <.L52>
     dfc:	61 91       	ld	r22, Z+
     dfe:	71 91       	ld	r23, Z+
     e00:	81 91       	ld	r24, Z+
     e02:	91 91       	ld	r25, Z+

00000e04 <.L127>:
     e04:	8f 01       	movw	r16, r30
     e06:	5e 01       	movw	r10, r28
     e08:	ff ef       	ldi	r31, 0xFF	; 255
     e0a:	af 1a       	sub	r10, r31
     e0c:	bf 0a       	sbc	r11, r31
     e0e:	a5 01       	movw	r20, r10
     e10:	0e 94 fd 07 	call	0xffa	; 0xffa <__ultoa_invert>
     e14:	78 2e       	mov	r7, r24
     e16:	7a 18       	sub	r7, r10
     e18:	e8 94       	clt
     e1a:	87 f8       	bld	r8, 7
     e1c:	5d cf       	rjmp	.-326    	; 0xcd8 <.L44>

00000e1e <.L45>:
     e1e:	87 2d       	mov	r24, r7
     e20:	89 7f       	andi	r24, 0xF9	; 249
     e22:	88 2e       	mov	r8, r24
     e24:	90 37       	cpi	r25, 0x70	; 112
     e26:	99 f0       	breq	.+38     	; 0xe4e <.L47>
     e28:	58 f4       	brcc	.+22     	; 0xe40 <.L48>
     e2a:	98 35       	cpi	r25, 0x58	; 88
     e2c:	a9 f0       	breq	.+42     	; 0xe58 <.L49>
     e2e:	9f 36       	cpi	r25, 0x6F	; 111
     e30:	d9 f0       	breq	.+54     	; 0xe68 <.L85>

00000e32 <.L4>:
     e32:	f6 01       	movw	r30, r12
     e34:	86 81       	ldd	r24, Z+6	; 0x06
     e36:	97 81       	ldd	r25, Z+7	; 0x07

00000e38 <.L1>:
     e38:	2b 96       	adiw	r28, 0x0b	; 11
     e3a:	ef e0       	ldi	r30, 0x0F	; 15
     e3c:	0c 94 82 08 	jmp	0x1104	; 0x1104 <.Loc.3>

00000e40 <.L48>:
     e40:	98 37       	cpi	r25, 0x78	; 120
     e42:	b9 f7       	brne	.-18     	; 0xe32 <.L4>
     e44:	74 fc       	sbrc	r7, 4
     e46:	05 c0       	rjmp	.+10     	; 0xe52 <.L51>

00000e48 <.L86>:
     e48:	20 e1       	ldi	r18, 0x10	; 16
     e4a:	30 e0       	ldi	r19, 0x00	; 0
     e4c:	d4 cf       	rjmp	.-88     	; 0xdf6 <.L46>

00000e4e <.L47>:
     e4e:	68 94       	set
     e50:	84 f8       	bld	r8, 4

00000e52 <.L51>:
     e52:	68 94       	set
     e54:	82 f8       	bld	r8, 2
     e56:	f8 cf       	rjmp	.-16     	; 0xe48 <.L86>

00000e58 <.L49>:
     e58:	74 fe       	sbrs	r7, 4
     e5a:	03 c0       	rjmp	.+6      	; 0xe62 <.L87>
     e5c:	e7 2d       	mov	r30, r7
     e5e:	e6 60       	ori	r30, 0x06	; 6
     e60:	8e 2e       	mov	r8, r30

00000e62 <.L87>:
     e62:	20 e1       	ldi	r18, 0x10	; 16
     e64:	32 e0       	ldi	r19, 0x02	; 2
     e66:	c7 cf       	rjmp	.-114    	; 0xdf6 <.L46>

00000e68 <.L85>:
     e68:	28 e0       	ldi	r18, 0x08	; 8
     e6a:	30 e0       	ldi	r19, 0x00	; 0
     e6c:	c4 cf       	rjmp	.-120    	; 0xdf6 <.L46>

00000e6e <.L52>:
     e6e:	61 91       	ld	r22, Z+
     e70:	71 91       	ld	r23, Z+
     e72:	80 e0       	ldi	r24, 0x00	; 0
     e74:	90 e0       	ldi	r25, 0x00	; 0
     e76:	c6 cf       	rjmp	.-116    	; 0xe04 <.L127>

00000e78 <.L88>:
     e78:	88 2e       	mov	r8, r24

00000e7a <.L54>:
     e7a:	b7 2c       	mov	r11, r7
     e7c:	84 fe       	sbrs	r8, 4
     e7e:	3a cf       	rjmp	.-396    	; 0xcf4 <.L55>

00000e80 <.L56>:
     e80:	fe 01       	movw	r30, r28
     e82:	e7 0d       	add	r30, r7
     e84:	f1 1d       	adc	r31, r1
     e86:	80 81       	ld	r24, Z
     e88:	80 33       	cpi	r24, 0x30	; 48
     e8a:	09 f0       	breq	.+2      	; 0xe8e <L0^A+0x2>

00000e8c <L0^A>:
     e8c:	44 c0       	rjmp	.+136    	; 0xf16 <.L57>
     e8e:	49 ee       	ldi	r20, 0xE9	; 233
     e90:	84 22       	and	r8, r20

00000e92 <.L58>:
     e92:	83 fc       	sbrc	r8, 3
     e94:	0e c0       	rjmp	.+28     	; 0xeb2 <.L60>
     e96:	80 fe       	sbrs	r8, 0
     e98:	51 c0       	rjmp	.+162    	; 0xf3c <.L92>
     e9a:	97 2c       	mov	r9, r7
     e9c:	b6 14       	cp	r11, r6
     e9e:	18 f4       	brcc	.+6      	; 0xea6 <.L79>
     ea0:	96 0c       	add	r9, r6
     ea2:	9b 18       	sub	r9, r11
     ea4:	b6 2c       	mov	r11, r6

00000ea6 <.L79>:
     ea6:	86 2d       	mov	r24, r6
     ea8:	8b 19       	sub	r24, r11
     eaa:	6b 14       	cp	r6, r11
     eac:	08 f4       	brcc	.+2      	; 0xeb0 <.L65>
     eae:	80 e0       	ldi	r24, 0x00	; 0

00000eb0 <.L65>:
     eb0:	b8 0e       	add	r11, r24

00000eb2 <.L60>:
     eb2:	b6 14       	cp	r11, r6
     eb4:	08 f0       	brcs	.+2      	; 0xeb8 <L0^A+0x2>

00000eb6 <L0^A>:
     eb6:	44 c0       	rjmp	.+136    	; 0xf40 <.L94>
     eb8:	6b 18       	sub	r6, r11

00000eba <.L67>:
     eba:	84 fe       	sbrs	r8, 4
     ebc:	43 c0       	rjmp	.+134    	; 0xf44 <.L68>
     ebe:	b6 01       	movw	r22, r12
     ec0:	80 e3       	ldi	r24, 0x30	; 48
     ec2:	90 e0       	ldi	r25, 0x00	; 0
     ec4:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     ec8:	82 fe       	sbrs	r8, 2
     eca:	09 c0       	rjmp	.+18     	; 0xede <.L74>
     ecc:	88 e5       	ldi	r24, 0x58	; 88
     ece:	90 e0       	ldi	r25, 0x00	; 0
     ed0:	81 fc       	sbrc	r8, 1
     ed2:	02 c0       	rjmp	.+4      	; 0xed8 <.L70>
     ed4:	88 e7       	ldi	r24, 0x78	; 120
     ed6:	90 e0       	ldi	r25, 0x00	; 0

00000ed8 <.L70>:
     ed8:	b6 01       	movw	r22, r12

00000eda <.L129>:
     eda:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>

00000ede <.L74>:
     ede:	79 14       	cp	r7, r9
     ee0:	e0 f1       	brcs	.+120    	; 0xf5a <.L75>
     ee2:	5e 01       	movw	r10, r28
     ee4:	8f ef       	ldi	r24, 0xFF	; 255
     ee6:	a8 1a       	sub	r10, r24
     ee8:	b8 0a       	sbc	r11, r24
     eea:	7a 94       	dec	r7
     eec:	82 e0       	ldi	r24, 0x02	; 2
     eee:	88 2e       	mov	r8, r24
     ef0:	91 2c       	mov	r9, r1
     ef2:	8c 0e       	add	r8, r28
     ef4:	9d 1e       	adc	r9, r29
     ef6:	87 0c       	add	r8, r7
     ef8:	91 1c       	adc	r9, r1

00000efa <.L76>:
     efa:	f4 01       	movw	r30, r8
     efc:	82 91       	ld	r24, -Z
     efe:	4f 01       	movw	r8, r30
     f00:	b6 01       	movw	r22, r12
     f02:	90 e0       	ldi	r25, 0x00	; 0
     f04:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     f08:	8a 14       	cp	r8, r10
     f0a:	9b 04       	cpc	r9, r11
     f0c:	b1 f7       	brne	.-20     	; 0xefa <.L76>
     f0e:	11 cf       	rjmp	.-478    	; 0xd32 <.L77>

00000f10 <.L90>:
     f10:	b9 2c       	mov	r11, r9
     f12:	88 2e       	mov	r8, r24
     f14:	b5 cf       	rjmp	.-150    	; 0xe80 <.L56>

00000f16 <.L57>:
     f16:	82 fc       	sbrc	r8, 2
     f18:	02 c0       	rjmp	.+4      	; 0xf1e <.L59>

00000f1a <.L128>:
     f1a:	b3 94       	inc	r11
     f1c:	ba cf       	rjmp	.-140    	; 0xe92 <.L58>

00000f1e <.L59>:
     f1e:	b3 94       	inc	r11
     f20:	b3 94       	inc	r11
     f22:	b7 cf       	rjmp	.-146    	; 0xe92 <.L58>

00000f24 <.L89>:
     f24:	b9 2c       	mov	r11, r9
     f26:	88 2e       	mov	r8, r24
     f28:	e5 ce       	rjmp	.-566    	; 0xcf4 <.L55>

00000f2a <.L63>:
     f2a:	b6 01       	movw	r22, r12
     f2c:	80 e2       	ldi	r24, 0x20	; 32
     f2e:	90 e0       	ldi	r25, 0x00	; 0
     f30:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     f34:	a3 94       	inc	r10

00000f36 <.L61>:
     f36:	a6 14       	cp	r10, r6
     f38:	c0 f3       	brcs	.-16     	; 0xf2a <.L63>
     f3a:	b5 cf       	rjmp	.-150    	; 0xea6 <.L79>

00000f3c <.L92>:
     f3c:	ab 2c       	mov	r10, r11
     f3e:	fb cf       	rjmp	.-10     	; 0xf36 <.L61>

00000f40 <.L94>:
     f40:	61 2c       	mov	r6, r1
     f42:	bb cf       	rjmp	.-138    	; 0xeba <.L67>

00000f44 <.L68>:
     f44:	88 2d       	mov	r24, r8
     f46:	86 78       	andi	r24, 0x86	; 134
     f48:	51 f2       	breq	.-108    	; 0xede <.L74>
     f4a:	80 e2       	ldi	r24, 0x20	; 32
     f4c:	81 fc       	sbrc	r8, 1
     f4e:	8b e2       	ldi	r24, 0x2B	; 43
     f50:	87 fc       	sbrc	r8, 7
     f52:	8d e2       	ldi	r24, 0x2D	; 45
     f54:	b6 01       	movw	r22, r12
     f56:	90 e0       	ldi	r25, 0x00	; 0
     f58:	c0 cf       	rjmp	.-128    	; 0xeda <.L129>

00000f5a <.L75>:
     f5a:	b6 01       	movw	r22, r12
     f5c:	80 e3       	ldi	r24, 0x30	; 48
     f5e:	90 e0       	ldi	r25, 0x00	; 0
     f60:	0e 94 cd 07 	call	0xf9a	; 0xf9a <fputc>
     f64:	9a 94       	dec	r9
     f66:	bb cf       	rjmp	.-138    	; 0xede <.L74>

00000f68 <.L80>:
     f68:	8f ef       	ldi	r24, 0xFF	; 255
     f6a:	9f ef       	ldi	r25, 0xFF	; 255
     f6c:	65 cf       	rjmp	.-310    	; 0xe38 <.L1>

00000f6e <strnlen_P>:
     f6e:	fc 01       	movw	r30, r24

00000f70 <.L_strnlen_P_loop>:
     f70:	05 90       	lpm	r0, Z+
     f72:	61 50       	subi	r22, 0x01	; 1
     f74:	70 40       	sbci	r23, 0x00	; 0
     f76:	01 10       	cpse	r0, r1
     f78:	d8 f7       	brcc	.-10     	; 0xf70 <.L_strnlen_P_loop>
     f7a:	80 95       	com	r24
     f7c:	90 95       	com	r25
     f7e:	8e 0f       	add	r24, r30
     f80:	9f 1f       	adc	r25, r31
     f82:	08 95       	ret

00000f84 <strnlen>:
     f84:	fc 01       	movw	r30, r24

00000f86 <.L_strnlen_loop>:
     f86:	61 50       	subi	r22, 0x01	; 1
     f88:	70 40       	sbci	r23, 0x00	; 0
     f8a:	01 90       	ld	r0, Z+
     f8c:	01 10       	cpse	r0, r1
     f8e:	d8 f7       	brcc	.-10     	; 0xf86 <.L_strnlen_loop>
     f90:	80 95       	com	r24
     f92:	90 95       	com	r25
     f94:	8e 0f       	add	r24, r30
     f96:	9f 1f       	adc	r25, r31
     f98:	08 95       	ret

00000f9a <fputc>:
     f9a:	0f 93       	push	r16
     f9c:	1f 93       	push	r17
     f9e:	cf 93       	push	r28
     fa0:	df 93       	push	r29
     fa2:	18 2f       	mov	r17, r24
     fa4:	09 2f       	mov	r16, r25
     fa6:	eb 01       	movw	r28, r22
     fa8:	8b 81       	ldd	r24, Y+3	; 0x03
     faa:	81 fd       	sbrc	r24, 1
     fac:	09 c0       	rjmp	.+18     	; 0xfc0 <.L2>

00000fae <.L7>:
     fae:	0f ef       	ldi	r16, 0xFF	; 255
     fb0:	1f ef       	ldi	r17, 0xFF	; 255

00000fb2 <.L3>:
     fb2:	81 2f       	mov	r24, r17
     fb4:	90 2f       	mov	r25, r16
     fb6:	df 91       	pop	r29
     fb8:	cf 91       	pop	r28
     fba:	1f 91       	pop	r17
     fbc:	0f 91       	pop	r16
     fbe:	08 95       	ret

00000fc0 <.L2>:
     fc0:	82 ff       	sbrs	r24, 2
     fc2:	14 c0       	rjmp	.+40     	; 0xfec <.L4>
     fc4:	2e 81       	ldd	r18, Y+6	; 0x06
     fc6:	3f 81       	ldd	r19, Y+7	; 0x07
     fc8:	8c 81       	ldd	r24, Y+4	; 0x04
     fca:	9d 81       	ldd	r25, Y+5	; 0x05
     fcc:	28 17       	cp	r18, r24
     fce:	39 07       	cpc	r19, r25
     fd0:	3c f4       	brge	.+14     	; 0xfe0 <.L8>
     fd2:	e8 81       	ld	r30, Y
     fd4:	f9 81       	ldd	r31, Y+1	; 0x01
     fd6:	cf 01       	movw	r24, r30
     fd8:	01 96       	adiw	r24, 0x01	; 1
     fda:	88 83       	st	Y, r24
     fdc:	99 83       	std	Y+1, r25	; 0x01
     fde:	10 83       	st	Z, r17

00000fe0 <.L8>:
     fe0:	8e 81       	ldd	r24, Y+6	; 0x06
     fe2:	9f 81       	ldd	r25, Y+7	; 0x07
     fe4:	01 96       	adiw	r24, 0x01	; 1
     fe6:	8e 83       	std	Y+6, r24	; 0x06
     fe8:	9f 83       	std	Y+7, r25	; 0x07
     fea:	e3 cf       	rjmp	.-58     	; 0xfb2 <.L3>

00000fec <.L4>:
     fec:	e8 85       	ldd	r30, Y+8	; 0x08
     fee:	f9 85       	ldd	r31, Y+9	; 0x09
     ff0:	81 2f       	mov	r24, r17
     ff2:	09 95       	icall
     ff4:	89 2b       	or	r24, r25
     ff6:	a1 f3       	breq	.-24     	; 0xfe0 <.L8>
     ff8:	da cf       	rjmp	.-76     	; 0xfae <.L7>

00000ffa <__ultoa_invert>:
     ffa:	fa 01       	movw	r30, r20
     ffc:	aa 27       	eor	r26, r26
     ffe:	28 30       	cpi	r18, 0x08	; 8
    1000:	51 f1       	breq	.+84     	; 0x1056 <.L_oct>
    1002:	20 31       	cpi	r18, 0x10	; 16
    1004:	81 f1       	breq	.+96     	; 0x1066 <.L_hex>
    1006:	e8 94       	clt

00001008 <.L_dec_loop>:
    1008:	6f 93       	push	r22
    100a:	6e 7f       	andi	r22, 0xFE	; 254
    100c:	6e 5f       	subi	r22, 0xFE	; 254
    100e:	7f 4f       	sbci	r23, 0xFF	; 255
    1010:	8f 4f       	sbci	r24, 0xFF	; 255
    1012:	9f 4f       	sbci	r25, 0xFF	; 255
    1014:	af 4f       	sbci	r26, 0xFF	; 255
    1016:	b1 e0       	ldi	r27, 0x01	; 1
    1018:	3e d0       	rcall	.+124    	; 0x1096 <.L_div_add>
    101a:	b4 e0       	ldi	r27, 0x04	; 4
    101c:	3c d0       	rcall	.+120    	; 0x1096 <.L_div_add>
    101e:	67 0f       	add	r22, r23
    1020:	78 1f       	adc	r23, r24
    1022:	89 1f       	adc	r24, r25
    1024:	9a 1f       	adc	r25, r26
    1026:	a1 1d       	adc	r26, r1
    1028:	68 0f       	add	r22, r24
    102a:	79 1f       	adc	r23, r25
    102c:	8a 1f       	adc	r24, r26
    102e:	91 1d       	adc	r25, r1
    1030:	a1 1d       	adc	r26, r1
    1032:	6a 0f       	add	r22, r26
    1034:	71 1d       	adc	r23, r1
    1036:	81 1d       	adc	r24, r1
    1038:	91 1d       	adc	r25, r1
    103a:	a1 1d       	adc	r26, r1
    103c:	20 d0       	rcall	.+64     	; 0x107e <.L_lsr_4>
    103e:	09 f4       	brne	.+2      	; 0x1042 <.L1^B1>
    1040:	68 94       	set

00001042 <.L1^B1>:
    1042:	3f 91       	pop	r19
    1044:	2a e0       	ldi	r18, 0x0A	; 10
    1046:	26 9f       	mul	r18, r22
    1048:	11 24       	eor	r1, r1
    104a:	30 19       	sub	r19, r0
    104c:	30 5d       	subi	r19, 0xD0	; 208
    104e:	31 93       	st	Z+, r19
    1050:	de f6       	brtc	.-74     	; 0x1008 <.L_dec_loop>

00001052 <.L_eos>:
    1052:	cf 01       	movw	r24, r30
    1054:	08 95       	ret

00001056 <.L_oct>:
    1056:	46 2f       	mov	r20, r22
    1058:	47 70       	andi	r20, 0x07	; 7
    105a:	40 5d       	subi	r20, 0xD0	; 208
    105c:	41 93       	st	Z+, r20
    105e:	b3 e0       	ldi	r27, 0x03	; 3
    1060:	0f d0       	rcall	.+30     	; 0x1080 <.L_lsr>
    1062:	c9 f7       	brne	.-14     	; 0x1056 <.L_oct>
    1064:	f6 cf       	rjmp	.-20     	; 0x1052 <.L_eos>

00001066 <.L_hex>:
    1066:	46 2f       	mov	r20, r22
    1068:	4f 70       	andi	r20, 0x0F	; 15
    106a:	40 5d       	subi	r20, 0xD0	; 208
    106c:	4a 33       	cpi	r20, 0x3A	; 58
    106e:	18 f0       	brcs	.+6      	; 0x1076 <.L3^B1>
    1070:	49 5d       	subi	r20, 0xD9	; 217
    1072:	31 fd       	sbrc	r19, 1
    1074:	40 52       	subi	r20, 0x20	; 32

00001076 <.L3^B1>:
    1076:	41 93       	st	Z+, r20
    1078:	02 d0       	rcall	.+4      	; 0x107e <.L_lsr_4>
    107a:	a9 f7       	brne	.-22     	; 0x1066 <.L_hex>
    107c:	ea cf       	rjmp	.-44     	; 0x1052 <.L_eos>

0000107e <.L_lsr_4>:
    107e:	b4 e0       	ldi	r27, 0x04	; 4

00001080 <.L_lsr>:
    1080:	a6 95       	lsr	r26
    1082:	97 95       	ror	r25
    1084:	87 95       	ror	r24
    1086:	77 95       	ror	r23
    1088:	67 95       	ror	r22
    108a:	ba 95       	dec	r27
    108c:	c9 f7       	brne	.-14     	; 0x1080 <.L_lsr>
    108e:	00 97       	sbiw	r24, 0x00	; 0
    1090:	61 05       	cpc	r22, r1
    1092:	71 05       	cpc	r23, r1
    1094:	08 95       	ret

00001096 <.L_div_add>:
    1096:	9b 01       	movw	r18, r22
    1098:	ac 01       	movw	r20, r24
    109a:	0a 2e       	mov	r0, r26

0000109c <.L7^B1>:
    109c:	06 94       	lsr	r0
    109e:	57 95       	ror	r21
    10a0:	47 95       	ror	r20
    10a2:	37 95       	ror	r19
    10a4:	27 95       	ror	r18
    10a6:	ba 95       	dec	r27
    10a8:	c9 f7       	brne	.-14     	; 0x109c <.L7^B1>
    10aa:	62 0f       	add	r22, r18
    10ac:	73 1f       	adc	r23, r19
    10ae:	84 1f       	adc	r24, r20
    10b0:	95 1f       	adc	r25, r21
    10b2:	a0 1d       	adc	r26, r0
    10b4:	08 95       	ret

000010b6 <__negsi2>:
    10b6:	90 95       	com	r25
    10b8:	80 95       	com	r24
    10ba:	70 95       	com	r23
    10bc:	61 95       	neg	r22
    10be:	7f 4f       	sbci	r23, 0xFF	; 255
    10c0:	8f 4f       	sbci	r24, 0xFF	; 255
    10c2:	9f 4f       	sbci	r25, 0xFF	; 255

000010c4 <.Loc.1>:
    10c4:	08 95       	ret

000010c6 <__prologue_saves__>:
    10c6:	2f 92       	push	r2

000010c8 <.Loc.1>:
    10c8:	3f 92       	push	r3

000010ca <.Loc.2>:
    10ca:	4f 92       	push	r4

000010cc <.Loc.3>:
    10cc:	5f 92       	push	r5

000010ce <.Loc.4>:
    10ce:	6f 92       	push	r6

000010d0 <.Loc.5>:
    10d0:	7f 92       	push	r7

000010d2 <.Loc.6>:
    10d2:	8f 92       	push	r8

000010d4 <.Loc.7>:
    10d4:	9f 92       	push	r9

000010d6 <.Loc.8>:
    10d6:	af 92       	push	r10

000010d8 <.Loc.9>:
    10d8:	bf 92       	push	r11

000010da <.Loc.10>:
    10da:	cf 92       	push	r12

000010dc <.Loc.11>:
    10dc:	df 92       	push	r13

000010de <.Loc.12>:
    10de:	ef 92       	push	r14

000010e0 <.Loc.13>:
    10e0:	ff 92       	push	r15

000010e2 <.Loc.14>:
    10e2:	0f 93       	push	r16

000010e4 <.Loc.15>:
    10e4:	1f 93       	push	r17

000010e6 <.Loc.16>:
    10e6:	cf 93       	push	r28

000010e8 <.Loc.17>:
    10e8:	df 93       	push	r29

000010ea <.Loc.18>:
    10ea:	cd b7       	in	r28, 0x3d	; 61

000010ec <.Loc.19>:
    10ec:	de b7       	in	r29, 0x3e	; 62

000010ee <.Loc.20>:
    10ee:	ca 1b       	sub	r28, r26

000010f0 <.Loc.21>:
    10f0:	db 0b       	sbc	r29, r27

000010f2 <.Loc.22>:
    10f2:	0f b6       	in	r0, 0x3f	; 63

000010f4 <.Loc.23>:
    10f4:	f8 94       	cli

000010f6 <.Loc.24>:
    10f6:	de bf       	out	0x3e, r29	; 62

000010f8 <.Loc.25>:
    10f8:	0f be       	out	0x3f, r0	; 63

000010fa <.Loc.26>:
    10fa:	cd bf       	out	0x3d, r28	; 61

000010fc <.Loc.27>:
    10fc:	09 94       	ijmp

000010fe <__epilogue_restores__>:
    10fe:	2a 88       	ldd	r2, Y+18	; 0x12

00001100 <.Loc.1>:
    1100:	39 88       	ldd	r3, Y+17	; 0x11

00001102 <.Loc.2>:
    1102:	48 88       	ldd	r4, Y+16	; 0x10

00001104 <.Loc.3>:
    1104:	5f 84       	ldd	r5, Y+15	; 0x0f

00001106 <.Loc.4>:
    1106:	6e 84       	ldd	r6, Y+14	; 0x0e

00001108 <.Loc.5>:
    1108:	7d 84       	ldd	r7, Y+13	; 0x0d

0000110a <.Loc.6>:
    110a:	8c 84       	ldd	r8, Y+12	; 0x0c

0000110c <.Loc.7>:
    110c:	9b 84       	ldd	r9, Y+11	; 0x0b

0000110e <.Loc.8>:
    110e:	aa 84       	ldd	r10, Y+10	; 0x0a

00001110 <.Loc.9>:
    1110:	b9 84       	ldd	r11, Y+9	; 0x09

00001112 <.Loc.10>:
    1112:	c8 84       	ldd	r12, Y+8	; 0x08

00001114 <.Loc.11>:
    1114:	df 80       	ldd	r13, Y+7	; 0x07

00001116 <.Loc.12>:
    1116:	ee 80       	ldd	r14, Y+6	; 0x06

00001118 <.Loc.13>:
    1118:	fd 80       	ldd	r15, Y+5	; 0x05

0000111a <.Loc.14>:
    111a:	0c 81       	ldd	r16, Y+4	; 0x04

0000111c <.Loc.15>:
    111c:	1b 81       	ldd	r17, Y+3	; 0x03

0000111e <.Loc.16>:
    111e:	aa 81       	ldd	r26, Y+2	; 0x02

00001120 <.Loc.17>:
    1120:	b9 81       	ldd	r27, Y+1	; 0x01

00001122 <.Loc.18>:
    1122:	ce 0f       	add	r28, r30

00001124 <.Loc.19>:
    1124:	d1 1d       	adc	r29, r1

00001126 <.Loc.20>:
    1126:	0f b6       	in	r0, 0x3f	; 63

00001128 <.Loc.21>:
    1128:	f8 94       	cli

0000112a <.Loc.22>:
    112a:	de bf       	out	0x3e, r29	; 62

0000112c <.Loc.23>:
    112c:	0f be       	out	0x3f, r0	; 63

0000112e <.Loc.24>:
    112e:	cd bf       	out	0x3d, r28	; 61

00001130 <.Loc.25>:
    1130:	ed 01       	movw	r28, r26

00001132 <.Loc.26>:
    1132:	08 95       	ret

00001134 <_exit>:
    1134:	f8 94       	cli

00001136 <__stop_program>:
    1136:	ff cf       	rjmp	.-2      	; 0x1136 <__stop_program>
