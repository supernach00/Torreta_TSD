
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
       4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
       8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
       c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      1c:	0c 94 9a 05 	jmp	0xb34	; 0xb34 <__vector_7>
      20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      38:	0c 94 9b 05 	jmp	0xb36	; 0xb36 <__vector_14>
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
      7a:	e4 e9       	ldi	r30, 0x94	; 148

0000007c <.Loc.4>:
      7c:	f7 e1       	ldi	r31, 0x17	; 23

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
      94:	a6 31       	cpi	r26, 0x16	; 22

00000096 <.Loc.6>:
      96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
      98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
      9a:	0e 94 1d 06 	call	0xc3a	; 0xc3a <main>
      9e:	0c 94 c8 0b 	jmp	0x1790	; 0x1790 <_exit>

000000a2 <__bad_interrupt>:
      a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <VL53L0X_test>:
      a6:	cf 93       	push	r28
      a8:	df 93       	push	r29
      aa:	0f 92       	push	r0
      ac:	cd b7       	in	r28, 0x3d	; 61
      ae:	de b7       	in	r29, 0x3e	; 62
      b0:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_init>
      b4:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
      b8:	60 e0       	ldi	r22, 0x00	; 0
      ba:	70 e0       	ldi	r23, 0x00	; 0
      bc:	89 e2       	ldi	r24, 0x29	; 41
      be:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
      c2:	80 ec       	ldi	r24, 0xC0	; 192
      c4:	0e 94 b0 02 	call	0x560	; 0x560 <I2C_write>
      c8:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
      cc:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
      d0:	61 e0       	ldi	r22, 0x01	; 1
      d2:	70 e0       	ldi	r23, 0x00	; 0
      d4:	89 e2       	ldi	r24, 0x29	; 41
      d6:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
      da:	0e 94 ce 02 	call	0x59c	; 0x59c <I2C_read_NACK>
      de:	89 83       	std	Y+1, r24	; 0x01
      e0:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
      e4:	81 e0       	ldi	r24, 0x01	; 1
      e6:	99 81       	ldd	r25, Y+1	; 0x01
      e8:	9e 3e       	cpi	r25, 0xEE	; 238
      ea:	09 f0       	breq	.+2      	; 0xee <.L2>
      ec:	80 e0       	ldi	r24, 0x00	; 0

000000ee <.L2>:
      ee:	0f 90       	pop	r0
      f0:	df 91       	pop	r29
      f2:	cf 91       	pop	r28
      f4:	08 95       	ret

000000f6 <SERVO_set_angulo>:
      f6:	9c 01       	movw	r18, r24
      f8:	61 30       	cpi	r22, 0x01	; 1
      fa:	71 05       	cpc	r23, r1
      fc:	90 f0       	brcs	.+36     	; 0x122 <.L2>
      fe:	09 f5       	brne	.+66     	; 0x142 <.L1>
     100:	44 e1       	ldi	r20, 0x14	; 20
     102:	42 9f       	mul	r20, r18
     104:	c0 01       	movw	r24, r0
     106:	43 9f       	mul	r20, r19
     108:	90 0d       	add	r25, r0
     10a:	11 24       	eor	r1, r1
     10c:	69 e0       	ldi	r22, 0x09	; 9
     10e:	70 e0       	ldi	r23, 0x00	; 0
     110:	0e 94 72 06 	call	0xce4	; 0xce4 <__udivmodhi4>
     114:	69 51       	subi	r22, 0x19	; 25
     116:	7c 4f       	sbci	r23, 0xFC	; 252
     118:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
     11c:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
     120:	08 95       	ret

00000122 <.L2>:
     122:	44 e1       	ldi	r20, 0x14	; 20
     124:	42 9f       	mul	r20, r18
     126:	c0 01       	movw	r24, r0
     128:	43 9f       	mul	r20, r19
     12a:	90 0d       	add	r25, r0
     12c:	11 24       	eor	r1, r1
     12e:	69 e0       	ldi	r22, 0x09	; 9
     130:	70 e0       	ldi	r23, 0x00	; 0
     132:	0e 94 72 06 	call	0xce4	; 0xce4 <__udivmodhi4>
     136:	69 51       	subi	r22, 0x19	; 25
     138:	7c 4f       	sbci	r23, 0xFC	; 252
     13a:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     13e:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

00000142 <.L1>:
     142:	08 95       	ret

00000144 <SERVO_test>:
     144:	ef 92       	push	r14
     146:	ff 92       	push	r15
     148:	0f 93       	push	r16
     14a:	1f 93       	push	r17
     14c:	cf 93       	push	r28
     14e:	df 93       	push	r29
     150:	8c 01       	movw	r16, r24
     152:	eb 01       	movw	r28, r22
     154:	bc 01       	movw	r22, r24
     156:	80 e0       	ldi	r24, 0x00	; 0
     158:	90 e0       	ldi	r25, 0x00	; 0
     15a:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     15e:	be 01       	movw	r22, r28
     160:	80 e0       	ldi	r24, 0x00	; 0
     162:	90 e0       	ldi	r25, 0x00	; 0
     164:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     168:	2f ef       	ldi	r18, 0xFF	; 255
     16a:	83 ed       	ldi	r24, 0xD3	; 211
     16c:	90 e3       	ldi	r25, 0x30	; 48

0000016e <.L1^B1>:
     16e:	21 50       	subi	r18, 0x01	; 1
     170:	80 40       	sbci	r24, 0x00	; 0
     172:	90 40       	sbci	r25, 0x00	; 0
     174:	e1 f7       	brne	.-8      	; 0x16e <.L1^B1>
     176:	00 c0       	rjmp	.+0      	; 0x178 <L0^A>

00000178 <L0^A>:
     178:	00 00       	nop
     17a:	e1 2c       	mov	r14, r1
     17c:	f1 2c       	mov	r15, r1

0000017e <.L5>:
     17e:	b8 01       	movw	r22, r16
     180:	c7 01       	movw	r24, r14
     182:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     186:	be 01       	movw	r22, r28
     188:	c7 01       	movw	r24, r14
     18a:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     18e:	8f e9       	ldi	r24, 0x9F	; 159
     190:	9f e0       	ldi	r25, 0x0F	; 15

00000192 <.L1^B2>:
     192:	01 97       	sbiw	r24, 0x01	; 1
     194:	f1 f7       	brne	.-4      	; 0x192 <.L1^B2>
     196:	00 c0       	rjmp	.+0      	; 0x198 <L0^A>

00000198 <L0^A>:
     198:	00 00       	nop
     19a:	9f ef       	ldi	r25, 0xFF	; 255
     19c:	e9 1a       	sub	r14, r25
     19e:	f9 0a       	sbc	r15, r25
     1a0:	29 e0       	ldi	r18, 0x09	; 9
     1a2:	e2 16       	cp	r14, r18
     1a4:	27 e0       	ldi	r18, 0x07	; 7
     1a6:	f2 06       	cpc	r15, r18
     1a8:	51 f7       	brne	.-44     	; 0x17e <.L5>
     1aa:	88 e0       	ldi	r24, 0x08	; 8
     1ac:	e8 2e       	mov	r14, r24
     1ae:	87 e0       	ldi	r24, 0x07	; 7
     1b0:	f8 2e       	mov	r15, r24

000001b2 <.L6>:
     1b2:	b8 01       	movw	r22, r16
     1b4:	c7 01       	movw	r24, r14
     1b6:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1ba:	be 01       	movw	r22, r28
     1bc:	c7 01       	movw	r24, r14
     1be:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1c2:	8f e9       	ldi	r24, 0x9F	; 159
     1c4:	9f e0       	ldi	r25, 0x0F	; 15

000001c6 <.L1^B3>:
     1c6:	01 97       	sbiw	r24, 0x01	; 1
     1c8:	f1 f7       	brne	.-4      	; 0x1c6 <.L1^B3>
     1ca:	00 c0       	rjmp	.+0      	; 0x1cc <L0^A>

000001cc <L0^A>:
     1cc:	00 00       	nop
     1ce:	91 e0       	ldi	r25, 0x01	; 1
     1d0:	e9 1a       	sub	r14, r25
     1d2:	f1 08       	sbc	r15, r1
     1d4:	70 f7       	brcc	.-36     	; 0x1b2 <.L6>
     1d6:	b8 01       	movw	r22, r16
     1d8:	80 e0       	ldi	r24, 0x00	; 0
     1da:	90 e0       	ldi	r25, 0x00	; 0
     1dc:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1e0:	be 01       	movw	r22, r28
     1e2:	80 e0       	ldi	r24, 0x00	; 0
     1e4:	90 e0       	ldi	r25, 0x00	; 0
     1e6:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1ea:	b8 01       	movw	r22, r16
     1ec:	88 e0       	ldi	r24, 0x08	; 8
     1ee:	97 e0       	ldi	r25, 0x07	; 7
     1f0:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1f4:	be 01       	movw	r22, r28
     1f6:	88 e0       	ldi	r24, 0x08	; 8
     1f8:	97 e0       	ldi	r25, 0x07	; 7
     1fa:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     1fe:	8f ef       	ldi	r24, 0xFF	; 255
     200:	93 ed       	ldi	r25, 0xD3	; 211
     202:	20 e3       	ldi	r18, 0x30	; 48

00000204 <.L1^B4>:
     204:	81 50       	subi	r24, 0x01	; 1
     206:	90 40       	sbci	r25, 0x00	; 0
     208:	20 40       	sbci	r18, 0x00	; 0
     20a:	e1 f7       	brne	.-8      	; 0x204 <.L1^B4>
     20c:	00 c0       	rjmp	.+0      	; 0x20e <L0^A>

0000020e <L0^A>:
     20e:	00 00       	nop
     210:	b8 01       	movw	r22, r16
     212:	80 e0       	ldi	r24, 0x00	; 0
     214:	90 e0       	ldi	r25, 0x00	; 0
     216:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     21a:	be 01       	movw	r22, r28
     21c:	80 e0       	ldi	r24, 0x00	; 0
     21e:	90 e0       	ldi	r25, 0x00	; 0
     220:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     224:	8f ef       	ldi	r24, 0xFF	; 255
     226:	93 ed       	ldi	r25, 0xD3	; 211
     228:	20 e3       	ldi	r18, 0x30	; 48

0000022a <.L1^B5>:
     22a:	81 50       	subi	r24, 0x01	; 1
     22c:	90 40       	sbci	r25, 0x00	; 0
     22e:	20 40       	sbci	r18, 0x00	; 0
     230:	e1 f7       	brne	.-8      	; 0x22a <.L1^B5>
     232:	00 c0       	rjmp	.+0      	; 0x234 <L0^A>

00000234 <L0^A>:
     234:	00 00       	nop
     236:	df 91       	pop	r29
     238:	cf 91       	pop	r28
     23a:	1f 91       	pop	r17
     23c:	0f 91       	pop	r16
     23e:	ff 90       	pop	r15
     240:	ef 90       	pop	r14
     242:	08 95       	ret

00000244 <NUN_init>:
     244:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_init>
     248:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
     24c:	07 97       	sbiw	r24, 0x07	; 7
     24e:	29 f0       	breq	.+10     	; 0x25a <.L2>
     250:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     254:	80 e0       	ldi	r24, 0x00	; 0
     256:	90 e0       	ldi	r25, 0x00	; 0
     258:	08 95       	ret

0000025a <.L2>:
     25a:	60 e0       	ldi	r22, 0x00	; 0
     25c:	70 e0       	ldi	r23, 0x00	; 0
     25e:	82 e5       	ldi	r24, 0x52	; 82
     260:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
     264:	07 97       	sbiw	r24, 0x07	; 7
     266:	29 f0       	breq	.+10     	; 0x272 <.L4>
     268:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     26c:	82 e0       	ldi	r24, 0x02	; 2
     26e:	90 e0       	ldi	r25, 0x00	; 0
     270:	08 95       	ret

00000272 <.L4>:
     272:	80 e4       	ldi	r24, 0x40	; 64
     274:	0e 94 b0 02 	call	0x560	; 0x560 <I2C_write>
     278:	07 97       	sbiw	r24, 0x07	; 7
     27a:	29 f0       	breq	.+10     	; 0x286 <.L5>

0000027c <.L6>:
     27c:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     280:	83 e0       	ldi	r24, 0x03	; 3
     282:	90 e0       	ldi	r25, 0x00	; 0
     284:	08 95       	ret

00000286 <.L5>:
     286:	80 e0       	ldi	r24, 0x00	; 0
     288:	0e 94 b0 02 	call	0x560	; 0x560 <I2C_write>
     28c:	07 97       	sbiw	r24, 0x07	; 7
     28e:	b1 f7       	brne	.-20     	; 0x27c <.L6>
     290:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     294:	85 e0       	ldi	r24, 0x05	; 5
     296:	90 e0       	ldi	r25, 0x00	; 0
     298:	08 95       	ret

0000029a <NUN_get_raw>:
     29a:	ef 92       	push	r14
     29c:	ff 92       	push	r15
     29e:	0f 93       	push	r16
     2a0:	1f 93       	push	r17
     2a2:	cf 93       	push	r28
     2a4:	df 93       	push	r29
     2a6:	ec 01       	movw	r28, r24
     2a8:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
     2ac:	07 97       	sbiw	r24, 0x07	; 7
     2ae:	59 f0       	breq	.+22     	; 0x2c6 <.L8>

000002b0 <.L12>:
     2b0:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     2b4:	81 e0       	ldi	r24, 0x01	; 1
     2b6:	90 e0       	ldi	r25, 0x00	; 0

000002b8 <.L7>:
     2b8:	df 91       	pop	r29
     2ba:	cf 91       	pop	r28
     2bc:	1f 91       	pop	r17
     2be:	0f 91       	pop	r16
     2c0:	ff 90       	pop	r15
     2c2:	ef 90       	pop	r14
     2c4:	08 95       	ret

000002c6 <.L8>:
     2c6:	60 e0       	ldi	r22, 0x00	; 0
     2c8:	70 e0       	ldi	r23, 0x00	; 0
     2ca:	82 e5       	ldi	r24, 0x52	; 82
     2cc:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
     2d0:	07 97       	sbiw	r24, 0x07	; 7
     2d2:	29 f0       	breq	.+10     	; 0x2de <.L10>

000002d4 <.L13>:
     2d4:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     2d8:	82 e0       	ldi	r24, 0x02	; 2
     2da:	90 e0       	ldi	r25, 0x00	; 0
     2dc:	ed cf       	rjmp	.-38     	; 0x2b8 <.L7>

000002de <.L10>:
     2de:	80 e0       	ldi	r24, 0x00	; 0
     2e0:	0e 94 b0 02 	call	0x560	; 0x560 <I2C_write>
     2e4:	07 97       	sbiw	r24, 0x07	; 7
     2e6:	29 f0       	breq	.+10     	; 0x2f2 <.L11>
     2e8:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     2ec:	83 e0       	ldi	r24, 0x03	; 3
     2ee:	90 e0       	ldi	r25, 0x00	; 0
     2f0:	e3 cf       	rjmp	.-58     	; 0x2b8 <.L7>

000002f2 <.L11>:
     2f2:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
     2f6:	07 97       	sbiw	r24, 0x07	; 7
     2f8:	d9 f6       	brne	.-74     	; 0x2b0 <.L12>
     2fa:	61 e0       	ldi	r22, 0x01	; 1
     2fc:	70 e0       	ldi	r23, 0x00	; 0
     2fe:	82 e5       	ldi	r24, 0x52	; 82
     300:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
     304:	07 97       	sbiw	r24, 0x07	; 7
     306:	31 f7       	brne	.-52     	; 0x2d4 <.L13>
     308:	8e 01       	movw	r16, r28
     30a:	7e 01       	movw	r14, r28
     30c:	85 e0       	ldi	r24, 0x05	; 5
     30e:	e8 0e       	add	r14, r24
     310:	f1 1c       	adc	r15, r1

00000312 <.L14>:
     312:	0e 94 c4 02 	call	0x588	; 0x588 <I2C_read_ACK>
     316:	f8 01       	movw	r30, r16
     318:	81 93       	st	Z+, r24
     31a:	8f 01       	movw	r16, r30
     31c:	ee 15       	cp	r30, r14
     31e:	ff 05       	cpc	r31, r15
     320:	c1 f7       	brne	.-16     	; 0x312 <.L14>
     322:	0e 94 ce 02 	call	0x59c	; 0x59c <I2C_read_NACK>
     326:	8d 83       	std	Y+5, r24	; 0x05
     328:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <I2C_stop>
     32c:	85 e0       	ldi	r24, 0x05	; 5
     32e:	90 e0       	ldi	r25, 0x00	; 0
     330:	c3 cf       	rjmp	.-122    	; 0x2b8 <.L7>

00000332 <NUN_get_joystick>:
     332:	cf 93       	push	r28
     334:	df 93       	push	r29
     336:	cd b7       	in	r28, 0x3d	; 61
     338:	de b7       	in	r29, 0x3e	; 62
     33a:	28 97       	sbiw	r28, 0x08	; 8
     33c:	0f b6       	in	r0, 0x3f	; 63
     33e:	f8 94       	cli
     340:	de bf       	out	0x3e, r29	; 62
     342:	0f be       	out	0x3f, r0	; 63
     344:	cd bf       	out	0x3d, r28	; 61
     346:	8f 83       	std	Y+7, r24	; 0x07
     348:	98 87       	std	Y+8, r25	; 0x08
     34a:	ce 01       	movw	r24, r28
     34c:	01 96       	adiw	r24, 0x01	; 1
     34e:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     352:	89 81       	ldd	r24, Y+1	; 0x01
     354:	ef 81       	ldd	r30, Y+7	; 0x07
     356:	f8 85       	ldd	r31, Y+8	; 0x08
     358:	80 83       	st	Z, r24
     35a:	8a 81       	ldd	r24, Y+2	; 0x02
     35c:	81 83       	std	Z+1, r24	; 0x01
     35e:	85 e0       	ldi	r24, 0x05	; 5
     360:	90 e0       	ldi	r25, 0x00	; 0
     362:	28 96       	adiw	r28, 0x08	; 8
     364:	0f b6       	in	r0, 0x3f	; 63
     366:	f8 94       	cli
     368:	de bf       	out	0x3e, r29	; 62
     36a:	0f be       	out	0x3f, r0	; 63
     36c:	cd bf       	out	0x3d, r28	; 61
     36e:	df 91       	pop	r29
     370:	cf 91       	pop	r28
     372:	08 95       	ret

00000374 <NUN_get_buttons>:
     374:	cf 93       	push	r28
     376:	df 93       	push	r29
     378:	cd b7       	in	r28, 0x3d	; 61
     37a:	de b7       	in	r29, 0x3e	; 62
     37c:	28 97       	sbiw	r28, 0x08	; 8
     37e:	0f b6       	in	r0, 0x3f	; 63
     380:	f8 94       	cli
     382:	de bf       	out	0x3e, r29	; 62
     384:	0f be       	out	0x3f, r0	; 63
     386:	cd bf       	out	0x3d, r28	; 61
     388:	8f 83       	std	Y+7, r24	; 0x07
     38a:	98 87       	std	Y+8, r25	; 0x08
     38c:	ce 01       	movw	r24, r28
     38e:	01 96       	adiw	r24, 0x01	; 1
     390:	26 e0       	ldi	r18, 0x06	; 6
     392:	fc 01       	movw	r30, r24

00000394 <.L0^B1>:
     394:	11 92       	st	Z+, r1
     396:	2a 95       	dec	r18
     398:	e9 f7       	brne	.-6      	; 0x394 <.L0^B1>
     39a:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     39e:	8e 81       	ldd	r24, Y+6	; 0x06
     3a0:	83 70       	andi	r24, 0x03	; 3
     3a2:	ef 81       	ldd	r30, Y+7	; 0x07
     3a4:	f8 85       	ldd	r31, Y+8	; 0x08
     3a6:	80 83       	st	Z, r24
     3a8:	85 e0       	ldi	r24, 0x05	; 5
     3aa:	90 e0       	ldi	r25, 0x00	; 0
     3ac:	28 96       	adiw	r28, 0x08	; 8
     3ae:	0f b6       	in	r0, 0x3f	; 63
     3b0:	f8 94       	cli
     3b2:	de bf       	out	0x3e, r29	; 62
     3b4:	0f be       	out	0x3f, r0	; 63
     3b6:	cd bf       	out	0x3d, r28	; 61
     3b8:	df 91       	pop	r29
     3ba:	cf 91       	pop	r28
     3bc:	08 95       	ret

000003be <USART_init>:
     3be:	82 e0       	ldi	r24, 0x02	; 2
     3c0:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     3c4:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
     3c8:	80 e1       	ldi	r24, 0x10	; 16
     3ca:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
     3ce:	88 e1       	ldi	r24, 0x18	; 24
     3d0:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
     3d4:	86 e0       	ldi	r24, 0x06	; 6
     3d6:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
     3da:	08 95       	ret

000003dc <USART_send>:
     3dc:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     3e0:	95 ff       	sbrs	r25, 5
     3e2:	fc cf       	rjmp	.-8      	; 0x3dc <USART_send>
     3e4:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     3e8:	08 95       	ret

000003ea <USART_receive>:
     3ea:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     3ee:	87 fd       	sbrc	r24, 7
     3f0:	04 c0       	rjmp	.+8      	; 0x3fa <.L7>
     3f2:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <flag_WD>
     3f6:	81 15       	cp	r24, r1
     3f8:	c1 f3       	breq	.-16     	; 0x3ea <USART_receive>

000003fa <.L7>:
     3fa:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     3fe:	08 95       	ret

00000400 <USART_putstring>:
     400:	cf 93       	push	r28
     402:	df 93       	push	r29
     404:	ec 01       	movw	r28, r24

00000406 <.L12>:
     406:	88 81       	ld	r24, Y
     408:	81 11       	cpse	r24, r1
     40a:	03 c0       	rjmp	.+6      	; 0x412 <.L13>
     40c:	df 91       	pop	r29
     40e:	cf 91       	pop	r28
     410:	08 95       	ret

00000412 <.L13>:
     412:	21 96       	adiw	r28, 0x01	; 1
     414:	0e 94 ee 01 	call	0x3dc	; 0x3dc <USART_send>
     418:	f6 cf       	rjmp	.-20     	; 0x406 <.L12>

0000041a <USART_put_uint16>:
     41a:	0f 93       	push	r16
     41c:	1f 93       	push	r17
     41e:	cf 93       	push	r28
     420:	df 93       	push	r29
     422:	cd b7       	in	r28, 0x3d	; 61
     424:	de b7       	in	r29, 0x3e	; 62
     426:	2a 97       	sbiw	r28, 0x0a	; 10
     428:	0f b6       	in	r0, 0x3f	; 63
     42a:	f8 94       	cli
     42c:	de bf       	out	0x3e, r29	; 62
     42e:	0f be       	out	0x3f, r0	; 63
     430:	cd bf       	out	0x3d, r28	; 61
     432:	9f 93       	push	r25
     434:	8f 93       	push	r24
     436:	80 e0       	ldi	r24, 0x00	; 0
     438:	91 e0       	ldi	r25, 0x01	; 1
     43a:	9f 93       	push	r25
     43c:	8f 93       	push	r24
     43e:	8e 01       	movw	r16, r28
     440:	0f 5f       	subi	r16, 0xFF	; 255
     442:	1f 4f       	sbci	r17, 0xFF	; 255
     444:	1f 93       	push	r17
     446:	0f 93       	push	r16
     448:	0e 94 d0 08 	call	0x11a0	; 0x11a0 <sprintf>
     44c:	c8 01       	movw	r24, r16
     44e:	0e 94 00 02 	call	0x400	; 0x400 <USART_putstring>
     452:	83 e0       	ldi	r24, 0x03	; 3
     454:	91 e0       	ldi	r25, 0x01	; 1
     456:	0e 94 00 02 	call	0x400	; 0x400 <USART_putstring>
     45a:	0f 90       	pop	r0
     45c:	0f 90       	pop	r0
     45e:	0f 90       	pop	r0
     460:	0f 90       	pop	r0
     462:	0f 90       	pop	r0
     464:	0f 90       	pop	r0
     466:	2a 96       	adiw	r28, 0x0a	; 10
     468:	0f b6       	in	r0, 0x3f	; 63
     46a:	f8 94       	cli
     46c:	de bf       	out	0x3e, r29	; 62
     46e:	0f be       	out	0x3f, r0	; 63
     470:	cd bf       	out	0x3d, r28	; 61
     472:	df 91       	pop	r29
     474:	cf 91       	pop	r28
     476:	1f 91       	pop	r17
     478:	0f 91       	pop	r16
     47a:	08 95       	ret

0000047c <I2C_init>:
     47c:	87 b1       	in	r24, 0x07	; 7
     47e:	8f 7c       	andi	r24, 0xCF	; 207
     480:	87 b9       	out	0x07, r24	; 7
     482:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     486:	88 e4       	ldi	r24, 0x48	; 72
     488:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     48c:	84 e0       	ldi	r24, 0x04	; 4
     48e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     492:	87 e0       	ldi	r24, 0x07	; 7
     494:	90 e0       	ldi	r25, 0x00	; 0
     496:	08 95       	ret

00000498 <I2C_start>:
     498:	84 ea       	ldi	r24, 0xA4	; 164
     49a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000049e <.L3>:
     49e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4a2:	87 ff       	sbrs	r24, 7
     4a4:	fc cf       	rjmp	.-8      	; 0x49e <.L3>
     4a6:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4aa:	88 7f       	andi	r24, 0xF8	; 248
     4ac:	88 30       	cpi	r24, 0x08	; 8
     4ae:	11 f0       	breq	.+4      	; 0x4b4 <.L5>
     4b0:	80 31       	cpi	r24, 0x10	; 16
     4b2:	19 f4       	brne	.+6      	; 0x4ba <.L6>

000004b4 <.L5>:
     4b4:	87 e0       	ldi	r24, 0x07	; 7
     4b6:	90 e0       	ldi	r25, 0x00	; 0
     4b8:	08 95       	ret

000004ba <.L6>:
     4ba:	81 e0       	ldi	r24, 0x01	; 1
     4bc:	90 e0       	ldi	r25, 0x00	; 0
     4be:	08 95       	ret

000004c0 <I2C_connect_address>:
     4c0:	88 0f       	add	r24, r24
     4c2:	86 2b       	or	r24, r22
     4c4:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4c8:	84 e8       	ldi	r24, 0x84	; 132
     4ca:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004ce <.L9>:
     4ce:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4d2:	87 ff       	sbrs	r24, 7
     4d4:	fc cf       	rjmp	.-8      	; 0x4ce <.L9>
     4d6:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4da:	88 7f       	andi	r24, 0xF8	; 248
     4dc:	67 2b       	or	r22, r23
     4de:	31 f4       	brne	.+12     	; 0x4ec <.L10>
     4e0:	88 31       	cpi	r24, 0x18	; 24
     4e2:	49 f4       	brne	.+18     	; 0x4f6 <.L13>

000004e4 <.L12>:
     4e4:	2d 9a       	sbi	0x05, 5	; 5
     4e6:	87 e0       	ldi	r24, 0x07	; 7
     4e8:	90 e0       	ldi	r25, 0x00	; 0
     4ea:	08 95       	ret

000004ec <.L10>:
     4ec:	80 34       	cpi	r24, 0x40	; 64
     4ee:	d1 f3       	breq	.-12     	; 0x4e4 <.L12>
     4f0:	84 e0       	ldi	r24, 0x04	; 4
     4f2:	90 e0       	ldi	r25, 0x00	; 0
     4f4:	08 95       	ret

000004f6 <.L13>:
     4f6:	85 e0       	ldi	r24, 0x05	; 5
     4f8:	90 e0       	ldi	r25, 0x00	; 0
     4fa:	08 95       	ret

000004fc <I2C_scan>:
     4fc:	0f 93       	push	r16
     4fe:	1f 93       	push	r17
     500:	cf 93       	push	r28
     502:	df 93       	push	r29
     504:	8c 01       	movw	r16, r24
     506:	00 97       	sbiw	r24, 0x00	; 0
     508:	11 f0       	breq	.+4      	; 0x50e <.L17>
     50a:	fc 01       	movw	r30, r24
     50c:	10 82       	st	Z, r1

0000050e <.L17>:
     50e:	25 9a       	sbi	0x04, 5	; 4
     510:	2d 98       	cbi	0x05, 5	; 5
     512:	c8 e0       	ldi	r28, 0x08	; 8
     514:	d4 e9       	ldi	r29, 0x94	; 148

00000516 <.L23>:
     516:	0e 94 4c 02 	call	0x498	; 0x498 <I2C_start>
     51a:	07 97       	sbiw	r24, 0x07	; 7
     51c:	41 f0       	breq	.+16     	; 0x52e <.L18>

0000051e <.L20>:
     51e:	d0 93 bc 00 	sts	0x00BC, r29	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     522:	cf 5f       	subi	r28, 0xFF	; 255
     524:	c8 37       	cpi	r28, 0x78	; 120
     526:	b9 f7       	brne	.-18     	; 0x516 <.L23>
     528:	86 e0       	ldi	r24, 0x06	; 6
     52a:	90 e0       	ldi	r25, 0x00	; 0
     52c:	14 c0       	rjmp	.+40     	; 0x556 <.L16>

0000052e <.L18>:
     52e:	60 e0       	ldi	r22, 0x00	; 0
     530:	70 e0       	ldi	r23, 0x00	; 0
     532:	8c 2f       	mov	r24, r28
     534:	0e 94 60 02 	call	0x4c0	; 0x4c0 <I2C_connect_address>
     538:	87 30       	cpi	r24, 0x07	; 7
     53a:	91 05       	cpc	r25, r1
     53c:	81 f7       	brne	.-32     	; 0x51e <.L20>
     53e:	24 e9       	ldi	r18, 0x94	; 148
     540:	20 93 bc 00 	sts	0x00BC, r18	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     544:	01 15       	cp	r16, r1
     546:	11 05       	cpc	r17, r1
     548:	11 f0       	breq	.+4      	; 0x54e <.L21>
     54a:	f8 01       	movw	r30, r16
     54c:	c0 83       	st	Z, r28

0000054e <.L21>:
     54e:	25 b1       	in	r18, 0x05	; 5
     550:	30 e2       	ldi	r19, 0x20	; 32
     552:	23 27       	eor	r18, r19
     554:	25 b9       	out	0x05, r18	; 5

00000556 <.L16>:
     556:	df 91       	pop	r29
     558:	cf 91       	pop	r28
     55a:	1f 91       	pop	r17
     55c:	0f 91       	pop	r16
     55e:	08 95       	ret

00000560 <I2C_write>:
     560:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     564:	84 e8       	ldi	r24, 0x84	; 132
     566:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000056a <.L32>:
     56a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     56e:	87 ff       	sbrs	r24, 7
     570:	fc cf       	rjmp	.-8      	; 0x56a <.L32>
     572:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     576:	88 7f       	andi	r24, 0xF8	; 248
     578:	88 32       	cpi	r24, 0x28	; 40
     57a:	19 f0       	breq	.+6      	; 0x582 <.L34>
     57c:	83 e0       	ldi	r24, 0x03	; 3
     57e:	90 e0       	ldi	r25, 0x00	; 0
     580:	08 95       	ret

00000582 <.L34>:
     582:	87 e0       	ldi	r24, 0x07	; 7
     584:	90 e0       	ldi	r25, 0x00	; 0
     586:	08 95       	ret

00000588 <I2C_read_ACK>:
     588:	84 ec       	ldi	r24, 0xC4	; 196
     58a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000058e <.L37>:
     58e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     592:	87 ff       	sbrs	r24, 7
     594:	fc cf       	rjmp	.-8      	; 0x58e <.L37>
     596:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     59a:	08 95       	ret

0000059c <I2C_read_NACK>:
     59c:	84 e8       	ldi	r24, 0x84	; 132
     59e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000005a2 <.L40>:
     5a2:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     5a6:	87 ff       	sbrs	r24, 7
     5a8:	fc cf       	rjmp	.-8      	; 0x5a2 <.L40>
     5aa:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     5ae:	08 95       	ret

000005b0 <I2C_stop>:
     5b0:	84 e9       	ldi	r24, 0x94	; 148
     5b2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     5b6:	08 95       	ret

000005b8 <Error_Handler>:
     5b8:	88 e1       	ldi	r24, 0x18	; 24
     5ba:	98 e0       	ldi	r25, 0x08	; 8
     5bc:	0f b6       	in	r0, 0x3f	; 63
     5be:	f8 94       	cli
     5c0:	a8 95       	wdr
     5c2:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     5c6:	0f be       	out	0x3f, r0	; 63
     5c8:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

000005cc <.L2>:
     5cc:	ff cf       	rjmp	.-2      	; 0x5cc <.L2>

000005ce <TIMER0_init_1ms>:
     5ce:	82 e0       	ldi	r24, 0x02	; 2
     5d0:	84 bd       	out	0x24, r24	; 36
     5d2:	93 e0       	ldi	r25, 0x03	; 3
     5d4:	95 bd       	out	0x25, r25	; 37
     5d6:	99 ef       	ldi	r25, 0xF9	; 249
     5d8:	97 bd       	out	0x27, r25	; 39
     5da:	16 bc       	out	0x26, r1	; 38
     5dc:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7f806e>
     5e0:	08 95       	ret

000005e2 <ADC_init>:
     5e2:	85 e4       	ldi	r24, 0x45	; 69
     5e4:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
     5e8:	87 e8       	ldi	r24, 0x87	; 135
     5ea:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     5ee:	82 e0       	ldi	r24, 0x02	; 2
     5f0:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     5f4:	94 e0       	ldi	r25, 0x04	; 4
     5f6:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     5fa:	99 ef       	ldi	r25, 0xF9	; 249
     5fc:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     600:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     604:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
     608:	08 95       	ret

0000060a <ADC_get>:
     60a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     60e:	80 64       	ori	r24, 0x40	; 64
     610:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

00000614 <.L4>:
     614:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     618:	84 ff       	sbrs	r24, 4
     61a:	fc cf       	rjmp	.-8      	; 0x614 <.L4>
     61c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     620:	80 61       	ori	r24, 0x10	; 16
     622:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     626:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
     62a:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
     62e:	80 e0       	ldi	r24, 0x00	; 0
     630:	90 e0       	ldi	r25, 0x00	; 0
     632:	0e 94 af 07 	call	0xf5e	; 0xf5e <__floatunsisf>
     636:	26 ef       	ldi	r18, 0xF6	; 246
     638:	38 e2       	ldi	r19, 0x28	; 40
     63a:	4c e9       	ldi	r20, 0x9C	; 156
     63c:	50 e4       	ldi	r21, 0x40	; 64
     63e:	0e 94 3d 08 	call	0x107a	; 0x107a <__mulsf3>
     642:	0e 94 80 07 	call	0xf00	; 0xf00 <__fixunssfsi>
     646:	cb 01       	movw	r24, r22
     648:	08 95       	ret

0000064a <ADC_sweep>:
     64a:	ff 92       	push	r15
     64c:	0f 93       	push	r16
     64e:	1f 93       	push	r17
     650:	cf 93       	push	r28
     652:	df 93       	push	r29
     654:	ec 01       	movw	r28, r24
     656:	0c e7       	ldi	r16, 0x7C	; 124
     658:	10 e0       	ldi	r17, 0x00	; 0
     65a:	f8 01       	movw	r30, r16
     65c:	10 82       	st	Z, r1
     65e:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     662:	8a 83       	std	Y+2, r24	; 0x02
     664:	9b 83       	std	Y+3, r25	; 0x03
     666:	8f e3       	ldi	r24, 0x3F	; 63
     668:	9f e1       	ldi	r25, 0x1F	; 31

0000066a <.L1^B1>:
     66a:	01 97       	sbiw	r24, 0x01	; 1
     66c:	f1 f7       	brne	.-4      	; 0x66a <.L1^B1>
     66e:	00 c0       	rjmp	.+0      	; 0x670 <L0^A>

00000670 <L0^A>:
     670:	00 00       	nop
     672:	ff 24       	eor	r15, r15
     674:	f3 94       	inc	r15
     676:	f8 01       	movw	r30, r16
     678:	f0 82       	st	Z, r15
     67a:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     67e:	88 83       	st	Y, r24
     680:	99 83       	std	Y+1, r25	; 0x01
     682:	8f e3       	ldi	r24, 0x3F	; 63
     684:	9f e1       	ldi	r25, 0x1F	; 31

00000686 <.L1^B2>:
     686:	01 97       	sbiw	r24, 0x01	; 1
     688:	f1 f7       	brne	.-4      	; 0x686 <.L1^B2>
     68a:	00 c0       	rjmp	.+0      	; 0x68c <L0^A>

0000068c <L0^A>:
     68c:	00 00       	nop
     68e:	82 e0       	ldi	r24, 0x02	; 2
     690:	f8 01       	movw	r30, r16
     692:	80 83       	st	Z, r24
     694:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     698:	8c 83       	std	Y+4, r24	; 0x04
     69a:	9d 83       	std	Y+5, r25	; 0x05
     69c:	8f e3       	ldi	r24, 0x3F	; 63
     69e:	9f e1       	ldi	r25, 0x1F	; 31

000006a0 <.L1^B3>:
     6a0:	01 97       	sbiw	r24, 0x01	; 1
     6a2:	f1 f7       	brne	.-4      	; 0x6a0 <.L1^B3>
     6a4:	00 c0       	rjmp	.+0      	; 0x6a6 <L0^A>

000006a6 <L0^A>:
     6a6:	00 00       	nop
     6a8:	83 e0       	ldi	r24, 0x03	; 3
     6aa:	f8 01       	movw	r30, r16
     6ac:	80 83       	st	Z, r24
     6ae:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     6b2:	8e 83       	std	Y+6, r24	; 0x06
     6b4:	9f 83       	std	Y+7, r25	; 0x07
     6b6:	8f e3       	ldi	r24, 0x3F	; 63
     6b8:	9f e1       	ldi	r25, 0x1F	; 31

000006ba <.L1^B4>:
     6ba:	01 97       	sbiw	r24, 0x01	; 1
     6bc:	f1 f7       	brne	.-4      	; 0x6ba <.L1^B4>
     6be:	00 c0       	rjmp	.+0      	; 0x6c0 <L0^A>

000006c0 <L0^A>:
     6c0:	00 00       	nop
     6c2:	84 e0       	ldi	r24, 0x04	; 4
     6c4:	f8 01       	movw	r30, r16
     6c6:	80 83       	st	Z, r24
     6c8:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     6cc:	88 87       	std	Y+8, r24	; 0x08
     6ce:	99 87       	std	Y+9, r25	; 0x09
     6d0:	8f e3       	ldi	r24, 0x3F	; 63
     6d2:	9f e1       	ldi	r25, 0x1F	; 31

000006d4 <.L1^B5>:
     6d4:	01 97       	sbiw	r24, 0x01	; 1
     6d6:	f1 f7       	brne	.-4      	; 0x6d4 <.L1^B5>
     6d8:	00 c0       	rjmp	.+0      	; 0x6da <L0^A>

000006da <L0^A>:
     6da:	00 00       	nop
     6dc:	f8 01       	movw	r30, r16
     6de:	f0 82       	st	Z, r15
     6e0:	0e 94 05 03 	call	0x60a	; 0x60a <ADC_get>
     6e4:	8a 87       	std	Y+10, r24	; 0x0a
     6e6:	9b 87       	std	Y+11, r25	; 0x0b
     6e8:	8f e3       	ldi	r24, 0x3F	; 63
     6ea:	9f e1       	ldi	r25, 0x1F	; 31

000006ec <.L1^B6>:
     6ec:	01 97       	sbiw	r24, 0x01	; 1
     6ee:	f1 f7       	brne	.-4      	; 0x6ec <.L1^B6>
     6f0:	00 c0       	rjmp	.+0      	; 0x6f2 <L0^A>

000006f2 <L0^A>:
     6f2:	00 00       	nop
     6f4:	df 91       	pop	r29
     6f6:	cf 91       	pop	r28
     6f8:	1f 91       	pop	r17
     6fa:	0f 91       	pop	r16
     6fc:	ff 90       	pop	r15
     6fe:	08 95       	ret

00000700 <volts_to_D>:
     700:	bc 01       	movw	r22, r24
     702:	80 e0       	ldi	r24, 0x00	; 0
     704:	90 e0       	ldi	r25, 0x00	; 0
     706:	0e 94 af 07 	call	0xf5e	; 0xf5e <__floatunsisf>
     70a:	20 e0       	ldi	r18, 0x00	; 0
     70c:	30 e0       	ldi	r19, 0x00	; 0
     70e:	4a e7       	ldi	r20, 0x7A	; 122
     710:	56 e4       	ldi	r21, 0x46	; 70
     712:	0e 94 3d 08 	call	0x107a	; 0x107a <__mulsf3>
     716:	20 e0       	ldi	r18, 0x00	; 0
     718:	30 e4       	ldi	r19, 0x40	; 64
     71a:	4c e9       	ldi	r20, 0x9C	; 156
     71c:	55 e4       	ldi	r21, 0x45	; 69
     71e:	0e 94 07 07 	call	0xe0e	; 0xe0e <__divsf3>
     722:	20 e0       	ldi	r18, 0x00	; 0
     724:	30 e0       	ldi	r19, 0x00	; 0
     726:	40 e8       	ldi	r20, 0x80	; 128
     728:	5f e3       	ldi	r21, 0x3F	; 63
     72a:	0e 94 9a 06 	call	0xd34	; 0xd34 <__subsf3>
     72e:	0e 94 80 07 	call	0xf00	; 0xf00 <__fixunssfsi>
     732:	cb 01       	movw	r24, r22
     734:	08 95       	ret

00000736 <GPIO_PORTD_IT_init>:
     736:	88 30       	cpi	r24, 0x08	; 8
     738:	d0 f4       	brcc	.+52     	; 0x76e <.L10>
     73a:	4a b1       	in	r20, 0x0a	; 10
     73c:	21 e0       	ldi	r18, 0x01	; 1
     73e:	30 e0       	ldi	r19, 0x00	; 0
     740:	b9 01       	movw	r22, r18
     742:	01 c0       	rjmp	.+2      	; 0x746 <.L2^B1>

00000744 <.L1^B7>:
     744:	66 0f       	add	r22, r22

00000746 <.L2^B1>:
     746:	8a 95       	dec	r24
     748:	ea f7       	brpl	.-6      	; 0x744 <.L1^B7>
     74a:	86 2f       	mov	r24, r22
     74c:	96 2f       	mov	r25, r22
     74e:	90 95       	com	r25
     750:	94 23       	and	r25, r20
     752:	9a b9       	out	0x0a, r25	; 10
     754:	9b b1       	in	r25, 0x0b	; 11
     756:	96 2b       	or	r25, r22
     758:	9b b9       	out	0x0b, r25	; 11
     75a:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     75e:	94 60       	ori	r25, 0x04	; 4
     760:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     764:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     768:	89 2b       	or	r24, r25
     76a:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

0000076e <.L10>:
     76e:	80 e0       	ldi	r24, 0x00	; 0
     770:	90 e0       	ldi	r25, 0x00	; 0
     772:	08 95       	ret

00000774 <PWM_TIM1_init>:
     774:	21 9a       	sbi	0x04, 1	; 4
     776:	22 9a       	sbi	0x04, 2	; 4
     778:	22 ea       	ldi	r18, 0xA2	; 162
     77a:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     77e:	2a e1       	ldi	r18, 0x1A	; 26
     780:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     784:	40 ed       	ldi	r20, 0xD0	; 208
     786:	57 e0       	ldi	r21, 0x07	; 7
     788:	84 9f       	mul	r24, r20
     78a:	90 01       	movw	r18, r0
     78c:	85 9f       	mul	r24, r21
     78e:	30 0d       	add	r19, r0
     790:	94 9f       	mul	r25, r20
     792:	30 0d       	add	r19, r0
     794:	11 24       	eor	r1, r1
     796:	21 50       	subi	r18, 0x01	; 1
     798:	31 09       	sbc	r19, r1
     79a:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     79e:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     7a2:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     7a6:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7aa:	08 95       	ret

000007ac <PWM_set_DC>:
     7ac:	9c 01       	movw	r18, r24
     7ae:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     7b2:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     7b6:	42 9f       	mul	r20, r18
     7b8:	c0 01       	movw	r24, r0
     7ba:	43 9f       	mul	r20, r19
     7bc:	90 0d       	add	r25, r0
     7be:	52 9f       	mul	r21, r18
     7c0:	90 0d       	add	r25, r0
     7c2:	11 24       	eor	r1, r1
     7c4:	64 e6       	ldi	r22, 0x64	; 100
     7c6:	70 e0       	ldi	r23, 0x00	; 0
     7c8:	0e 94 72 06 	call	0xce4	; 0xce4 <__udivmodhi4>
     7cc:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     7d0:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7d4:	08 95       	ret

000007d6 <DEBUG_init>:
     7d6:	25 9a       	sbi	0x04, 5	; 4
     7d8:	08 95       	ret

000007da <DEBUG_led_toggle>:
     7da:	85 b1       	in	r24, 0x05	; 5
     7dc:	90 e2       	ldi	r25, 0x20	; 32
     7de:	89 27       	eor	r24, r25
     7e0:	85 b9       	out	0x05, r24	; 5
     7e2:	08 95       	ret

000007e4 <DEBUG_led_on>:
     7e4:	2d 9a       	sbi	0x05, 5	; 5
     7e6:	08 95       	ret

000007e8 <DEBUG_led_off>:
     7e8:	2d 98       	cbi	0x05, 5	; 5
     7ea:	08 95       	ret

000007ec <procesar_error>:
     7ec:	0f 93       	push	r16
     7ee:	1f 93       	push	r17
     7f0:	9c 01       	movw	r18, r24
     7f2:	e0 91 0d 01 	lds	r30, 0x010D	; 0x80010d <x_angulo>
     7f6:	f0 91 0e 01 	lds	r31, 0x010E	; 0x80010e <x_angulo+0x1>
     7fa:	cb 01       	movw	r24, r22
     7fc:	68 ee       	ldi	r22, 0xE8	; 232
     7fe:	7f ef       	ldi	r23, 0xFF	; 255
     800:	0e 94 86 06 	call	0xd0c	; 0xd0c <__divmodhi4>
     804:	6e 0f       	add	r22, r30
     806:	7f 1f       	adc	r23, r31
     808:	70 93 0e 01 	sts	0x010E, r23	; 0x80010e <x_angulo+0x1>
     80c:	60 93 0d 01 	sts	0x010D, r22	; 0x80010d <x_angulo>
     810:	e0 91 0b 01 	lds	r30, 0x010B	; 0x80010b <y_angulo>
     814:	f0 91 0c 01 	lds	r31, 0x010C	; 0x80010c <y_angulo+0x1>
     818:	c9 01       	movw	r24, r18
     81a:	68 e1       	ldi	r22, 0x18	; 24
     81c:	70 e0       	ldi	r23, 0x00	; 0
     81e:	0e 94 86 06 	call	0xd0c	; 0xd0c <__divmodhi4>
     822:	6e 0f       	add	r22, r30
     824:	7f 1f       	adc	r23, r31
     826:	70 93 0c 01 	sts	0x010C, r23	; 0x80010c <y_angulo+0x1>
     82a:	60 93 0b 01 	sts	0x010B, r22	; 0x80010b <y_angulo>
     82e:	1f 91       	pop	r17
     830:	0f 91       	pop	r16
     832:	08 95       	ret

00000834 <get_error>:
     834:	ff 92       	push	r15
     836:	0f 93       	push	r16
     838:	1f 93       	push	r17
     83a:	cf 93       	push	r28
     83c:	df 93       	push	r29
     83e:	cd b7       	in	r28, 0x3d	; 61
     840:	de b7       	in	r29, 0x3e	; 62
     842:	28 97       	sbiw	r28, 0x08	; 8
     844:	0f b6       	in	r0, 0x3f	; 63
     846:	f8 94       	cli
     848:	de bf       	out	0x3e, r29	; 62
     84a:	0f be       	out	0x3f, r0	; 63
     84c:	cd bf       	out	0x3d, r28	; 61
     84e:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <contador_WD+0x1>
     852:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <contador_WD>
     856:	10 92 07 01 	sts	0x0107, r1	; 0x800107 <flag_WD>

0000085a <.L20>:
     85a:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     85e:	8c 33       	cpi	r24, 0x3C	; 60
     860:	21 f0       	breq	.+8      	; 0x86a <.L19>
     862:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <flag_WD>
     866:	81 15       	cp	r24, r1
     868:	c1 f3       	breq	.-16     	; 0x85a <.L20>

0000086a <.L19>:
     86a:	00 91 07 01 	lds	r16, 0x0107	; 0x800107 <flag_WD>
     86e:	01 15       	cp	r16, r1
     870:	a1 f0       	breq	.+40     	; 0x89a <.L24>

00000872 <.L25>:
     872:	00 e0       	ldi	r16, 0x00	; 0
     874:	f1 2c       	mov	r15, r1
     876:	20 e0       	ldi	r18, 0x00	; 0
     878:	30 e0       	ldi	r19, 0x00	; 0

0000087a <.L22>:
     87a:	60 2f       	mov	r22, r16
     87c:	7f 2d       	mov	r23, r15
     87e:	83 2f       	mov	r24, r19
     880:	92 2f       	mov	r25, r18
     882:	28 96       	adiw	r28, 0x08	; 8
     884:	0f b6       	in	r0, 0x3f	; 63
     886:	f8 94       	cli
     888:	de bf       	out	0x3e, r29	; 62
     88a:	0f be       	out	0x3f, r0	; 63
     88c:	cd bf       	out	0x3d, r28	; 61
     88e:	df 91       	pop	r29
     890:	cf 91       	pop	r28
     892:	1f 91       	pop	r17
     894:	0f 91       	pop	r16
     896:	ff 90       	pop	r15
     898:	08 95       	ret

0000089a <.L24>:
     89a:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     89e:	8c 32       	cpi	r24, 0x2C	; 44
     8a0:	61 f0       	breq	.+24     	; 0x8ba <.L23>
     8a2:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <flag_WD>
     8a6:	91 11       	cpse	r25, r1
     8a8:	08 c0       	rjmp	.+16     	; 0x8ba <.L23>
     8aa:	07 30       	cpi	r16, 0x07	; 7
     8ac:	b1 f3       	breq	.-20     	; 0x89a <.L24>
     8ae:	fe 01       	movw	r30, r28
     8b0:	e0 0f       	add	r30, r16
     8b2:	f1 1d       	adc	r31, r1
     8b4:	81 83       	std	Z+1, r24	; 0x01
     8b6:	0f 5f       	subi	r16, 0xFF	; 255
     8b8:	f0 cf       	rjmp	.-32     	; 0x89a <.L24>

000008ba <.L23>:
     8ba:	10 91 07 01 	lds	r17, 0x0107	; 0x800107 <flag_WD>
     8be:	11 11       	cpse	r17, r1
     8c0:	d8 cf       	rjmp	.-80     	; 0x872 <.L25>
     8c2:	fe 01       	movw	r30, r28
     8c4:	31 96       	adiw	r30, 0x01	; 1
     8c6:	e0 0f       	add	r30, r16
     8c8:	f1 1d       	adc	r31, r1
     8ca:	10 82       	st	Z, r1
     8cc:	ce 01       	movw	r24, r28
     8ce:	01 96       	adiw	r24, 0x01	; 1
     8d0:	0e 94 aa 08 	call	0x1154	; 0x1154 <atoi>
     8d4:	08 2f       	mov	r16, r24
     8d6:	f9 2e       	mov	r15, r25

000008d8 <.L27>:
     8d8:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     8dc:	8e 33       	cpi	r24, 0x3E	; 62
     8de:	69 f0       	breq	.+26     	; 0x8fa <.L26>
     8e0:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <flag_WD>
     8e4:	91 11       	cpse	r25, r1
     8e6:	09 c0       	rjmp	.+18     	; 0x8fa <.L26>
     8e8:	17 30       	cpi	r17, 0x07	; 7
     8ea:	b1 f3       	breq	.-20     	; 0x8d8 <.L27>
     8ec:	fe 01       	movw	r30, r28
     8ee:	31 96       	adiw	r30, 0x01	; 1
     8f0:	e1 0f       	add	r30, r17
     8f2:	f1 1d       	adc	r31, r1
     8f4:	80 83       	st	Z, r24
     8f6:	1f 5f       	subi	r17, 0xFF	; 255
     8f8:	ef cf       	rjmp	.-34     	; 0x8d8 <.L27>

000008fa <.L26>:
     8fa:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <flag_WD>
     8fe:	81 11       	cpse	r24, r1
     900:	b8 cf       	rjmp	.-144    	; 0x872 <.L25>
     902:	fe 01       	movw	r30, r28
     904:	31 96       	adiw	r30, 0x01	; 1
     906:	e1 0f       	add	r30, r17
     908:	f1 1d       	adc	r31, r1
     90a:	10 82       	st	Z, r1
     90c:	ce 01       	movw	r24, r28
     90e:	01 96       	adiw	r24, 0x01	; 1
     910:	0e 94 aa 08 	call	0x1154	; 0x1154 <atoi>
     914:	38 2f       	mov	r19, r24
     916:	29 2f       	mov	r18, r25
     918:	b0 cf       	rjmp	.-160    	; 0x87a <.L22>

0000091a <debug_0_1RAD>:
     91a:	90 91 0f 01 	lds	r25, 0x010F	; 0x80010f <flag_1seg>
     91e:	91 15       	cp	r25, r1
     920:	89 f1       	breq	.+98     	; 0x984 <.L47>
     922:	10 92 0f 01 	sts	0x010F, r1	; 0x80010f <flag_1seg>
     926:	81 11       	cpse	r24, r1
     928:	17 c0       	rjmp	.+46     	; 0x958 <.L49>
     92a:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <x_angulo>
     92e:	70 91 0e 01 	lds	r23, 0x010E	; 0x80010e <x_angulo+0x1>
     932:	87 2f       	mov	r24, r23
     934:	88 0f       	add	r24, r24
     936:	88 0b       	sbc	r24, r24
     938:	98 2f       	mov	r25, r24
     93a:	0e 94 b1 07 	call	0xf62	; 0xf62 <__floatsisf>
     93e:	20 ee       	ldi	r18, 0xE0	; 224
     940:	3e e2       	ldi	r19, 0x2E	; 46
     942:	45 e6       	ldi	r20, 0x65	; 101
     944:	52 e4       	ldi	r21, 0x42	; 66
     946:	0e 94 9b 06 	call	0xd36	; 0xd36 <__addsf3>
     94a:	0e 94 79 07 	call	0xef2	; 0xef2 <__fixsfsi>
     94e:	70 93 0e 01 	sts	0x010E, r23	; 0x80010e <x_angulo+0x1>
     952:	60 93 0d 01 	sts	0x010D, r22	; 0x80010d <x_angulo>
     956:	08 95       	ret

00000958 <.L49>:
     958:	60 91 0b 01 	lds	r22, 0x010B	; 0x80010b <y_angulo>
     95c:	70 91 0c 01 	lds	r23, 0x010C	; 0x80010c <y_angulo+0x1>
     960:	87 2f       	mov	r24, r23
     962:	88 0f       	add	r24, r24
     964:	88 0b       	sbc	r24, r24
     966:	98 2f       	mov	r25, r24
     968:	0e 94 b1 07 	call	0xf62	; 0xf62 <__floatsisf>
     96c:	20 ee       	ldi	r18, 0xE0	; 224
     96e:	3e e2       	ldi	r19, 0x2E	; 46
     970:	45 e6       	ldi	r20, 0x65	; 101
     972:	52 e4       	ldi	r21, 0x42	; 66
     974:	0e 94 9b 06 	call	0xd36	; 0xd36 <__addsf3>
     978:	0e 94 79 07 	call	0xef2	; 0xef2 <__fixsfsi>
     97c:	70 93 0c 01 	sts	0x010C, r23	; 0x80010c <y_angulo+0x1>
     980:	60 93 0b 01 	sts	0x010B, r22	; 0x80010b <y_angulo>

00000984 <.L47>:
     984:	08 95       	ret

00000986 <procesar_joystick>:
     986:	0f 93       	push	r16
     988:	1f 93       	push	r17
     98a:	cf 93       	push	r28
     98c:	8c 01       	movw	r16, r24
     98e:	66 30       	cpi	r22, 0x06	; 6
     990:	71 05       	cpc	r23, r1
     992:	08 f4       	brcc	.+2      	; 0x996 <L0^A+0x2>

00000994 <L0^A>:
     994:	7c c0       	rjmp	.+248    	; 0xa8e <.L53>
     996:	fc 01       	movw	r30, r24
     998:	85 81       	ldd	r24, Z+5	; 0x05
     99a:	cc 27       	eor	r28, r28
     99c:	81 ff       	sbrs	r24, 1
     99e:	c3 95       	inc	r28
     9a0:	c0 93 06 01 	sts	0x0106, r28	; 0x800106 <boton_c.1>
     9a4:	80 fd       	sbrc	r24, 0
     9a6:	08 c0       	rjmp	.+16     	; 0x9b8 <.L55>
     9a8:	81 e0       	ldi	r24, 0x01	; 1
     9aa:	90 e0       	ldi	r25, 0x00	; 0
     9ac:	90 93 12 01 	sts	0x0112, r25	; 0x800112 <estado_actual+0x1>
     9b0:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <estado_actual>
     9b4:	0e 94 ed 03 	call	0x7da	; 0x7da <DEBUG_led_toggle>

000009b8 <.L55>:
     9b8:	ce 5f       	subi	r28, 0xFE	; 254
     9ba:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <y_angulo>
     9be:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <y_angulo+0x1>
     9c2:	f8 01       	movw	r30, r16
     9c4:	81 81       	ldd	r24, Z+1	; 0x01
     9c6:	80 58       	subi	r24, 0x80	; 128
     9c8:	99 0b       	sbc	r25, r25
     9ca:	0c 2e       	mov	r0, r28
     9cc:	02 c0       	rjmp	.+4      	; 0x9d2 <.L2^B2>

000009ce <.L1^B8>:
     9ce:	95 95       	asr	r25
     9d0:	87 95       	ror	r24

000009d2 <.L2^B2>:
     9d2:	0a 94       	dec	r0
     9d4:	e2 f7       	brpl	.-8      	; 0x9ce <.L1^B8>
     9d6:	82 0f       	add	r24, r18
     9d8:	93 1f       	adc	r25, r19
     9da:	90 93 0c 01 	sts	0x010C, r25	; 0x80010c <y_angulo+0x1>
     9de:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <y_angulo>
     9e2:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     9e6:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     9ea:	97 ff       	sbrs	r25, 7
     9ec:	34 c0       	rjmp	.+104    	; 0xa56 <.L56>
     9ee:	10 92 0c 01 	sts	0x010C, r1	; 0x80010c <y_angulo+0x1>
     9f2:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <y_angulo>

000009f6 <.L57>:
     9f6:	20 91 0d 01 	lds	r18, 0x010D	; 0x80010d <x_angulo>
     9fa:	30 91 0e 01 	lds	r19, 0x010E	; 0x80010e <x_angulo+0x1>
     9fe:	f8 01       	movw	r30, r16
     a00:	80 81       	ld	r24, Z
     a02:	80 58       	subi	r24, 0x80	; 128
     a04:	99 0b       	sbc	r25, r25
     a06:	02 c0       	rjmp	.+4      	; 0xa0c <.L2^B3>

00000a08 <.L1^B9>:
     a08:	95 95       	asr	r25
     a0a:	87 95       	ror	r24

00000a0c <.L2^B3>:
     a0c:	ca 95       	dec	r28
     a0e:	e2 f7       	brpl	.-8      	; 0xa08 <.L1^B9>
     a10:	28 1b       	sub	r18, r24
     a12:	39 0b       	sbc	r19, r25
     a14:	30 93 0e 01 	sts	0x010E, r19	; 0x80010e <x_angulo+0x1>
     a18:	20 93 0d 01 	sts	0x010D, r18	; 0x80010d <x_angulo>
     a1c:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     a20:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     a24:	97 ff       	sbrs	r25, 7
     a26:	25 c0       	rjmp	.+74     	; 0xa72 <.L58>
     a28:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <x_angulo+0x1>
     a2c:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <x_angulo>

00000a30 <.L59>:
     a30:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     a34:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     a38:	60 e0       	ldi	r22, 0x00	; 0
     a3a:	70 e0       	ldi	r23, 0x00	; 0
     a3c:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     a40:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     a44:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     a48:	61 e0       	ldi	r22, 0x01	; 1
     a4a:	70 e0       	ldi	r23, 0x00	; 0
     a4c:	cf 91       	pop	r28
     a4e:	1f 91       	pop	r17
     a50:	0f 91       	pop	r16
     a52:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <SERVO_set_angulo>

00000a56 <.L56>:
     a56:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     a5a:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     a5e:	84 38       	cpi	r24, 0x84	; 132
     a60:	93 40       	sbci	r25, 0x03	; 3
     a62:	4c f2       	brlt	.-110    	; 0x9f6 <.L57>
     a64:	83 e8       	ldi	r24, 0x83	; 131
     a66:	93 e0       	ldi	r25, 0x03	; 3
     a68:	90 93 0c 01 	sts	0x010C, r25	; 0x80010c <y_angulo+0x1>
     a6c:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <y_angulo>
     a70:	c2 cf       	rjmp	.-124    	; 0x9f6 <.L57>

00000a72 <.L58>:
     a72:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     a76:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     a7a:	88 30       	cpi	r24, 0x08	; 8
     a7c:	97 40       	sbci	r25, 0x07	; 7
     a7e:	c4 f2       	brlt	.-80     	; 0xa30 <.L59>
     a80:	87 e0       	ldi	r24, 0x07	; 7
     a82:	97 e0       	ldi	r25, 0x07	; 7
     a84:	90 93 0e 01 	sts	0x010E, r25	; 0x80010e <x_angulo+0x1>
     a88:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <x_angulo>
     a8c:	d1 cf       	rjmp	.-94     	; 0xa30 <.L59>

00000a8e <.L53>:
     a8e:	cf 91       	pop	r28
     a90:	1f 91       	pop	r17
     a92:	0f 91       	pop	r16
     a94:	08 95       	ret

00000a96 <procesar_boton_z>:
     a96:	66 30       	cpi	r22, 0x06	; 6
     a98:	71 05       	cpc	r23, r1
     a9a:	08 f4       	brcc	.+2      	; 0xa9e <L0^A+0x2>

00000a9c <L0^A>:
     a9c:	4a c0       	rjmp	.+148    	; 0xb32 <.L60>
     a9e:	fc 01       	movw	r30, r24
     aa0:	85 81       	ldd	r24, Z+5	; 0x05
     aa2:	80 ff       	sbrs	r24, 0
     aa4:	06 c0       	rjmp	.+12     	; 0xab2 <.L62>
     aa6:	10 92 12 01 	sts	0x0112, r1	; 0x800112 <estado_actual+0x1>
     aaa:	10 92 11 01 	sts	0x0111, r1	; 0x800111 <estado_actual>
     aae:	0e 94 ed 03 	call	0x7da	; 0x7da <DEBUG_led_toggle>

00000ab2 <.L62>:
     ab2:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     ab6:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     aba:	97 ff       	sbrs	r25, 7
     abc:	1e c0       	rjmp	.+60     	; 0xafa <.L63>
     abe:	10 92 0c 01 	sts	0x010C, r1	; 0x80010c <y_angulo+0x1>
     ac2:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <y_angulo>

00000ac6 <.L64>:
     ac6:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     aca:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     ace:	97 ff       	sbrs	r25, 7
     ad0:	22 c0       	rjmp	.+68     	; 0xb16 <.L65>
     ad2:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <x_angulo+0x1>
     ad6:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <x_angulo>

00000ada <.L66>:
     ada:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     ade:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     ae2:	60 e0       	ldi	r22, 0x00	; 0
     ae4:	70 e0       	ldi	r23, 0x00	; 0
     ae6:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     aea:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     aee:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     af2:	61 e0       	ldi	r22, 0x01	; 1
     af4:	70 e0       	ldi	r23, 0x00	; 0
     af6:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <SERVO_set_angulo>

00000afa <.L63>:
     afa:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <y_angulo>
     afe:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <y_angulo+0x1>
     b02:	84 38       	cpi	r24, 0x84	; 132
     b04:	93 40       	sbci	r25, 0x03	; 3
     b06:	fc f2       	brlt	.-66     	; 0xac6 <.L64>
     b08:	83 e8       	ldi	r24, 0x83	; 131
     b0a:	93 e0       	ldi	r25, 0x03	; 3
     b0c:	90 93 0c 01 	sts	0x010C, r25	; 0x80010c <y_angulo+0x1>
     b10:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <y_angulo>
     b14:	d8 cf       	rjmp	.-80     	; 0xac6 <.L64>

00000b16 <.L65>:
     b16:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <x_angulo>
     b1a:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <x_angulo+0x1>
     b1e:	88 30       	cpi	r24, 0x08	; 8
     b20:	97 40       	sbci	r25, 0x07	; 7
     b22:	dc f2       	brlt	.-74     	; 0xada <.L66>
     b24:	87 e0       	ldi	r24, 0x07	; 7
     b26:	97 e0       	ldi	r25, 0x07	; 7
     b28:	90 93 0e 01 	sts	0x010E, r25	; 0x80010e <x_angulo+0x1>
     b2c:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <x_angulo>
     b30:	d4 cf       	rjmp	.-88     	; 0xada <.L66>

00000b32 <.L60>:
     b32:	08 95       	ret

00000b34 <__vector_7>:
     b34:	18 95       	reti

00000b36 <__vector_14>:
     b36:	1f 92       	push	r1
     b38:	0f 92       	push	r0
     b3a:	0f b6       	in	r0, 0x3f	; 63
     b3c:	0f 92       	push	r0
     b3e:	11 24       	eor	r1, r1
     b40:	2f 93       	push	r18
     b42:	3f 93       	push	r19
     b44:	4f 93       	push	r20
     b46:	5f 93       	push	r21
     b48:	6f 93       	push	r22
     b4a:	7f 93       	push	r23
     b4c:	8f 93       	push	r24
     b4e:	9f 93       	push	r25
     b50:	af 93       	push	r26
     b52:	bf 93       	push	r27
     b54:	ef 93       	push	r30
     b56:	ff 93       	push	r31
     b58:	cf 93       	push	r28
     b5a:	df 93       	push	r29
     b5c:	00 d0       	rcall	.+0      	; 0xb5e <L0^A>

00000b5e <L0^A>:
     b5e:	00 d0       	rcall	.+0      	; 0xb60 <L0^A>

00000b60 <L0^A>:
     b60:	00 d0       	rcall	.+0      	; 0xb62 <L0^A>

00000b62 <L0^A>:
     b62:	cd b7       	in	r28, 0x3d	; 61
     b64:	de b7       	in	r29, 0x3e	; 62
     b66:	80 91 14 01 	lds	r24, 0x0114	; 0x800114 <contador_1seg.1>
     b6a:	90 91 15 01 	lds	r25, 0x0115	; 0x800115 <contador_1seg.1+0x1>
     b6e:	01 96       	adiw	r24, 0x01	; 1
     b70:	88 3e       	cpi	r24, 0xE8	; 232
     b72:	23 e0       	ldi	r18, 0x03	; 3
     b74:	92 07       	cpc	r25, r18
     b76:	08 f0       	brcs	.+2      	; 0xb7a <L0^A+0x2>

00000b78 <L0^A>:
     b78:	52 c0       	rjmp	.+164    	; 0xc1e <.L3>
     b7a:	80 93 14 01 	sts	0x0114, r24	; 0x800114 <contador_1seg.1>
     b7e:	90 93 15 01 	sts	0x0115, r25	; 0x800115 <contador_1seg.1+0x1>

00000b82 <.L4>:
     b82:	80 91 13 01 	lds	r24, 0x0113	; 0x800113 <contador_20ms.0>
     b86:	8f 5f       	subi	r24, 0xFF	; 255
     b88:	84 31       	cpi	r24, 0x14	; 20
     b8a:	08 f0       	brcs	.+2      	; 0xb8e <L0^A+0x2>

00000b8c <L0^A>:
     b8c:	50 c0       	rjmp	.+160    	; 0xc2e <.L5>
     b8e:	80 93 13 01 	sts	0x0113, r24	; 0x800113 <contador_20ms.0>

00000b92 <.L6>:
     b92:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <estado_actual>
     b96:	90 91 12 01 	lds	r25, 0x0112	; 0x800112 <estado_actual+0x1>
     b9a:	01 97       	sbiw	r24, 0x01	; 1
     b9c:	39 f5       	brne	.+78     	; 0xbec <.L2>
     b9e:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <contador_WD>
     ba2:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <contador_WD+0x1>
     ba6:	01 96       	adiw	r24, 0x01	; 1
     ba8:	90 93 09 01 	sts	0x0109, r25	; 0x800109 <contador_WD+0x1>
     bac:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <contador_WD>
     bb0:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <contador_WD>
     bb4:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <contador_WD+0x1>
     bb8:	88 3e       	cpi	r24, 0xE8	; 232
     bba:	93 40       	sbci	r25, 0x03	; 3
     bbc:	b8 f0       	brcs	.+46     	; 0xbec <.L2>
     bbe:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <contador_WD+0x1>
     bc2:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <contador_WD>
     bc6:	ce 01       	movw	r24, r28
     bc8:	01 96       	adiw	r24, 0x01	; 1
     bca:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     bce:	66 e0       	ldi	r22, 0x06	; 6
     bd0:	70 e0       	ldi	r23, 0x00	; 0
     bd2:	ce 01       	movw	r24, r28
     bd4:	01 96       	adiw	r24, 0x01	; 1
     bd6:	0e 94 4b 05 	call	0xa96	; 0xa96 <procesar_boton_z>
     bda:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <estado_actual>
     bde:	90 91 12 01 	lds	r25, 0x0112	; 0x800112 <estado_actual+0x1>
     be2:	89 2b       	or	r24, r25
     be4:	19 f4       	brne	.+6      	; 0xbec <.L2>
     be6:	81 e0       	ldi	r24, 0x01	; 1
     be8:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <flag_WD>

00000bec <.L2>:
     bec:	0f 90       	pop	r0
     bee:	0f 90       	pop	r0
     bf0:	0f 90       	pop	r0
     bf2:	0f 90       	pop	r0
     bf4:	0f 90       	pop	r0
     bf6:	0f 90       	pop	r0
     bf8:	df 91       	pop	r29
     bfa:	cf 91       	pop	r28
     bfc:	ff 91       	pop	r31
     bfe:	ef 91       	pop	r30
     c00:	bf 91       	pop	r27
     c02:	af 91       	pop	r26
     c04:	9f 91       	pop	r25
     c06:	8f 91       	pop	r24
     c08:	7f 91       	pop	r23
     c0a:	6f 91       	pop	r22
     c0c:	5f 91       	pop	r21
     c0e:	4f 91       	pop	r20
     c10:	3f 91       	pop	r19
     c12:	2f 91       	pop	r18
     c14:	0f 90       	pop	r0
     c16:	0f be       	out	0x3f, r0	; 63
     c18:	0f 90       	pop	r0
     c1a:	1f 90       	pop	r1
     c1c:	18 95       	reti

00000c1e <.L3>:
     c1e:	10 92 14 01 	sts	0x0114, r1	; 0x800114 <contador_1seg.1>
     c22:	10 92 15 01 	sts	0x0115, r1	; 0x800115 <contador_1seg.1+0x1>
     c26:	81 e0       	ldi	r24, 0x01	; 1
     c28:	80 93 0f 01 	sts	0x010F, r24	; 0x80010f <flag_1seg>
     c2c:	aa cf       	rjmp	.-172    	; 0xb82 <.L4>

00000c2e <.L5>:
     c2e:	10 92 13 01 	sts	0x0113, r1	; 0x800113 <contador_20ms.0>
     c32:	81 e0       	ldi	r24, 0x01	; 1
     c34:	80 93 10 01 	sts	0x0110, r24	; 0x800110 <flag_20ms>
     c38:	ac cf       	rjmp	.-168    	; 0xb92 <.L6>

00000c3a <main>:
     c3a:	00 d0       	rcall	.+0      	; 0xc3c <L0^A>

00000c3c <L0^A>:
     c3c:	00 d0       	rcall	.+0      	; 0xc3e <L0^A>

00000c3e <L0^A>:
     c3e:	00 d0       	rcall	.+0      	; 0xc40 <L0^A>

00000c40 <L0^A>:
     c40:	cd b7       	in	r28, 0x3d	; 61
     c42:	de b7       	in	r29, 0x3e	; 62
     c44:	0e 94 eb 03 	call	0x7d6	; 0x7d6 <DEBUG_init>
     c48:	0e 94 f2 03 	call	0x7e4	; 0x7e4 <DEBUG_led_on>
     c4c:	0e 94 3e 02 	call	0x47c	; 0x47c <I2C_init>

00000c50 <.L12>:
     c50:	0e 94 22 01 	call	0x244	; 0x244 <NUN_init>
     c54:	05 97       	sbiw	r24, 0x05	; 5
     c56:	49 f5       	brne	.+82     	; 0xcaa <.L13>
     c58:	0e 94 df 01 	call	0x3be	; 0x3be <USART_init>
     c5c:	0e 94 e7 02 	call	0x5ce	; 0x5ce <TIMER0_init_1ms>
     c60:	84 e1       	ldi	r24, 0x14	; 20
     c62:	90 e0       	ldi	r25, 0x00	; 0
     c64:	0e 94 ba 03 	call	0x774	; 0x774 <PWM_TIM1_init>
     c68:	0e 94 f4 03 	call	0x7e8	; 0x7e8 <DEBUG_led_off>
     c6c:	78 94       	sei

00000c6e <.L14>:
     c6e:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <estado_actual>
     c72:	90 91 12 01 	lds	r25, 0x0112	; 0x800112 <estado_actual+0x1>
     c76:	00 97       	sbiw	r24, 0x00	; 0
     c78:	21 f1       	breq	.+72     	; 0xcc2 <.L15>

00000c7a <.L17>:
     c7a:	81 30       	cpi	r24, 0x01	; 1
     c7c:	91 05       	cpc	r25, r1
     c7e:	e9 f7       	brne	.-6      	; 0xc7a <.L17>
     c80:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <flag_20ms>
     c84:	81 15       	cp	r24, r1
     c86:	99 f3       	breq	.-26     	; 0xc6e <.L14>
     c88:	10 92 10 01 	sts	0x0110, r1	; 0x800110 <flag_20ms>
     c8c:	0e 94 1a 04 	call	0x834	; 0x834 <get_error>
     c90:	0e 94 f6 03 	call	0x7ec	; 0x7ec <procesar_error>
     c94:	ce 01       	movw	r24, r28
     c96:	01 96       	adiw	r24, 0x01	; 1
     c98:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     c9c:	66 e0       	ldi	r22, 0x06	; 6
     c9e:	70 e0       	ldi	r23, 0x00	; 0
     ca0:	ce 01       	movw	r24, r28
     ca2:	01 96       	adiw	r24, 0x01	; 1
     ca4:	0e 94 4b 05 	call	0xa96	; 0xa96 <procesar_boton_z>
     ca8:	e2 cf       	rjmp	.-60     	; 0xc6e <.L14>

00000caa <.L13>:
     caa:	2f ef       	ldi	r18, 0xFF	; 255
     cac:	80 e7       	ldi	r24, 0x70	; 112
     cae:	92 e0       	ldi	r25, 0x02	; 2

00000cb0 <.L1^B1>:
     cb0:	21 50       	subi	r18, 0x01	; 1
     cb2:	80 40       	sbci	r24, 0x00	; 0
     cb4:	90 40       	sbci	r25, 0x00	; 0
     cb6:	e1 f7       	brne	.-8      	; 0xcb0 <.L1^B1>
     cb8:	00 c0       	rjmp	.+0      	; 0xcba <L0^A>

00000cba <L0^A>:
     cba:	00 00       	nop
     cbc:	0e 94 ed 03 	call	0x7da	; 0x7da <DEBUG_led_toggle>
     cc0:	c7 cf       	rjmp	.-114    	; 0xc50 <.L12>

00000cc2 <.L15>:
     cc2:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <flag_20ms>
     cc6:	81 15       	cp	r24, r1
     cc8:	91 f2       	breq	.-92     	; 0xc6e <.L14>
     cca:	10 92 10 01 	sts	0x0110, r1	; 0x800110 <flag_20ms>
     cce:	ce 01       	movw	r24, r28
     cd0:	01 96       	adiw	r24, 0x01	; 1
     cd2:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     cd6:	66 e0       	ldi	r22, 0x06	; 6
     cd8:	70 e0       	ldi	r23, 0x00	; 0
     cda:	ce 01       	movw	r24, r28
     cdc:	01 96       	adiw	r24, 0x01	; 1
     cde:	0e 94 c3 04 	call	0x986	; 0x986 <procesar_joystick>
     ce2:	c5 cf       	rjmp	.-118    	; 0xc6e <.L14>

00000ce4 <__udivmodhi4>:
     ce4:	aa 1b       	sub	r26, r26

00000ce6 <.Loc.1>:
     ce6:	bb 1b       	sub	r27, r27

00000ce8 <.Loc.2>:
     ce8:	51 e1       	ldi	r21, 0x11	; 17

00000cea <.Loc.3>:
     cea:	07 c0       	rjmp	.+14     	; 0xcfa <__udivmodhi4_ep>

00000cec <__udivmodhi4_loop>:
     cec:	aa 1f       	adc	r26, r26

00000cee <.Loc.5>:
     cee:	bb 1f       	adc	r27, r27

00000cf0 <.Loc.6>:
     cf0:	a6 17       	cp	r26, r22

00000cf2 <.Loc.7>:
     cf2:	b7 07       	cpc	r27, r23

00000cf4 <.Loc.8>:
     cf4:	10 f0       	brcs	.+4      	; 0xcfa <__udivmodhi4_ep>

00000cf6 <.Loc.9>:
     cf6:	a6 1b       	sub	r26, r22

00000cf8 <.Loc.10>:
     cf8:	b7 0b       	sbc	r27, r23

00000cfa <__udivmodhi4_ep>:
     cfa:	88 1f       	adc	r24, r24

00000cfc <.Loc.12>:
     cfc:	99 1f       	adc	r25, r25

00000cfe <.Loc.13>:
     cfe:	5a 95       	dec	r21

00000d00 <.Loc.14>:
     d00:	a9 f7       	brne	.-22     	; 0xcec <__udivmodhi4_loop>

00000d02 <.Loc.15>:
     d02:	80 95       	com	r24

00000d04 <.Loc.16>:
     d04:	90 95       	com	r25

00000d06 <.Loc.17>:
     d06:	bc 01       	movw	r22, r24

00000d08 <.Loc.18>:
     d08:	cd 01       	movw	r24, r26

00000d0a <.Loc.19>:
     d0a:	08 95       	ret

00000d0c <__divmodhi4>:
     d0c:	97 fb       	bst	r25, 7

00000d0e <.Loc.1>:
     d0e:	07 2e       	mov	r0, r23

00000d10 <.Loc.2>:
     d10:	16 f4       	brtc	.+4      	; 0xd16 <.L0^B1>

00000d12 <.Loc.3>:
     d12:	00 94       	com	r0

00000d14 <.Loc.4>:
     d14:	07 d0       	rcall	.+14     	; 0xd24 <__divmodhi4_neg1>

00000d16 <.L0^B1>:
     d16:	77 fd       	sbrc	r23, 7

00000d18 <.Loc.6>:
     d18:	09 d0       	rcall	.+18     	; 0xd2c <__divmodhi4_neg2>

00000d1a <.Loc.7>:
     d1a:	0e 94 72 06 	call	0xce4	; 0xce4 <__udivmodhi4>

00000d1e <.Loc.8>:
     d1e:	07 fc       	sbrc	r0, 7

00000d20 <.Loc.9>:
     d20:	05 d0       	rcall	.+10     	; 0xd2c <__divmodhi4_neg2>

00000d22 <.Loc.10>:
     d22:	3e f4       	brtc	.+14     	; 0xd32 <__divmodhi4_exit>

00000d24 <__divmodhi4_neg1>:
     d24:	90 95       	com	r25

00000d26 <.Loc.12>:
     d26:	81 95       	neg	r24

00000d28 <.Loc.13>:
     d28:	9f 4f       	sbci	r25, 0xFF	; 255

00000d2a <.Loc.14>:
     d2a:	08 95       	ret

00000d2c <__divmodhi4_neg2>:
     d2c:	70 95       	com	r23

00000d2e <.Loc.16>:
     d2e:	61 95       	neg	r22

00000d30 <.Loc.17>:
     d30:	7f 4f       	sbci	r23, 0xFF	; 255

00000d32 <__divmodhi4_exit>:
     d32:	08 95       	ret

00000d34 <__subsf3>:
     d34:	50 58       	subi	r21, 0x80	; 128

00000d36 <__addsf3>:
     d36:	bb 27       	eor	r27, r27
     d38:	aa 27       	eor	r26, r26
     d3a:	0e 94 b2 06 	call	0xd64	; 0xd64 <__addsf3x>
     d3e:	0c 94 03 08 	jmp	0x1006	; 0x1006 <__fp_round>

00000d42 <.L0^B1>:
     d42:	0e 94 f5 07 	call	0xfea	; 0xfea <__fp_pscA>
     d46:	38 f0       	brcs	.+14     	; 0xd56 <.L_nan>
     d48:	0e 94 fc 07 	call	0xff8	; 0xff8 <__fp_pscB>
     d4c:	20 f0       	brcs	.+8      	; 0xd56 <.L_nan>
     d4e:	39 f4       	brne	.+14     	; 0xd5e <.L_inf>
     d50:	9f 3f       	cpi	r25, 0xFF	; 255
     d52:	19 f4       	brne	.+6      	; 0xd5a <.L_infB>
     d54:	26 f4       	brtc	.+8      	; 0xd5e <.L_inf>

00000d56 <.L_nan>:
     d56:	0c 94 f2 07 	jmp	0xfe4	; 0xfe4 <__fp_nan>

00000d5a <.L_infB>:
     d5a:	0e f4       	brtc	.+2      	; 0xd5e <.L_inf>
     d5c:	e0 95       	com	r30

00000d5e <.L_inf>:
     d5e:	e7 fb       	bst	r30, 7
     d60:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__fp_inf>

00000d64 <__addsf3x>:
     d64:	e9 2f       	mov	r30, r25
     d66:	0e 94 14 08 	call	0x1028	; 0x1028 <__fp_split3>
     d6a:	58 f3       	brcs	.-42     	; 0xd42 <.L0^B1>
     d6c:	ba 17       	cp	r27, r26
     d6e:	62 07       	cpc	r22, r18
     d70:	73 07       	cpc	r23, r19
     d72:	84 07       	cpc	r24, r20
     d74:	95 07       	cpc	r25, r21
     d76:	20 f0       	brcs	.+8      	; 0xd80 <.L2^B1>
     d78:	79 f4       	brne	.+30     	; 0xd98 <.L4^B1>
     d7a:	a6 f5       	brtc	.+104    	; 0xde4 <.L_add>
     d7c:	0c 94 36 08 	jmp	0x106c	; 0x106c <__fp_zero>

00000d80 <.L2^B1>:
     d80:	0e f4       	brtc	.+2      	; 0xd84 <.L3^B1>
     d82:	e0 95       	com	r30

00000d84 <.L3^B1>:
     d84:	0b 2e       	mov	r0, r27
     d86:	ba 2f       	mov	r27, r26
     d88:	a0 2d       	mov	r26, r0
     d8a:	0b 01       	movw	r0, r22
     d8c:	b9 01       	movw	r22, r18
     d8e:	90 01       	movw	r18, r0
     d90:	0c 01       	movw	r0, r24
     d92:	ca 01       	movw	r24, r20
     d94:	a0 01       	movw	r20, r0
     d96:	11 24       	eor	r1, r1

00000d98 <.L4^B1>:
     d98:	ff 27       	eor	r31, r31
     d9a:	59 1b       	sub	r21, r25

00000d9c <.L5^B1>:
     d9c:	99 f0       	breq	.+38     	; 0xdc4 <.L7^B1>
     d9e:	59 3f       	cpi	r21, 0xF9	; 249
     da0:	50 f4       	brcc	.+20     	; 0xdb6 <.L6^B1>
     da2:	50 3e       	cpi	r21, 0xE0	; 224
     da4:	68 f1       	brcs	.+90     	; 0xe00 <.L_ret>
     da6:	1a 16       	cp	r1, r26
     da8:	f0 40       	sbci	r31, 0x00	; 0
     daa:	a2 2f       	mov	r26, r18
     dac:	23 2f       	mov	r18, r19
     dae:	34 2f       	mov	r19, r20
     db0:	44 27       	eor	r20, r20
     db2:	58 5f       	subi	r21, 0xF8	; 248
     db4:	f3 cf       	rjmp	.-26     	; 0xd9c <.L5^B1>

00000db6 <.L6^B1>:
     db6:	46 95       	lsr	r20
     db8:	37 95       	ror	r19
     dba:	27 95       	ror	r18
     dbc:	a7 95       	ror	r26
     dbe:	f0 40       	sbci	r31, 0x00	; 0
     dc0:	53 95       	inc	r21
     dc2:	c9 f7       	brne	.-14     	; 0xdb6 <.L6^B1>

00000dc4 <.L7^B1>:
     dc4:	7e f4       	brtc	.+30     	; 0xde4 <.L_add>
     dc6:	1f 16       	cp	r1, r31
     dc8:	ba 0b       	sbc	r27, r26
     dca:	62 0b       	sbc	r22, r18
     dcc:	73 0b       	sbc	r23, r19
     dce:	84 0b       	sbc	r24, r20
     dd0:	ba f0       	brmi	.+46     	; 0xe00 <.L_ret>

00000dd2 <.L8^B1>:
     dd2:	91 50       	subi	r25, 0x01	; 1
     dd4:	a1 f0       	breq	.+40     	; 0xdfe <.L9^B1>
     dd6:	ff 0f       	add	r31, r31
     dd8:	bb 1f       	adc	r27, r27
     dda:	66 1f       	adc	r22, r22
     ddc:	77 1f       	adc	r23, r23
     dde:	88 1f       	adc	r24, r24
     de0:	c2 f7       	brpl	.-16     	; 0xdd2 <.L8^B1>
     de2:	0e c0       	rjmp	.+28     	; 0xe00 <.L_ret>

00000de4 <.L_add>:
     de4:	ba 0f       	add	r27, r26
     de6:	62 1f       	adc	r22, r18
     de8:	73 1f       	adc	r23, r19
     dea:	84 1f       	adc	r24, r20
     dec:	48 f4       	brcc	.+18     	; 0xe00 <.L_ret>
     dee:	87 95       	ror	r24
     df0:	77 95       	ror	r23
     df2:	67 95       	ror	r22
     df4:	b7 95       	ror	r27
     df6:	f7 95       	ror	r31
     df8:	9e 3f       	cpi	r25, 0xFE	; 254
     dfa:	08 f0       	brcs	.+2      	; 0xdfe <.L9^B1>
     dfc:	b0 cf       	rjmp	.-160    	; 0xd5e <.L_inf>

00000dfe <.L9^B1>:
     dfe:	93 95       	inc	r25

00000e00 <.L_ret>:
     e00:	88 0f       	add	r24, r24
     e02:	08 f0       	brcs	.+2      	; 0xe06 <.L1^B1>
     e04:	99 27       	eor	r25, r25

00000e06 <.L1^B1>:
     e06:	ee 0f       	add	r30, r30
     e08:	97 95       	ror	r25
     e0a:	87 95       	ror	r24
     e0c:	08 95       	ret

00000e0e <__divsf3>:
     e0e:	0e 94 1b 07 	call	0xe36	; 0xe36 <__divsf3x>
     e12:	0c 94 03 08 	jmp	0x1006	; 0x1006 <__fp_round>

00000e16 <.L0^B1>:
     e16:	0e 94 fc 07 	call	0xff8	; 0xff8 <__fp_pscB>
     e1a:	58 f0       	brcs	.+22     	; 0xe32 <.L_nan>
     e1c:	0e 94 f5 07 	call	0xfea	; 0xfea <__fp_pscA>
     e20:	40 f0       	brcs	.+16     	; 0xe32 <.L_nan>
     e22:	29 f4       	brne	.+10     	; 0xe2e <.L_zr>
     e24:	5f 3f       	cpi	r21, 0xFF	; 255
     e26:	29 f0       	breq	.+10     	; 0xe32 <.L_nan>

00000e28 <.L_inf>:
     e28:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__fp_inf>

00000e2c <.L1^B1>:
     e2c:	51 11       	cpse	r21, r1

00000e2e <.L_zr>:
     e2e:	0c 94 37 08 	jmp	0x106e	; 0x106e <__fp_szero>

00000e32 <.L_nan>:
     e32:	0c 94 f2 07 	jmp	0xfe4	; 0xfe4 <__fp_nan>

00000e36 <__divsf3x>:
     e36:	0e 94 14 08 	call	0x1028	; 0x1028 <__fp_split3>
     e3a:	68 f3       	brcs	.-38     	; 0xe16 <.L0^B1>

00000e3c <__divsf3_pse>:
     e3c:	99 23       	and	r25, r25
     e3e:	b1 f3       	breq	.-20     	; 0xe2c <.L1^B1>
     e40:	55 23       	and	r21, r21
     e42:	91 f3       	breq	.-28     	; 0xe28 <.L_inf>
     e44:	95 1b       	sub	r25, r21
     e46:	55 0b       	sbc	r21, r21
     e48:	bb 27       	eor	r27, r27
     e4a:	aa 27       	eor	r26, r26

00000e4c <.L2^B1>:
     e4c:	62 17       	cp	r22, r18
     e4e:	73 07       	cpc	r23, r19
     e50:	84 07       	cpc	r24, r20
     e52:	38 f0       	brcs	.+14     	; 0xe62 <.L3^B1>
     e54:	9f 5f       	subi	r25, 0xFF	; 255
     e56:	5f 4f       	sbci	r21, 0xFF	; 255
     e58:	22 0f       	add	r18, r18
     e5a:	33 1f       	adc	r19, r19
     e5c:	44 1f       	adc	r20, r20
     e5e:	aa 1f       	adc	r26, r26
     e60:	a9 f3       	breq	.-22     	; 0xe4c <.L2^B1>

00000e62 <.L3^B1>:
     e62:	35 d0       	rcall	.+106    	; 0xece <.L_div>
     e64:	0e 2e       	mov	r0, r30
     e66:	3a f0       	brmi	.+14     	; 0xe76 <.L5^B1>

00000e68 <.L4^B1>:
     e68:	e0 e8       	ldi	r30, 0x80	; 128
     e6a:	32 d0       	rcall	.+100    	; 0xed0 <.L_div1>
     e6c:	91 50       	subi	r25, 0x01	; 1
     e6e:	50 40       	sbci	r21, 0x00	; 0
     e70:	e6 95       	lsr	r30
     e72:	00 1c       	adc	r0, r0
     e74:	ca f7       	brpl	.-14     	; 0xe68 <.L4^B1>

00000e76 <.L5^B1>:
     e76:	2b d0       	rcall	.+86     	; 0xece <.L_div>
     e78:	fe 2f       	mov	r31, r30
     e7a:	29 d0       	rcall	.+82     	; 0xece <.L_div>
     e7c:	66 0f       	add	r22, r22
     e7e:	77 1f       	adc	r23, r23
     e80:	88 1f       	adc	r24, r24
     e82:	bb 1f       	adc	r27, r27
     e84:	26 17       	cp	r18, r22
     e86:	37 07       	cpc	r19, r23
     e88:	48 07       	cpc	r20, r24
     e8a:	ab 07       	cpc	r26, r27
     e8c:	b0 e8       	ldi	r27, 0x80	; 128
     e8e:	09 f0       	breq	.+2      	; 0xe92 <.L4^B2>
     e90:	bb 0b       	sbc	r27, r27

00000e92 <.L4^B2>:
     e92:	80 2d       	mov	r24, r0
     e94:	bf 01       	movw	r22, r30
     e96:	ff 27       	eor	r31, r31
     e98:	93 58       	subi	r25, 0x83	; 131
     e9a:	5f 4f       	sbci	r21, 0xFF	; 255
     e9c:	3a f0       	brmi	.+14     	; 0xeac <.L13^B1>
     e9e:	9e 3f       	cpi	r25, 0xFE	; 254
     ea0:	51 05       	cpc	r21, r1
     ea2:	78 f0       	brcs	.+30     	; 0xec2 <.L15^B1>
     ea4:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__fp_inf>

00000ea8 <.L12^B1>:
     ea8:	0c 94 37 08 	jmp	0x106e	; 0x106e <__fp_szero>

00000eac <.L13^B1>:
     eac:	5f 3f       	cpi	r21, 0xFF	; 255
     eae:	e4 f3       	brlt	.-8      	; 0xea8 <.L12^B1>
     eb0:	98 3e       	cpi	r25, 0xE8	; 232
     eb2:	d4 f3       	brlt	.-12     	; 0xea8 <.L12^B1>

00000eb4 <.L14^B1>:
     eb4:	86 95       	lsr	r24
     eb6:	77 95       	ror	r23
     eb8:	67 95       	ror	r22
     eba:	b7 95       	ror	r27
     ebc:	f7 95       	ror	r31
     ebe:	9f 5f       	subi	r25, 0xFF	; 255
     ec0:	c9 f7       	brne	.-14     	; 0xeb4 <.L14^B1>

00000ec2 <.L15^B1>:
     ec2:	88 0f       	add	r24, r24
     ec4:	91 1d       	adc	r25, r1
     ec6:	96 95       	lsr	r25
     ec8:	87 95       	ror	r24
     eca:	97 f9       	bld	r25, 7
     ecc:	08 95       	ret

00000ece <.L_div>:
     ece:	e1 e0       	ldi	r30, 0x01	; 1

00000ed0 <.L_div1>:
     ed0:	66 0f       	add	r22, r22
     ed2:	77 1f       	adc	r23, r23
     ed4:	88 1f       	adc	r24, r24
     ed6:	bb 1f       	adc	r27, r27
     ed8:	62 17       	cp	r22, r18
     eda:	73 07       	cpc	r23, r19
     edc:	84 07       	cpc	r24, r20
     ede:	ba 07       	cpc	r27, r26
     ee0:	20 f0       	brcs	.+8      	; 0xeea <.L2^B2>
     ee2:	62 1b       	sub	r22, r18
     ee4:	73 0b       	sbc	r23, r19
     ee6:	84 0b       	sbc	r24, r20
     ee8:	ba 0b       	sbc	r27, r26

00000eea <.L2^B2>:
     eea:	ee 1f       	adc	r30, r30
     eec:	88 f7       	brcc	.-30     	; 0xed0 <.L_div1>
     eee:	e0 95       	com	r30
     ef0:	08 95       	ret

00000ef2 <__fixsfsi>:
     ef2:	0e 94 80 07 	call	0xf00	; 0xf00 <__fixunssfsi>
     ef6:	68 94       	set
     ef8:	b1 11       	cpse	r27, r1
     efa:	0c 94 37 08 	jmp	0x106e	; 0x106e <__fp_szero>
     efe:	08 95       	ret

00000f00 <__fixunssfsi>:
     f00:	0e 94 1c 08 	call	0x1038	; 0x1038 <__fp_splitA>
     f04:	88 f0       	brcs	.+34     	; 0xf28 <.L_err>
     f06:	9f 57       	subi	r25, 0x7F	; 127
     f08:	98 f0       	brcs	.+38     	; 0xf30 <.L_zr>
     f0a:	b9 2f       	mov	r27, r25
     f0c:	99 27       	eor	r25, r25
     f0e:	b7 51       	subi	r27, 0x17	; 23
     f10:	b0 f0       	brcs	.+44     	; 0xf3e <.L4^B1>
     f12:	e1 f0       	breq	.+56     	; 0xf4c <.L_sign>

00000f14 <.L1^B1>:
     f14:	66 0f       	add	r22, r22
     f16:	77 1f       	adc	r23, r23
     f18:	88 1f       	adc	r24, r24
     f1a:	99 1f       	adc	r25, r25
     f1c:	1a f0       	brmi	.+6      	; 0xf24 <.L2^B1>
     f1e:	ba 95       	dec	r27
     f20:	c9 f7       	brne	.-14     	; 0xf14 <.L1^B1>
     f22:	14 c0       	rjmp	.+40     	; 0xf4c <.L_sign>

00000f24 <.L2^B1>:
     f24:	b1 30       	cpi	r27, 0x01	; 1
     f26:	91 f0       	breq	.+36     	; 0xf4c <.L_sign>

00000f28 <.L_err>:
     f28:	0e 94 36 08 	call	0x106c	; 0x106c <__fp_zero>
     f2c:	b1 e0       	ldi	r27, 0x01	; 1
     f2e:	08 95       	ret

00000f30 <.L_zr>:
     f30:	0c 94 36 08 	jmp	0x106c	; 0x106c <__fp_zero>

00000f34 <.L3^B1>:
     f34:	67 2f       	mov	r22, r23
     f36:	78 2f       	mov	r23, r24
     f38:	88 27       	eor	r24, r24
     f3a:	b8 5f       	subi	r27, 0xF8	; 248
     f3c:	39 f0       	breq	.+14     	; 0xf4c <.L_sign>

00000f3e <.L4^B1>:
     f3e:	b9 3f       	cpi	r27, 0xF9	; 249
     f40:	cc f3       	brlt	.-14     	; 0xf34 <.L3^B1>

00000f42 <.L5^B1>:
     f42:	86 95       	lsr	r24
     f44:	77 95       	ror	r23
     f46:	67 95       	ror	r22
     f48:	b3 95       	inc	r27
     f4a:	d9 f7       	brne	.-10     	; 0xf42 <.L5^B1>

00000f4c <.L_sign>:
     f4c:	3e f4       	brtc	.+14     	; 0xf5c <.L6^B1>
     f4e:	90 95       	com	r25
     f50:	80 95       	com	r24
     f52:	70 95       	com	r23
     f54:	61 95       	neg	r22
     f56:	7f 4f       	sbci	r23, 0xFF	; 255
     f58:	8f 4f       	sbci	r24, 0xFF	; 255
     f5a:	9f 4f       	sbci	r25, 0xFF	; 255

00000f5c <.L6^B1>:
     f5c:	08 95       	ret

00000f5e <__floatunsisf>:
     f5e:	e8 94       	clt
     f60:	09 c0       	rjmp	.+18     	; 0xf74 <.L1^B1>

00000f62 <__floatsisf>:
     f62:	97 fb       	bst	r25, 7
     f64:	3e f4       	brtc	.+14     	; 0xf74 <.L1^B1>
     f66:	90 95       	com	r25
     f68:	80 95       	com	r24
     f6a:	70 95       	com	r23
     f6c:	61 95       	neg	r22
     f6e:	7f 4f       	sbci	r23, 0xFF	; 255
     f70:	8f 4f       	sbci	r24, 0xFF	; 255
     f72:	9f 4f       	sbci	r25, 0xFF	; 255

00000f74 <.L1^B1>:
     f74:	99 23       	and	r25, r25
     f76:	a9 f0       	breq	.+42     	; 0xfa2 <.L4^B1>
     f78:	f9 2f       	mov	r31, r25
     f7a:	96 e9       	ldi	r25, 0x96	; 150
     f7c:	bb 27       	eor	r27, r27

00000f7e <.L2^B1>:
     f7e:	93 95       	inc	r25
     f80:	f6 95       	lsr	r31
     f82:	87 95       	ror	r24
     f84:	77 95       	ror	r23
     f86:	67 95       	ror	r22
     f88:	b7 95       	ror	r27
     f8a:	f1 11       	cpse	r31, r1
     f8c:	f8 cf       	rjmp	.-16     	; 0xf7e <.L2^B1>
     f8e:	fa f4       	brpl	.+62     	; 0xfce <.L_pack>
     f90:	bb 0f       	add	r27, r27
     f92:	11 f4       	brne	.+4      	; 0xf98 <.L3^B1>
     f94:	60 ff       	sbrs	r22, 0
     f96:	1b c0       	rjmp	.+54     	; 0xfce <.L_pack>

00000f98 <.L3^B1>:
     f98:	6f 5f       	subi	r22, 0xFF	; 255
     f9a:	7f 4f       	sbci	r23, 0xFF	; 255
     f9c:	8f 4f       	sbci	r24, 0xFF	; 255
     f9e:	9f 4f       	sbci	r25, 0xFF	; 255
     fa0:	16 c0       	rjmp	.+44     	; 0xfce <.L_pack>

00000fa2 <.L4^B1>:
     fa2:	88 23       	and	r24, r24
     fa4:	11 f0       	breq	.+4      	; 0xfaa <.L5^B1>
     fa6:	96 e9       	ldi	r25, 0x96	; 150
     fa8:	11 c0       	rjmp	.+34     	; 0xfcc <.L8^B1>

00000faa <.L5^B1>:
     faa:	77 23       	and	r23, r23
     fac:	21 f0       	breq	.+8      	; 0xfb6 <.L6^B1>
     fae:	9e e8       	ldi	r25, 0x8E	; 142
     fb0:	87 2f       	mov	r24, r23
     fb2:	76 2f       	mov	r23, r22
     fb4:	05 c0       	rjmp	.+10     	; 0xfc0 <.L7^B1>

00000fb6 <.L6^B1>:
     fb6:	66 23       	and	r22, r22
     fb8:	71 f0       	breq	.+28     	; 0xfd6 <.L9^B1>
     fba:	96 e8       	ldi	r25, 0x86	; 134
     fbc:	86 2f       	mov	r24, r22
     fbe:	70 e0       	ldi	r23, 0x00	; 0

00000fc0 <.L7^B1>:
     fc0:	60 e0       	ldi	r22, 0x00	; 0
     fc2:	2a f0       	brmi	.+10     	; 0xfce <.L_pack>

00000fc4 <.L10^B1>:
     fc4:	9a 95       	dec	r25
     fc6:	66 0f       	add	r22, r22
     fc8:	77 1f       	adc	r23, r23
     fca:	88 1f       	adc	r24, r24

00000fcc <.L8^B1>:
     fcc:	da f7       	brpl	.-10     	; 0xfc4 <.L10^B1>

00000fce <.L_pack>:
     fce:	88 0f       	add	r24, r24
     fd0:	96 95       	lsr	r25
     fd2:	87 95       	ror	r24
     fd4:	97 f9       	bld	r25, 7

00000fd6 <.L9^B1>:
     fd6:	08 95       	ret

00000fd8 <__fp_inf>:
     fd8:	97 f9       	bld	r25, 7
     fda:	9f 67       	ori	r25, 0x7F	; 127
     fdc:	80 e8       	ldi	r24, 0x80	; 128
     fde:	70 e0       	ldi	r23, 0x00	; 0
     fe0:	60 e0       	ldi	r22, 0x00	; 0
     fe2:	08 95       	ret

00000fe4 <__fp_nan>:
     fe4:	9f ef       	ldi	r25, 0xFF	; 255
     fe6:	80 ec       	ldi	r24, 0xC0	; 192
     fe8:	08 95       	ret

00000fea <__fp_pscA>:
     fea:	00 24       	eor	r0, r0
     fec:	0a 94       	dec	r0
     fee:	16 16       	cp	r1, r22
     ff0:	17 06       	cpc	r1, r23
     ff2:	18 06       	cpc	r1, r24
     ff4:	09 06       	cpc	r0, r25
     ff6:	08 95       	ret

00000ff8 <__fp_pscB>:
     ff8:	00 24       	eor	r0, r0
     ffa:	0a 94       	dec	r0
     ffc:	12 16       	cp	r1, r18
     ffe:	13 06       	cpc	r1, r19
    1000:	14 06       	cpc	r1, r20
    1002:	05 06       	cpc	r0, r21
    1004:	08 95       	ret

00001006 <__fp_round>:
    1006:	09 2e       	mov	r0, r25
    1008:	03 94       	inc	r0
    100a:	00 0c       	add	r0, r0
    100c:	11 f4       	brne	.+4      	; 0x1012 <.L1^B1>
    100e:	88 23       	and	r24, r24
    1010:	52 f0       	brmi	.+20     	; 0x1026 <.L3^B1>

00001012 <.L1^B1>:
    1012:	bb 0f       	add	r27, r27
    1014:	40 f4       	brcc	.+16     	; 0x1026 <.L3^B1>
    1016:	bf 2b       	or	r27, r31
    1018:	11 f4       	brne	.+4      	; 0x101e <.L2^B1>
    101a:	60 ff       	sbrs	r22, 0
    101c:	04 c0       	rjmp	.+8      	; 0x1026 <.L3^B1>

0000101e <.L2^B1>:
    101e:	6f 5f       	subi	r22, 0xFF	; 255
    1020:	7f 4f       	sbci	r23, 0xFF	; 255
    1022:	8f 4f       	sbci	r24, 0xFF	; 255
    1024:	9f 4f       	sbci	r25, 0xFF	; 255

00001026 <.L3^B1>:
    1026:	08 95       	ret

00001028 <__fp_split3>:
    1028:	57 fd       	sbrc	r21, 7
    102a:	90 58       	subi	r25, 0x80	; 128
    102c:	44 0f       	add	r20, r20
    102e:	55 1f       	adc	r21, r21
    1030:	59 f0       	breq	.+22     	; 0x1048 <.L4^B1>
    1032:	5f 3f       	cpi	r21, 0xFF	; 255
    1034:	71 f0       	breq	.+28     	; 0x1052 <.L5^B1>

00001036 <.L1^B1>:
    1036:	47 95       	ror	r20

00001038 <__fp_splitA>:
    1038:	88 0f       	add	r24, r24
    103a:	97 fb       	bst	r25, 7
    103c:	99 1f       	adc	r25, r25
    103e:	61 f0       	breq	.+24     	; 0x1058 <.L6^B1>
    1040:	9f 3f       	cpi	r25, 0xFF	; 255
    1042:	79 f0       	breq	.+30     	; 0x1062 <.L7^B1>

00001044 <.L3^B1>:
    1044:	87 95       	ror	r24
    1046:	08 95       	ret

00001048 <.L4^B1>:
    1048:	12 16       	cp	r1, r18
    104a:	13 06       	cpc	r1, r19
    104c:	14 06       	cpc	r1, r20
    104e:	55 1f       	adc	r21, r21
    1050:	f2 cf       	rjmp	.-28     	; 0x1036 <.L1^B1>

00001052 <.L5^B1>:
    1052:	46 95       	lsr	r20
    1054:	f1 df       	rcall	.-30     	; 0x1038 <__fp_splitA>
    1056:	08 c0       	rjmp	.+16     	; 0x1068 <.L8^B1>

00001058 <.L6^B1>:
    1058:	16 16       	cp	r1, r22
    105a:	17 06       	cpc	r1, r23
    105c:	18 06       	cpc	r1, r24
    105e:	99 1f       	adc	r25, r25
    1060:	f1 cf       	rjmp	.-30     	; 0x1044 <.L3^B1>

00001062 <.L7^B1>:
    1062:	86 95       	lsr	r24
    1064:	71 05       	cpc	r23, r1
    1066:	61 05       	cpc	r22, r1

00001068 <.L8^B1>:
    1068:	08 94       	sec
    106a:	08 95       	ret

0000106c <__fp_zero>:
    106c:	e8 94       	clt

0000106e <__fp_szero>:
    106e:	bb 27       	eor	r27, r27
    1070:	66 27       	eor	r22, r22
    1072:	77 27       	eor	r23, r23
    1074:	cb 01       	movw	r24, r22
    1076:	97 f9       	bld	r25, 7
    1078:	08 95       	ret

0000107a <__mulsf3>:
    107a:	0e 94 50 08 	call	0x10a0	; 0x10a0 <__mulsf3x>
    107e:	0c 94 03 08 	jmp	0x1006	; 0x1006 <__fp_round>

00001082 <.L0^B1>:
    1082:	0e 94 f5 07 	call	0xfea	; 0xfea <__fp_pscA>
    1086:	38 f0       	brcs	.+14     	; 0x1096 <.L1^B1>
    1088:	0e 94 fc 07 	call	0xff8	; 0xff8 <__fp_pscB>
    108c:	20 f0       	brcs	.+8      	; 0x1096 <.L1^B1>
    108e:	95 23       	and	r25, r21
    1090:	11 f0       	breq	.+4      	; 0x1096 <.L1^B1>
    1092:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__fp_inf>

00001096 <.L1^B1>:
    1096:	0c 94 f2 07 	jmp	0xfe4	; 0xfe4 <__fp_nan>

0000109a <.L2^B1>:
    109a:	11 24       	eor	r1, r1
    109c:	0c 94 37 08 	jmp	0x106e	; 0x106e <__fp_szero>

000010a0 <__mulsf3x>:
    10a0:	0e 94 14 08 	call	0x1028	; 0x1028 <__fp_split3>
    10a4:	70 f3       	brcs	.-36     	; 0x1082 <.L0^B1>

000010a6 <__mulsf3_pse>:
    10a6:	95 9f       	mul	r25, r21
    10a8:	c1 f3       	breq	.-16     	; 0x109a <.L2^B1>
    10aa:	95 0f       	add	r25, r21
    10ac:	50 e0       	ldi	r21, 0x00	; 0
    10ae:	55 1f       	adc	r21, r21
    10b0:	62 9f       	mul	r22, r18
    10b2:	f0 01       	movw	r30, r0
    10b4:	72 9f       	mul	r23, r18
    10b6:	bb 27       	eor	r27, r27
    10b8:	f0 0d       	add	r31, r0
    10ba:	b1 1d       	adc	r27, r1
    10bc:	63 9f       	mul	r22, r19
    10be:	aa 27       	eor	r26, r26
    10c0:	f0 0d       	add	r31, r0
    10c2:	b1 1d       	adc	r27, r1
    10c4:	aa 1f       	adc	r26, r26
    10c6:	64 9f       	mul	r22, r20
    10c8:	66 27       	eor	r22, r22
    10ca:	b0 0d       	add	r27, r0
    10cc:	a1 1d       	adc	r26, r1
    10ce:	66 1f       	adc	r22, r22
    10d0:	82 9f       	mul	r24, r18
    10d2:	22 27       	eor	r18, r18
    10d4:	b0 0d       	add	r27, r0
    10d6:	a1 1d       	adc	r26, r1
    10d8:	62 1f       	adc	r22, r18
    10da:	73 9f       	mul	r23, r19
    10dc:	b0 0d       	add	r27, r0
    10de:	a1 1d       	adc	r26, r1
    10e0:	62 1f       	adc	r22, r18
    10e2:	83 9f       	mul	r24, r19
    10e4:	a0 0d       	add	r26, r0
    10e6:	61 1d       	adc	r22, r1
    10e8:	22 1f       	adc	r18, r18
    10ea:	74 9f       	mul	r23, r20
    10ec:	33 27       	eor	r19, r19
    10ee:	a0 0d       	add	r26, r0
    10f0:	61 1d       	adc	r22, r1
    10f2:	23 1f       	adc	r18, r19
    10f4:	84 9f       	mul	r24, r20
    10f6:	60 0d       	add	r22, r0
    10f8:	21 1d       	adc	r18, r1
    10fa:	82 2f       	mov	r24, r18
    10fc:	76 2f       	mov	r23, r22
    10fe:	6a 2f       	mov	r22, r26
    1100:	11 24       	eor	r1, r1
    1102:	9f 57       	subi	r25, 0x7F	; 127
    1104:	50 40       	sbci	r21, 0x00	; 0
    1106:	9a f0       	brmi	.+38     	; 0x112e <.L13^B1>
    1108:	f1 f0       	breq	.+60     	; 0x1146 <.L15^B1>

0000110a <.L10^B1>:
    110a:	88 23       	and	r24, r24
    110c:	4a f0       	brmi	.+18     	; 0x1120 <.L11^B1>
    110e:	ee 0f       	add	r30, r30
    1110:	ff 1f       	adc	r31, r31
    1112:	bb 1f       	adc	r27, r27
    1114:	66 1f       	adc	r22, r22
    1116:	77 1f       	adc	r23, r23
    1118:	88 1f       	adc	r24, r24
    111a:	91 50       	subi	r25, 0x01	; 1
    111c:	50 40       	sbci	r21, 0x00	; 0
    111e:	a9 f7       	brne	.-22     	; 0x110a <.L10^B1>

00001120 <.L11^B1>:
    1120:	9e 3f       	cpi	r25, 0xFE	; 254
    1122:	51 05       	cpc	r21, r1
    1124:	80 f0       	brcs	.+32     	; 0x1146 <.L15^B1>
    1126:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__fp_inf>

0000112a <.L12^B1>:
    112a:	0c 94 37 08 	jmp	0x106e	; 0x106e <__fp_szero>

0000112e <.L13^B1>:
    112e:	5f 3f       	cpi	r21, 0xFF	; 255
    1130:	e4 f3       	brlt	.-8      	; 0x112a <.L12^B1>
    1132:	98 3e       	cpi	r25, 0xE8	; 232
    1134:	d4 f3       	brlt	.-12     	; 0x112a <.L12^B1>

00001136 <.L14^B1>:
    1136:	86 95       	lsr	r24
    1138:	77 95       	ror	r23
    113a:	67 95       	ror	r22
    113c:	b7 95       	ror	r27
    113e:	f7 95       	ror	r31
    1140:	e7 95       	ror	r30
    1142:	9f 5f       	subi	r25, 0xFF	; 255
    1144:	c1 f7       	brne	.-16     	; 0x1136 <.L14^B1>

00001146 <.L15^B1>:
    1146:	fe 2b       	or	r31, r30
    1148:	88 0f       	add	r24, r24
    114a:	91 1d       	adc	r25, r1
    114c:	96 95       	lsr	r25
    114e:	87 95       	ror	r24
    1150:	97 f9       	bld	r25, 7
    1152:	08 95       	ret

00001154 <atoi>:
    1154:	fc 01       	movw	r30, r24
    1156:	88 27       	eor	r24, r24
    1158:	99 27       	eor	r25, r25
    115a:	e8 94       	clt

0000115c <.L_atoi_loop>:
    115c:	21 91       	ld	r18, Z+
    115e:	20 32       	cpi	r18, 0x20	; 32
    1160:	e9 f3       	breq	.-6      	; 0x115c <.L_atoi_loop>
    1162:	29 30       	cpi	r18, 0x09	; 9
    1164:	10 f0       	brcs	.+4      	; 0x116a <.L1^B1>
    1166:	2e 30       	cpi	r18, 0x0E	; 14
    1168:	c8 f3       	brcs	.-14     	; 0x115c <.L_atoi_loop>

0000116a <.L1^B1>:
    116a:	2b 32       	cpi	r18, 0x2B	; 43
    116c:	41 f0       	breq	.+16     	; 0x117e <.L_atoi_loop2>
    116e:	2d 32       	cpi	r18, 0x2D	; 45
    1170:	39 f4       	brne	.+14     	; 0x1180 <.L_atoi_digit>
    1172:	68 94       	set
    1174:	04 c0       	rjmp	.+8      	; 0x117e <.L_atoi_loop2>

00001176 <.L2^B1>:
    1176:	0e 94 c8 08 	call	0x1190	; 0x1190 <__mulhi_const_10>
    117a:	82 0f       	add	r24, r18
    117c:	91 1d       	adc	r25, r1

0000117e <.L_atoi_loop2>:
    117e:	21 91       	ld	r18, Z+

00001180 <.L_atoi_digit>:
    1180:	20 53       	subi	r18, 0x30	; 48
    1182:	2a 30       	cpi	r18, 0x0A	; 10
    1184:	c0 f3       	brcs	.-16     	; 0x1176 <.L2^B1>
    1186:	1e f4       	brtc	.+6      	; 0x118e <.L_atoi_done>
    1188:	90 95       	com	r25
    118a:	81 95       	neg	r24
    118c:	9f 4f       	sbci	r25, 0xFF	; 255

0000118e <.L_atoi_done>:
    118e:	08 95       	ret

00001190 <__mulhi_const_10>:
    1190:	7a e0       	ldi	r23, 0x0A	; 10
    1192:	97 9f       	mul	r25, r23
    1194:	90 2d       	mov	r25, r0
    1196:	87 9f       	mul	r24, r23
    1198:	80 2d       	mov	r24, r0
    119a:	91 0d       	add	r25, r1
    119c:	11 24       	eor	r1, r1
    119e:	08 95       	ret

000011a0 <sprintf>:
    11a0:	ae e0       	ldi	r26, 0x0E	; 14
    11a2:	b0 e0       	ldi	r27, 0x00	; 0
    11a4:	e6 ed       	ldi	r30, 0xD6	; 214
    11a6:	f8 e0       	ldi	r31, 0x08	; 8
    11a8:	0c 94 a1 0b 	jmp	0x1742	; 0x1742 <.Loc.16>

000011ac <.L1^B1>:
    11ac:	86 e0       	ldi	r24, 0x06	; 6
    11ae:	8c 83       	std	Y+4, r24	; 0x04
    11b0:	2b 89       	ldd	r18, Y+19	; 0x13
    11b2:	3c 89       	ldd	r19, Y+20	; 0x14
    11b4:	29 83       	std	Y+1, r18	; 0x01
    11b6:	3a 83       	std	Y+2, r19	; 0x02
    11b8:	8f ef       	ldi	r24, 0xFF	; 255
    11ba:	9f e7       	ldi	r25, 0x7F	; 127
    11bc:	8d 83       	std	Y+5, r24	; 0x05
    11be:	9e 83       	std	Y+6, r25	; 0x06
    11c0:	ae 01       	movw	r20, r28
    11c2:	49 5e       	subi	r20, 0xE9	; 233
    11c4:	5f 4f       	sbci	r21, 0xFF	; 255
    11c6:	6d 89       	ldd	r22, Y+21	; 0x15
    11c8:	7e 89       	ldd	r23, Y+22	; 0x16
    11ca:	ce 01       	movw	r24, r28
    11cc:	01 96       	adiw	r24, 0x01	; 1
    11ce:	0e 94 f4 08 	call	0x11e8	; 0x11e8 <vfprintf>
    11d2:	ef 81       	ldd	r30, Y+7	; 0x07
    11d4:	f8 85       	ldd	r31, Y+8	; 0x08
    11d6:	2b 89       	ldd	r18, Y+19	; 0x13
    11d8:	3c 89       	ldd	r19, Y+20	; 0x14
    11da:	e2 0f       	add	r30, r18
    11dc:	f3 1f       	adc	r31, r19
    11de:	10 82       	st	Z, r1
    11e0:	2e 96       	adiw	r28, 0x0e	; 14
    11e2:	e2 e0       	ldi	r30, 0x02	; 2
    11e4:	0c 94 bd 0b 	jmp	0x177a	; 0x177a <.Loc.16>

000011e8 <vfprintf>:
    11e8:	ab e0       	ldi	r26, 0x0B	; 11
    11ea:	b0 e0       	ldi	r27, 0x00	; 0
    11ec:	ea ef       	ldi	r30, 0xFA	; 250
    11ee:	f8 e0       	ldi	r31, 0x08	; 8
    11f0:	0c 94 94 0b 	jmp	0x1728	; 0x1728 <.Loc.3>

000011f4 <.L1^B1>:
    11f4:	6c 01       	movw	r12, r24
    11f6:	7b 01       	movw	r14, r22
    11f8:	8a 01       	movw	r16, r20
    11fa:	fc 01       	movw	r30, r24
    11fc:	16 82       	std	Z+6, r1	; 0x06
    11fe:	17 82       	std	Z+7, r1	; 0x07
    1200:	83 81       	ldd	r24, Z+3	; 0x03
    1202:	81 ff       	sbrs	r24, 1
    1204:	df c1       	rjmp	.+958    	; 0x15c4 <.L80>
    1206:	3a e0       	ldi	r19, 0x0A	; 10
    1208:	53 2e       	mov	r5, r19

0000120a <.L3>:
    120a:	f6 01       	movw	r30, r12
    120c:	23 81       	ldd	r18, Z+3	; 0x03
    120e:	f7 01       	movw	r30, r14
    1210:	23 fd       	sbrc	r18, 3
    1212:	85 91       	lpm	r24, Z+
    1214:	23 ff       	sbrs	r18, 3
    1216:	81 91       	ld	r24, Z+
    1218:	7f 01       	movw	r14, r30
    121a:	81 15       	cp	r24, r1
    121c:	09 f4       	brne	.+2      	; 0x1220 <L0^A+0x2>

0000121e <L0^A>:
    121e:	37 c1       	rjmp	.+622    	; 0x148e <.L4>
    1220:	85 32       	cpi	r24, 0x25	; 37
    1222:	39 f4       	brne	.+14     	; 0x1232 <.L5>
    1224:	23 fd       	sbrc	r18, 3
    1226:	95 91       	lpm	r25, Z+
    1228:	23 ff       	sbrs	r18, 3
    122a:	91 91       	ld	r25, Z+
    122c:	7f 01       	movw	r14, r30
    122e:	95 32       	cpi	r25, 0x25	; 37
    1230:	29 f4       	brne	.+10     	; 0x123c <.L81>

00001232 <.L5>:
    1232:	b6 01       	movw	r22, r12
    1234:	90 e0       	ldi	r25, 0x00	; 0
    1236:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    123a:	e7 cf       	rjmp	.-50     	; 0x120a <.L3>

0000123c <.L81>:
    123c:	30 e0       	ldi	r19, 0x00	; 0
    123e:	91 2c       	mov	r9, r1
    1240:	61 2c       	mov	r6, r1
    1242:	71 2c       	mov	r7, r1

00001244 <.L6>:
    1244:	f0 e2       	ldi	r31, 0x20	; 32
    1246:	7f 16       	cp	r7, r31
    1248:	40 f5       	brcc	.+80     	; 0x129a <.L8>
    124a:	9b 32       	cpi	r25, 0x2B	; 43
    124c:	d9 f0       	breq	.+54     	; 0x1284 <.L9>
    124e:	58 f4       	brcc	.+22     	; 0x1266 <.L10>
    1250:	90 32       	cpi	r25, 0x20	; 32
    1252:	d1 f0       	breq	.+52     	; 0x1288 <.L11>
    1254:	93 32       	cpi	r25, 0x23	; 35
    1256:	f1 f0       	breq	.+60     	; 0x1294 <.L12>

00001258 <.L13>:
    1258:	9e 32       	cpi	r25, 0x2E	; 46
    125a:	91 f5       	brne	.+100    	; 0x12c0 <.L19>
    125c:	76 fc       	sbrc	r7, 6
    125e:	17 c1       	rjmp	.+558    	; 0x148e <.L4>
    1260:	68 94       	set
    1262:	76 f8       	bld	r7, 6
    1264:	06 c0       	rjmp	.+12     	; 0x1272 <.L16>

00001266 <.L10>:
    1266:	9d 32       	cpi	r25, 0x2D	; 45
    1268:	91 f0       	breq	.+36     	; 0x128e <.L14>
    126a:	90 33       	cpi	r25, 0x30	; 48
    126c:	c1 f4       	brne	.+48     	; 0x129e <.L15>
    126e:	68 94       	set
    1270:	70 f8       	bld	r7, 0

00001272 <.L16>:
    1272:	f7 01       	movw	r30, r14
    1274:	23 fd       	sbrc	r18, 3
    1276:	95 91       	lpm	r25, Z+
    1278:	23 ff       	sbrs	r18, 3
    127a:	91 91       	ld	r25, Z+
    127c:	7f 01       	movw	r14, r30
    127e:	91 11       	cpse	r25, r1
    1280:	e1 cf       	rjmp	.-62     	; 0x1244 <.L6>
    1282:	28 c0       	rjmp	.+80     	; 0x12d4 <.L17>

00001284 <.L9>:
    1284:	68 94       	set
    1286:	71 f8       	bld	r7, 1

00001288 <.L11>:
    1288:	68 94       	set
    128a:	72 f8       	bld	r7, 2
    128c:	f2 cf       	rjmp	.-28     	; 0x1272 <.L16>

0000128e <.L14>:
    128e:	68 94       	set
    1290:	73 f8       	bld	r7, 3
    1292:	ef cf       	rjmp	.-34     	; 0x1272 <.L16>

00001294 <.L12>:
    1294:	68 94       	set
    1296:	74 f8       	bld	r7, 4
    1298:	ec cf       	rjmp	.-40     	; 0x1272 <.L16>

0000129a <.L8>:
    129a:	77 fc       	sbrc	r7, 7
    129c:	1b c0       	rjmp	.+54     	; 0x12d4 <.L17>

0000129e <.L15>:
    129e:	80 ed       	ldi	r24, 0xD0	; 208
    12a0:	89 0f       	add	r24, r25
    12a2:	8a 30       	cpi	r24, 0x0A	; 10
    12a4:	c8 f6       	brcc	.-78     	; 0x1258 <.L13>
    12a6:	76 fe       	sbrs	r7, 6
    12a8:	05 c0       	rjmp	.+10     	; 0x12b4 <.L18>
    12aa:	95 9c       	mul	r9, r5
    12ac:	80 0d       	add	r24, r0
    12ae:	11 24       	eor	r1, r1
    12b0:	98 2e       	mov	r9, r24
    12b2:	df cf       	rjmp	.-66     	; 0x1272 <.L16>

000012b4 <.L18>:
    12b4:	65 9c       	mul	r6, r5
    12b6:	80 0d       	add	r24, r0
    12b8:	11 24       	eor	r1, r1
    12ba:	68 2e       	mov	r6, r24
    12bc:	7f 2a       	or	r7, r31
    12be:	d9 cf       	rjmp	.-78     	; 0x1272 <.L16>

000012c0 <.L19>:
    12c0:	9c 36       	cpi	r25, 0x6C	; 108
    12c2:	19 f4       	brne	.+6      	; 0x12ca <.L20>
    12c4:	68 94       	set
    12c6:	77 f8       	bld	r7, 7
    12c8:	d4 cf       	rjmp	.-88     	; 0x1272 <.L16>

000012ca <.L20>:
    12ca:	9c 34       	cpi	r25, 0x4C	; 76
    12cc:	09 f4       	brne	.+2      	; 0x12d0 <L0^A+0x2>

000012ce <L0^A>:
    12ce:	45 c0       	rjmp	.+138    	; 0x135a <.L82>
    12d0:	98 36       	cpi	r25, 0x68	; 104
    12d2:	79 f2       	breq	.-98     	; 0x1272 <.L16>

000012d4 <.L17>:
    12d4:	89 2f       	mov	r24, r25
    12d6:	8f 7d       	andi	r24, 0xDF	; 223
    12d8:	85 54       	subi	r24, 0x45	; 69
    12da:	83 30       	cpi	r24, 0x03	; 3
    12dc:	08 f4       	brcc	.+2      	; 0x12e0 <L0^A+0x2>

000012de <L0^A>:
    12de:	3f c0       	rjmp	.+126    	; 0x135e <.L21>
    12e0:	93 36       	cpi	r25, 0x63	; 99
    12e2:	09 f4       	brne	.+2      	; 0x12e6 <L0^A+0x2>

000012e4 <L0^A>:
    12e4:	61 c0       	rjmp	.+194    	; 0x13a8 <.L22>
    12e6:	93 37       	cpi	r25, 0x73	; 115
    12e8:	09 f4       	brne	.+2      	; 0x12ec <L0^A+0x2>

000012ea <L0^A>:
    12ea:	6b c0       	rjmp	.+214    	; 0x13c2 <.L23>
    12ec:	93 35       	cpi	r25, 0x53	; 83
    12ee:	09 f4       	brne	.+2      	; 0x12f2 <L0^A+0x2>

000012f0 <L0^A>:
    12f0:	77 c0       	rjmp	.+238    	; 0x13e0 <.L24>
    12f2:	94 36       	cpi	r25, 0x64	; 100
    12f4:	19 f0       	breq	.+6      	; 0x12fc <.L39>
    12f6:	99 36       	cpi	r25, 0x69	; 105
    12f8:	09 f0       	breq	.+2      	; 0x12fc <.L39>

000012fa <L0^A>:
    12fa:	a4 c0       	rjmp	.+328    	; 0x1444 <.L40>

000012fc <.L39>:
    12fc:	f8 01       	movw	r30, r16
    12fe:	77 fe       	sbrs	r7, 7
    1300:	9a c0       	rjmp	.+308    	; 0x1436 <.L41>
    1302:	61 91       	ld	r22, Z+
    1304:	71 91       	ld	r23, Z+
    1306:	81 91       	ld	r24, Z+
    1308:	91 91       	ld	r25, Z+

0000130a <.L126>:
    130a:	8f 01       	movw	r16, r30
    130c:	27 2d       	mov	r18, r7
    130e:	2f 76       	andi	r18, 0x6F	; 111
    1310:	82 2e       	mov	r8, r18
    1312:	97 ff       	sbrs	r25, 7
    1314:	04 c0       	rjmp	.+8      	; 0x131e <.L43>
    1316:	0e 94 89 0b 	call	0x1712	; 0x1712 <__negsi2>
    131a:	68 94       	set
    131c:	87 f8       	bld	r8, 7

0000131e <.L43>:
    131e:	2a e0       	ldi	r18, 0x0A	; 10
    1320:	30 e0       	ldi	r19, 0x00	; 0
    1322:	5e 01       	movw	r10, r28
    1324:	4f ef       	ldi	r20, 0xFF	; 255
    1326:	a4 1a       	sub	r10, r20
    1328:	b4 0a       	sbc	r11, r20
    132a:	a5 01       	movw	r20, r10
    132c:	0e 94 2b 0b 	call	0x1656	; 0x1656 <__ultoa_invert>
    1330:	78 2e       	mov	r7, r24
    1332:	7a 18       	sub	r7, r10

00001334 <.L44>:
    1334:	86 fe       	sbrs	r8, 6
    1336:	cf c0       	rjmp	.+414    	; 0x14d6 <.L54>
    1338:	88 2d       	mov	r24, r8
    133a:	8e 7f       	andi	r24, 0xFE	; 254
    133c:	79 14       	cp	r7, r9
    133e:	08 f0       	brcs	.+2      	; 0x1342 <L0^A+0x2>

00001340 <L0^A>:
    1340:	c9 c0       	rjmp	.+402    	; 0x14d4 <.L88>
    1342:	84 fe       	sbrs	r8, 4
    1344:	1d c1       	rjmp	.+570    	; 0x1580 <.L89>
    1346:	82 fc       	sbrc	r8, 2
    1348:	11 c1       	rjmp	.+546    	; 0x156c <.L90>
    134a:	2e ee       	ldi	r18, 0xEE	; 238
    134c:	82 22       	and	r8, r18
    134e:	b9 2c       	mov	r11, r9

00001350 <.L55>:
    1350:	88 2d       	mov	r24, r8
    1352:	86 78       	andi	r24, 0x86	; 134
    1354:	09 f4       	brne	.+2      	; 0x1358 <L0^A+0x2>

00001356 <L0^A>:
    1356:	cb c0       	rjmp	.+406    	; 0x14ee <.L58>
    1358:	0e c1       	rjmp	.+540    	; 0x1576 <.L128>

0000135a <.L82>:
    135a:	31 e0       	ldi	r19, 0x01	; 1
    135c:	8a cf       	rjmp	.-236    	; 0x1272 <.L16>

0000135e <.L21>:
    135e:	31 15       	cp	r19, r1
    1360:	01 f1       	breq	.+64     	; 0x13a2 <.L26>
    1362:	08 5f       	subi	r16, 0xF8	; 248
    1364:	1f 4f       	sbci	r17, 0xFF	; 255

00001366 <.L27>:
    1366:	8f e3       	ldi	r24, 0x3F	; 63
    1368:	89 83       	std	Y+1, r24	; 0x01
    136a:	21 e0       	ldi	r18, 0x01	; 1
    136c:	82 2e       	mov	r8, r18
    136e:	91 2c       	mov	r9, r1
    1370:	5e 01       	movw	r10, r28
    1372:	2f ef       	ldi	r18, 0xFF	; 255
    1374:	a2 1a       	sub	r10, r18
    1376:	b2 0a       	sbc	r11, r18

00001378 <.L28>:
    1378:	e8 94       	clt
    137a:	77 f8       	bld	r7, 7

0000137c <.L30>:
    137c:	73 fc       	sbrc	r7, 3
    137e:	03 c0       	rjmp	.+6      	; 0x1386 <.L36>

00001380 <.L32>:
    1380:	86 14       	cp	r8, r6
    1382:	91 04       	cpc	r9, r1
    1384:	f0 f1       	brcs	.+124    	; 0x1402 <.L34>

00001386 <.L36>:
    1386:	81 14       	cp	r8, r1
    1388:	91 04       	cpc	r9, r1
    138a:	09 f0       	breq	.+2      	; 0x138e <.L77>

0000138c <L0^A>:
    138c:	41 c0       	rjmp	.+130    	; 0x1410 <.L37>

0000138e <.L77>:
    138e:	61 14       	cp	r6, r1
    1390:	09 f4       	brne	.+2      	; 0x1394 <L0^A+0x2>

00001392 <L0^A>:
    1392:	3b cf       	rjmp	.-394    	; 0x120a <.L3>
    1394:	b6 01       	movw	r22, r12
    1396:	80 e2       	ldi	r24, 0x20	; 32
    1398:	90 e0       	ldi	r25, 0x00	; 0
    139a:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    139e:	6a 94       	dec	r6
    13a0:	f6 cf       	rjmp	.-20     	; 0x138e <.L77>

000013a2 <.L26>:
    13a2:	0c 5f       	subi	r16, 0xFC	; 252
    13a4:	1f 4f       	sbci	r17, 0xFF	; 255
    13a6:	df cf       	rjmp	.-66     	; 0x1366 <.L27>

000013a8 <.L22>:
    13a8:	f8 01       	movw	r30, r16
    13aa:	80 81       	ld	r24, Z
    13ac:	89 83       	std	Y+1, r24	; 0x01
    13ae:	0e 5f       	subi	r16, 0xFE	; 254
    13b0:	1f 4f       	sbci	r17, 0xFF	; 255
    13b2:	91 e0       	ldi	r25, 0x01	; 1
    13b4:	89 2e       	mov	r8, r25
    13b6:	91 2c       	mov	r9, r1
    13b8:	5e 01       	movw	r10, r28
    13ba:	ff ef       	ldi	r31, 0xFF	; 255
    13bc:	af 1a       	sub	r10, r31
    13be:	bf 0a       	sbc	r11, r31
    13c0:	db cf       	rjmp	.-74     	; 0x1378 <.L28>

000013c2 <.L23>:
    13c2:	f8 01       	movw	r30, r16
    13c4:	a1 90       	ld	r10, Z+
    13c6:	b1 90       	ld	r11, Z+
    13c8:	8f 01       	movw	r16, r30
    13ca:	69 2d       	mov	r22, r9
    13cc:	70 e0       	ldi	r23, 0x00	; 0
    13ce:	76 fc       	sbrc	r7, 6
    13d0:	02 c0       	rjmp	.+4      	; 0x13d6 <.L29>
    13d2:	6f ef       	ldi	r22, 0xFF	; 255
    13d4:	7f ef       	ldi	r23, 0xFF	; 255

000013d6 <.L29>:
    13d6:	c5 01       	movw	r24, r10
    13d8:	0e 94 f0 0a 	call	0x15e0	; 0x15e0 <strnlen>
    13dc:	4c 01       	movw	r8, r24
    13de:	cc cf       	rjmp	.-104    	; 0x1378 <.L28>

000013e0 <.L24>:
    13e0:	f8 01       	movw	r30, r16
    13e2:	a1 90       	ld	r10, Z+
    13e4:	b1 90       	ld	r11, Z+
    13e6:	8f 01       	movw	r16, r30
    13e8:	69 2d       	mov	r22, r9
    13ea:	70 e0       	ldi	r23, 0x00	; 0
    13ec:	76 fc       	sbrc	r7, 6
    13ee:	02 c0       	rjmp	.+4      	; 0x13f4 <.L31>
    13f0:	6f ef       	ldi	r22, 0xFF	; 255
    13f2:	7f ef       	ldi	r23, 0xFF	; 255

000013f4 <.L31>:
    13f4:	c5 01       	movw	r24, r10
    13f6:	0e 94 e5 0a 	call	0x15ca	; 0x15ca <strnlen_P>
    13fa:	4c 01       	movw	r8, r24
    13fc:	68 94       	set
    13fe:	77 f8       	bld	r7, 7
    1400:	bd cf       	rjmp	.-134    	; 0x137c <.L30>

00001402 <.L34>:
    1402:	b6 01       	movw	r22, r12
    1404:	80 e2       	ldi	r24, 0x20	; 32
    1406:	90 e0       	ldi	r25, 0x00	; 0
    1408:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    140c:	6a 94       	dec	r6
    140e:	b8 cf       	rjmp	.-144    	; 0x1380 <.L32>

00001410 <.L37>:
    1410:	f5 01       	movw	r30, r10
    1412:	77 fc       	sbrc	r7, 7
    1414:	85 91       	lpm	r24, Z+
    1416:	77 fe       	sbrs	r7, 7
    1418:	81 91       	ld	r24, Z+
    141a:	5f 01       	movw	r10, r30
    141c:	b6 01       	movw	r22, r12
    141e:	90 e0       	ldi	r25, 0x00	; 0
    1420:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    1424:	81 e0       	ldi	r24, 0x01	; 1
    1426:	61 10       	cpse	r6, r1
    1428:	01 c0       	rjmp	.+2      	; 0x142c <.L35>
    142a:	80 e0       	ldi	r24, 0x00	; 0

0000142c <.L35>:
    142c:	68 1a       	sub	r6, r24
    142e:	f1 e0       	ldi	r31, 0x01	; 1
    1430:	8f 1a       	sub	r8, r31
    1432:	91 08       	sbc	r9, r1
    1434:	a8 cf       	rjmp	.-176    	; 0x1386 <.L36>

00001436 <.L41>:
    1436:	61 91       	ld	r22, Z+
    1438:	71 91       	ld	r23, Z+
    143a:	87 2f       	mov	r24, r23
    143c:	88 0f       	add	r24, r24
    143e:	88 0b       	sbc	r24, r24
    1440:	98 2f       	mov	r25, r24
    1442:	63 cf       	rjmp	.-314    	; 0x130a <.L126>

00001444 <.L40>:
    1444:	95 37       	cpi	r25, 0x75	; 117
    1446:	c9 f4       	brne	.+50     	; 0x147a <.L45>
    1448:	87 2c       	mov	r8, r7
    144a:	e8 94       	clt
    144c:	84 f8       	bld	r8, 4
    144e:	2a e0       	ldi	r18, 0x0A	; 10
    1450:	30 e0       	ldi	r19, 0x00	; 0

00001452 <.L46>:
    1452:	f8 01       	movw	r30, r16
    1454:	87 fe       	sbrs	r8, 7
    1456:	39 c0       	rjmp	.+114    	; 0x14ca <.L52>
    1458:	61 91       	ld	r22, Z+
    145a:	71 91       	ld	r23, Z+
    145c:	81 91       	ld	r24, Z+
    145e:	91 91       	ld	r25, Z+

00001460 <.L127>:
    1460:	8f 01       	movw	r16, r30
    1462:	5e 01       	movw	r10, r28
    1464:	ff ef       	ldi	r31, 0xFF	; 255
    1466:	af 1a       	sub	r10, r31
    1468:	bf 0a       	sbc	r11, r31
    146a:	a5 01       	movw	r20, r10
    146c:	0e 94 2b 0b 	call	0x1656	; 0x1656 <__ultoa_invert>
    1470:	78 2e       	mov	r7, r24
    1472:	7a 18       	sub	r7, r10
    1474:	e8 94       	clt
    1476:	87 f8       	bld	r8, 7
    1478:	5d cf       	rjmp	.-326    	; 0x1334 <.L44>

0000147a <.L45>:
    147a:	87 2d       	mov	r24, r7
    147c:	89 7f       	andi	r24, 0xF9	; 249
    147e:	88 2e       	mov	r8, r24
    1480:	90 37       	cpi	r25, 0x70	; 112
    1482:	99 f0       	breq	.+38     	; 0x14aa <.L47>
    1484:	58 f4       	brcc	.+22     	; 0x149c <.L48>
    1486:	98 35       	cpi	r25, 0x58	; 88
    1488:	a9 f0       	breq	.+42     	; 0x14b4 <.L49>
    148a:	9f 36       	cpi	r25, 0x6F	; 111
    148c:	d9 f0       	breq	.+54     	; 0x14c4 <.L85>

0000148e <.L4>:
    148e:	f6 01       	movw	r30, r12
    1490:	86 81       	ldd	r24, Z+6	; 0x06
    1492:	97 81       	ldd	r25, Z+7	; 0x07

00001494 <.L1>:
    1494:	2b 96       	adiw	r28, 0x0b	; 11
    1496:	ef e0       	ldi	r30, 0x0F	; 15
    1498:	0c 94 b0 0b 	jmp	0x1760	; 0x1760 <.Loc.3>

0000149c <.L48>:
    149c:	98 37       	cpi	r25, 0x78	; 120
    149e:	b9 f7       	brne	.-18     	; 0x148e <.L4>
    14a0:	74 fc       	sbrc	r7, 4
    14a2:	05 c0       	rjmp	.+10     	; 0x14ae <.L51>

000014a4 <.L86>:
    14a4:	20 e1       	ldi	r18, 0x10	; 16
    14a6:	30 e0       	ldi	r19, 0x00	; 0
    14a8:	d4 cf       	rjmp	.-88     	; 0x1452 <.L46>

000014aa <.L47>:
    14aa:	68 94       	set
    14ac:	84 f8       	bld	r8, 4

000014ae <.L51>:
    14ae:	68 94       	set
    14b0:	82 f8       	bld	r8, 2
    14b2:	f8 cf       	rjmp	.-16     	; 0x14a4 <.L86>

000014b4 <.L49>:
    14b4:	74 fe       	sbrs	r7, 4
    14b6:	03 c0       	rjmp	.+6      	; 0x14be <.L87>
    14b8:	e7 2d       	mov	r30, r7
    14ba:	e6 60       	ori	r30, 0x06	; 6
    14bc:	8e 2e       	mov	r8, r30

000014be <.L87>:
    14be:	20 e1       	ldi	r18, 0x10	; 16
    14c0:	32 e0       	ldi	r19, 0x02	; 2
    14c2:	c7 cf       	rjmp	.-114    	; 0x1452 <.L46>

000014c4 <.L85>:
    14c4:	28 e0       	ldi	r18, 0x08	; 8
    14c6:	30 e0       	ldi	r19, 0x00	; 0
    14c8:	c4 cf       	rjmp	.-120    	; 0x1452 <.L46>

000014ca <.L52>:
    14ca:	61 91       	ld	r22, Z+
    14cc:	71 91       	ld	r23, Z+
    14ce:	80 e0       	ldi	r24, 0x00	; 0
    14d0:	90 e0       	ldi	r25, 0x00	; 0
    14d2:	c6 cf       	rjmp	.-116    	; 0x1460 <.L127>

000014d4 <.L88>:
    14d4:	88 2e       	mov	r8, r24

000014d6 <.L54>:
    14d6:	b7 2c       	mov	r11, r7
    14d8:	84 fe       	sbrs	r8, 4
    14da:	3a cf       	rjmp	.-396    	; 0x1350 <.L55>

000014dc <.L56>:
    14dc:	fe 01       	movw	r30, r28
    14de:	e7 0d       	add	r30, r7
    14e0:	f1 1d       	adc	r31, r1
    14e2:	80 81       	ld	r24, Z
    14e4:	80 33       	cpi	r24, 0x30	; 48
    14e6:	09 f0       	breq	.+2      	; 0x14ea <L0^A+0x2>

000014e8 <L0^A>:
    14e8:	44 c0       	rjmp	.+136    	; 0x1572 <.L57>
    14ea:	49 ee       	ldi	r20, 0xE9	; 233
    14ec:	84 22       	and	r8, r20

000014ee <.L58>:
    14ee:	83 fc       	sbrc	r8, 3
    14f0:	0e c0       	rjmp	.+28     	; 0x150e <.L60>
    14f2:	80 fe       	sbrs	r8, 0
    14f4:	51 c0       	rjmp	.+162    	; 0x1598 <.L92>
    14f6:	97 2c       	mov	r9, r7
    14f8:	b6 14       	cp	r11, r6
    14fa:	18 f4       	brcc	.+6      	; 0x1502 <.L79>
    14fc:	96 0c       	add	r9, r6
    14fe:	9b 18       	sub	r9, r11
    1500:	b6 2c       	mov	r11, r6

00001502 <.L79>:
    1502:	86 2d       	mov	r24, r6
    1504:	8b 19       	sub	r24, r11
    1506:	6b 14       	cp	r6, r11
    1508:	08 f4       	brcc	.+2      	; 0x150c <.L65>
    150a:	80 e0       	ldi	r24, 0x00	; 0

0000150c <.L65>:
    150c:	b8 0e       	add	r11, r24

0000150e <.L60>:
    150e:	b6 14       	cp	r11, r6
    1510:	08 f0       	brcs	.+2      	; 0x1514 <L0^A+0x2>

00001512 <L0^A>:
    1512:	44 c0       	rjmp	.+136    	; 0x159c <.L94>
    1514:	6b 18       	sub	r6, r11

00001516 <.L67>:
    1516:	84 fe       	sbrs	r8, 4
    1518:	43 c0       	rjmp	.+134    	; 0x15a0 <.L68>
    151a:	b6 01       	movw	r22, r12
    151c:	80 e3       	ldi	r24, 0x30	; 48
    151e:	90 e0       	ldi	r25, 0x00	; 0
    1520:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    1524:	82 fe       	sbrs	r8, 2
    1526:	09 c0       	rjmp	.+18     	; 0x153a <.L74>
    1528:	88 e5       	ldi	r24, 0x58	; 88
    152a:	90 e0       	ldi	r25, 0x00	; 0
    152c:	81 fc       	sbrc	r8, 1
    152e:	02 c0       	rjmp	.+4      	; 0x1534 <.L70>
    1530:	88 e7       	ldi	r24, 0x78	; 120
    1532:	90 e0       	ldi	r25, 0x00	; 0

00001534 <.L70>:
    1534:	b6 01       	movw	r22, r12

00001536 <.L129>:
    1536:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>

0000153a <.L74>:
    153a:	79 14       	cp	r7, r9
    153c:	e0 f1       	brcs	.+120    	; 0x15b6 <.L75>
    153e:	5e 01       	movw	r10, r28
    1540:	8f ef       	ldi	r24, 0xFF	; 255
    1542:	a8 1a       	sub	r10, r24
    1544:	b8 0a       	sbc	r11, r24
    1546:	7a 94       	dec	r7
    1548:	82 e0       	ldi	r24, 0x02	; 2
    154a:	88 2e       	mov	r8, r24
    154c:	91 2c       	mov	r9, r1
    154e:	8c 0e       	add	r8, r28
    1550:	9d 1e       	adc	r9, r29
    1552:	87 0c       	add	r8, r7
    1554:	91 1c       	adc	r9, r1

00001556 <.L76>:
    1556:	f4 01       	movw	r30, r8
    1558:	82 91       	ld	r24, -Z
    155a:	4f 01       	movw	r8, r30
    155c:	b6 01       	movw	r22, r12
    155e:	90 e0       	ldi	r25, 0x00	; 0
    1560:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    1564:	8a 14       	cp	r8, r10
    1566:	9b 04       	cpc	r9, r11
    1568:	b1 f7       	brne	.-20     	; 0x1556 <.L76>
    156a:	11 cf       	rjmp	.-478    	; 0x138e <.L77>

0000156c <.L90>:
    156c:	b9 2c       	mov	r11, r9
    156e:	88 2e       	mov	r8, r24
    1570:	b5 cf       	rjmp	.-150    	; 0x14dc <.L56>

00001572 <.L57>:
    1572:	82 fc       	sbrc	r8, 2
    1574:	02 c0       	rjmp	.+4      	; 0x157a <.L59>

00001576 <.L128>:
    1576:	b3 94       	inc	r11
    1578:	ba cf       	rjmp	.-140    	; 0x14ee <.L58>

0000157a <.L59>:
    157a:	b3 94       	inc	r11
    157c:	b3 94       	inc	r11
    157e:	b7 cf       	rjmp	.-146    	; 0x14ee <.L58>

00001580 <.L89>:
    1580:	b9 2c       	mov	r11, r9
    1582:	88 2e       	mov	r8, r24
    1584:	e5 ce       	rjmp	.-566    	; 0x1350 <.L55>

00001586 <.L63>:
    1586:	b6 01       	movw	r22, r12
    1588:	80 e2       	ldi	r24, 0x20	; 32
    158a:	90 e0       	ldi	r25, 0x00	; 0
    158c:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    1590:	a3 94       	inc	r10

00001592 <.L61>:
    1592:	a6 14       	cp	r10, r6
    1594:	c0 f3       	brcs	.-16     	; 0x1586 <.L63>
    1596:	b5 cf       	rjmp	.-150    	; 0x1502 <.L79>

00001598 <.L92>:
    1598:	ab 2c       	mov	r10, r11
    159a:	fb cf       	rjmp	.-10     	; 0x1592 <.L61>

0000159c <.L94>:
    159c:	61 2c       	mov	r6, r1
    159e:	bb cf       	rjmp	.-138    	; 0x1516 <.L67>

000015a0 <.L68>:
    15a0:	88 2d       	mov	r24, r8
    15a2:	86 78       	andi	r24, 0x86	; 134
    15a4:	51 f2       	breq	.-108    	; 0x153a <.L74>
    15a6:	80 e2       	ldi	r24, 0x20	; 32
    15a8:	81 fc       	sbrc	r8, 1
    15aa:	8b e2       	ldi	r24, 0x2B	; 43
    15ac:	87 fc       	sbrc	r8, 7
    15ae:	8d e2       	ldi	r24, 0x2D	; 45
    15b0:	b6 01       	movw	r22, r12
    15b2:	90 e0       	ldi	r25, 0x00	; 0
    15b4:	c0 cf       	rjmp	.-128    	; 0x1536 <.L129>

000015b6 <.L75>:
    15b6:	b6 01       	movw	r22, r12
    15b8:	80 e3       	ldi	r24, 0x30	; 48
    15ba:	90 e0       	ldi	r25, 0x00	; 0
    15bc:	0e 94 fb 0a 	call	0x15f6	; 0x15f6 <fputc>
    15c0:	9a 94       	dec	r9
    15c2:	bb cf       	rjmp	.-138    	; 0x153a <.L74>

000015c4 <.L80>:
    15c4:	8f ef       	ldi	r24, 0xFF	; 255
    15c6:	9f ef       	ldi	r25, 0xFF	; 255
    15c8:	65 cf       	rjmp	.-310    	; 0x1494 <.L1>

000015ca <strnlen_P>:
    15ca:	fc 01       	movw	r30, r24

000015cc <.L_strnlen_P_loop>:
    15cc:	05 90       	lpm	r0, Z+
    15ce:	61 50       	subi	r22, 0x01	; 1
    15d0:	70 40       	sbci	r23, 0x00	; 0
    15d2:	01 10       	cpse	r0, r1
    15d4:	d8 f7       	brcc	.-10     	; 0x15cc <.L_strnlen_P_loop>
    15d6:	80 95       	com	r24
    15d8:	90 95       	com	r25
    15da:	8e 0f       	add	r24, r30
    15dc:	9f 1f       	adc	r25, r31
    15de:	08 95       	ret

000015e0 <strnlen>:
    15e0:	fc 01       	movw	r30, r24

000015e2 <.L_strnlen_loop>:
    15e2:	61 50       	subi	r22, 0x01	; 1
    15e4:	70 40       	sbci	r23, 0x00	; 0
    15e6:	01 90       	ld	r0, Z+
    15e8:	01 10       	cpse	r0, r1
    15ea:	d8 f7       	brcc	.-10     	; 0x15e2 <.L_strnlen_loop>
    15ec:	80 95       	com	r24
    15ee:	90 95       	com	r25
    15f0:	8e 0f       	add	r24, r30
    15f2:	9f 1f       	adc	r25, r31
    15f4:	08 95       	ret

000015f6 <fputc>:
    15f6:	0f 93       	push	r16
    15f8:	1f 93       	push	r17
    15fa:	cf 93       	push	r28
    15fc:	df 93       	push	r29
    15fe:	18 2f       	mov	r17, r24
    1600:	09 2f       	mov	r16, r25
    1602:	eb 01       	movw	r28, r22
    1604:	8b 81       	ldd	r24, Y+3	; 0x03
    1606:	81 fd       	sbrc	r24, 1
    1608:	09 c0       	rjmp	.+18     	; 0x161c <.L2>

0000160a <.L7>:
    160a:	0f ef       	ldi	r16, 0xFF	; 255
    160c:	1f ef       	ldi	r17, 0xFF	; 255

0000160e <.L3>:
    160e:	81 2f       	mov	r24, r17
    1610:	90 2f       	mov	r25, r16
    1612:	df 91       	pop	r29
    1614:	cf 91       	pop	r28
    1616:	1f 91       	pop	r17
    1618:	0f 91       	pop	r16
    161a:	08 95       	ret

0000161c <.L2>:
    161c:	82 ff       	sbrs	r24, 2
    161e:	14 c0       	rjmp	.+40     	; 0x1648 <.L4>
    1620:	2e 81       	ldd	r18, Y+6	; 0x06
    1622:	3f 81       	ldd	r19, Y+7	; 0x07
    1624:	8c 81       	ldd	r24, Y+4	; 0x04
    1626:	9d 81       	ldd	r25, Y+5	; 0x05
    1628:	28 17       	cp	r18, r24
    162a:	39 07       	cpc	r19, r25
    162c:	3c f4       	brge	.+14     	; 0x163c <.L8>
    162e:	e8 81       	ld	r30, Y
    1630:	f9 81       	ldd	r31, Y+1	; 0x01
    1632:	cf 01       	movw	r24, r30
    1634:	01 96       	adiw	r24, 0x01	; 1
    1636:	88 83       	st	Y, r24
    1638:	99 83       	std	Y+1, r25	; 0x01
    163a:	10 83       	st	Z, r17

0000163c <.L8>:
    163c:	8e 81       	ldd	r24, Y+6	; 0x06
    163e:	9f 81       	ldd	r25, Y+7	; 0x07
    1640:	01 96       	adiw	r24, 0x01	; 1
    1642:	8e 83       	std	Y+6, r24	; 0x06
    1644:	9f 83       	std	Y+7, r25	; 0x07
    1646:	e3 cf       	rjmp	.-58     	; 0x160e <.L3>

00001648 <.L4>:
    1648:	e8 85       	ldd	r30, Y+8	; 0x08
    164a:	f9 85       	ldd	r31, Y+9	; 0x09
    164c:	81 2f       	mov	r24, r17
    164e:	09 95       	icall
    1650:	89 2b       	or	r24, r25
    1652:	a1 f3       	breq	.-24     	; 0x163c <.L8>
    1654:	da cf       	rjmp	.-76     	; 0x160a <.L7>

00001656 <__ultoa_invert>:
    1656:	fa 01       	movw	r30, r20
    1658:	aa 27       	eor	r26, r26
    165a:	28 30       	cpi	r18, 0x08	; 8
    165c:	51 f1       	breq	.+84     	; 0x16b2 <.L_oct>
    165e:	20 31       	cpi	r18, 0x10	; 16
    1660:	81 f1       	breq	.+96     	; 0x16c2 <.L_hex>
    1662:	e8 94       	clt

00001664 <.L_dec_loop>:
    1664:	6f 93       	push	r22
    1666:	6e 7f       	andi	r22, 0xFE	; 254
    1668:	6e 5f       	subi	r22, 0xFE	; 254
    166a:	7f 4f       	sbci	r23, 0xFF	; 255
    166c:	8f 4f       	sbci	r24, 0xFF	; 255
    166e:	9f 4f       	sbci	r25, 0xFF	; 255
    1670:	af 4f       	sbci	r26, 0xFF	; 255
    1672:	b1 e0       	ldi	r27, 0x01	; 1
    1674:	3e d0       	rcall	.+124    	; 0x16f2 <.L_div_add>
    1676:	b4 e0       	ldi	r27, 0x04	; 4
    1678:	3c d0       	rcall	.+120    	; 0x16f2 <.L_div_add>
    167a:	67 0f       	add	r22, r23
    167c:	78 1f       	adc	r23, r24
    167e:	89 1f       	adc	r24, r25
    1680:	9a 1f       	adc	r25, r26
    1682:	a1 1d       	adc	r26, r1
    1684:	68 0f       	add	r22, r24
    1686:	79 1f       	adc	r23, r25
    1688:	8a 1f       	adc	r24, r26
    168a:	91 1d       	adc	r25, r1
    168c:	a1 1d       	adc	r26, r1
    168e:	6a 0f       	add	r22, r26
    1690:	71 1d       	adc	r23, r1
    1692:	81 1d       	adc	r24, r1
    1694:	91 1d       	adc	r25, r1
    1696:	a1 1d       	adc	r26, r1
    1698:	20 d0       	rcall	.+64     	; 0x16da <.L_lsr_4>
    169a:	09 f4       	brne	.+2      	; 0x169e <.L1^B1>
    169c:	68 94       	set

0000169e <.L1^B1>:
    169e:	3f 91       	pop	r19
    16a0:	2a e0       	ldi	r18, 0x0A	; 10
    16a2:	26 9f       	mul	r18, r22
    16a4:	11 24       	eor	r1, r1
    16a6:	30 19       	sub	r19, r0
    16a8:	30 5d       	subi	r19, 0xD0	; 208
    16aa:	31 93       	st	Z+, r19
    16ac:	de f6       	brtc	.-74     	; 0x1664 <.L_dec_loop>

000016ae <.L_eos>:
    16ae:	cf 01       	movw	r24, r30
    16b0:	08 95       	ret

000016b2 <.L_oct>:
    16b2:	46 2f       	mov	r20, r22
    16b4:	47 70       	andi	r20, 0x07	; 7
    16b6:	40 5d       	subi	r20, 0xD0	; 208
    16b8:	41 93       	st	Z+, r20
    16ba:	b3 e0       	ldi	r27, 0x03	; 3
    16bc:	0f d0       	rcall	.+30     	; 0x16dc <.L_lsr>
    16be:	c9 f7       	brne	.-14     	; 0x16b2 <.L_oct>
    16c0:	f6 cf       	rjmp	.-20     	; 0x16ae <.L_eos>

000016c2 <.L_hex>:
    16c2:	46 2f       	mov	r20, r22
    16c4:	4f 70       	andi	r20, 0x0F	; 15
    16c6:	40 5d       	subi	r20, 0xD0	; 208
    16c8:	4a 33       	cpi	r20, 0x3A	; 58
    16ca:	18 f0       	brcs	.+6      	; 0x16d2 <.L3^B1>
    16cc:	49 5d       	subi	r20, 0xD9	; 217
    16ce:	31 fd       	sbrc	r19, 1
    16d0:	40 52       	subi	r20, 0x20	; 32

000016d2 <.L3^B1>:
    16d2:	41 93       	st	Z+, r20
    16d4:	02 d0       	rcall	.+4      	; 0x16da <.L_lsr_4>
    16d6:	a9 f7       	brne	.-22     	; 0x16c2 <.L_hex>
    16d8:	ea cf       	rjmp	.-44     	; 0x16ae <.L_eos>

000016da <.L_lsr_4>:
    16da:	b4 e0       	ldi	r27, 0x04	; 4

000016dc <.L_lsr>:
    16dc:	a6 95       	lsr	r26
    16de:	97 95       	ror	r25
    16e0:	87 95       	ror	r24
    16e2:	77 95       	ror	r23
    16e4:	67 95       	ror	r22
    16e6:	ba 95       	dec	r27
    16e8:	c9 f7       	brne	.-14     	; 0x16dc <.L_lsr>
    16ea:	00 97       	sbiw	r24, 0x00	; 0
    16ec:	61 05       	cpc	r22, r1
    16ee:	71 05       	cpc	r23, r1
    16f0:	08 95       	ret

000016f2 <.L_div_add>:
    16f2:	9b 01       	movw	r18, r22
    16f4:	ac 01       	movw	r20, r24
    16f6:	0a 2e       	mov	r0, r26

000016f8 <.L7^B1>:
    16f8:	06 94       	lsr	r0
    16fa:	57 95       	ror	r21
    16fc:	47 95       	ror	r20
    16fe:	37 95       	ror	r19
    1700:	27 95       	ror	r18
    1702:	ba 95       	dec	r27
    1704:	c9 f7       	brne	.-14     	; 0x16f8 <.L7^B1>
    1706:	62 0f       	add	r22, r18
    1708:	73 1f       	adc	r23, r19
    170a:	84 1f       	adc	r24, r20
    170c:	95 1f       	adc	r25, r21
    170e:	a0 1d       	adc	r26, r0
    1710:	08 95       	ret

00001712 <__negsi2>:
    1712:	90 95       	com	r25
    1714:	80 95       	com	r24
    1716:	70 95       	com	r23
    1718:	61 95       	neg	r22
    171a:	7f 4f       	sbci	r23, 0xFF	; 255
    171c:	8f 4f       	sbci	r24, 0xFF	; 255
    171e:	9f 4f       	sbci	r25, 0xFF	; 255

00001720 <.Loc.1>:
    1720:	08 95       	ret

00001722 <__prologue_saves__>:
    1722:	2f 92       	push	r2

00001724 <.Loc.1>:
    1724:	3f 92       	push	r3

00001726 <.Loc.2>:
    1726:	4f 92       	push	r4

00001728 <.Loc.3>:
    1728:	5f 92       	push	r5

0000172a <.Loc.4>:
    172a:	6f 92       	push	r6

0000172c <.Loc.5>:
    172c:	7f 92       	push	r7

0000172e <.Loc.6>:
    172e:	8f 92       	push	r8

00001730 <.Loc.7>:
    1730:	9f 92       	push	r9

00001732 <.Loc.8>:
    1732:	af 92       	push	r10

00001734 <.Loc.9>:
    1734:	bf 92       	push	r11

00001736 <.Loc.10>:
    1736:	cf 92       	push	r12

00001738 <.Loc.11>:
    1738:	df 92       	push	r13

0000173a <.Loc.12>:
    173a:	ef 92       	push	r14

0000173c <.Loc.13>:
    173c:	ff 92       	push	r15

0000173e <.Loc.14>:
    173e:	0f 93       	push	r16

00001740 <.Loc.15>:
    1740:	1f 93       	push	r17

00001742 <.Loc.16>:
    1742:	cf 93       	push	r28

00001744 <.Loc.17>:
    1744:	df 93       	push	r29

00001746 <.Loc.18>:
    1746:	cd b7       	in	r28, 0x3d	; 61

00001748 <.Loc.19>:
    1748:	de b7       	in	r29, 0x3e	; 62

0000174a <.Loc.20>:
    174a:	ca 1b       	sub	r28, r26

0000174c <.Loc.21>:
    174c:	db 0b       	sbc	r29, r27

0000174e <.Loc.22>:
    174e:	0f b6       	in	r0, 0x3f	; 63

00001750 <.Loc.23>:
    1750:	f8 94       	cli

00001752 <.Loc.24>:
    1752:	de bf       	out	0x3e, r29	; 62

00001754 <.Loc.25>:
    1754:	0f be       	out	0x3f, r0	; 63

00001756 <.Loc.26>:
    1756:	cd bf       	out	0x3d, r28	; 61

00001758 <.Loc.27>:
    1758:	09 94       	ijmp

0000175a <__epilogue_restores__>:
    175a:	2a 88       	ldd	r2, Y+18	; 0x12

0000175c <.Loc.1>:
    175c:	39 88       	ldd	r3, Y+17	; 0x11

0000175e <.Loc.2>:
    175e:	48 88       	ldd	r4, Y+16	; 0x10

00001760 <.Loc.3>:
    1760:	5f 84       	ldd	r5, Y+15	; 0x0f

00001762 <.Loc.4>:
    1762:	6e 84       	ldd	r6, Y+14	; 0x0e

00001764 <.Loc.5>:
    1764:	7d 84       	ldd	r7, Y+13	; 0x0d

00001766 <.Loc.6>:
    1766:	8c 84       	ldd	r8, Y+12	; 0x0c

00001768 <.Loc.7>:
    1768:	9b 84       	ldd	r9, Y+11	; 0x0b

0000176a <.Loc.8>:
    176a:	aa 84       	ldd	r10, Y+10	; 0x0a

0000176c <.Loc.9>:
    176c:	b9 84       	ldd	r11, Y+9	; 0x09

0000176e <.Loc.10>:
    176e:	c8 84       	ldd	r12, Y+8	; 0x08

00001770 <.Loc.11>:
    1770:	df 80       	ldd	r13, Y+7	; 0x07

00001772 <.Loc.12>:
    1772:	ee 80       	ldd	r14, Y+6	; 0x06

00001774 <.Loc.13>:
    1774:	fd 80       	ldd	r15, Y+5	; 0x05

00001776 <.Loc.14>:
    1776:	0c 81       	ldd	r16, Y+4	; 0x04

00001778 <.Loc.15>:
    1778:	1b 81       	ldd	r17, Y+3	; 0x03

0000177a <.Loc.16>:
    177a:	aa 81       	ldd	r26, Y+2	; 0x02

0000177c <.Loc.17>:
    177c:	b9 81       	ldd	r27, Y+1	; 0x01

0000177e <.Loc.18>:
    177e:	ce 0f       	add	r28, r30

00001780 <.Loc.19>:
    1780:	d1 1d       	adc	r29, r1

00001782 <.Loc.20>:
    1782:	0f b6       	in	r0, 0x3f	; 63

00001784 <.Loc.21>:
    1784:	f8 94       	cli

00001786 <.Loc.22>:
    1786:	de bf       	out	0x3e, r29	; 62

00001788 <.Loc.23>:
    1788:	0f be       	out	0x3f, r0	; 63

0000178a <.Loc.24>:
    178a:	cd bf       	out	0x3d, r28	; 61

0000178c <.Loc.25>:
    178c:	ed 01       	movw	r28, r26

0000178e <.Loc.26>:
    178e:	08 95       	ret

00001790 <_exit>:
    1790:	f8 94       	cli

00001792 <__stop_program>:
    1792:	ff cf       	rjmp	.-2      	; 0x1792 <__stop_program>
