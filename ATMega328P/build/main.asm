
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
      1c:	0c 94 85 05 	jmp	0xb0a	; 0xb0a <__vector_7>
      20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      38:	0c 94 86 05 	jmp	0xb0c	; 0xb0c <__vector_14>
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
      7a:	e4 ea       	ldi	r30, 0xA4	; 164

0000007c <.Loc.4>:
      7c:	f6 e1       	ldi	r31, 0x16	; 22

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
      94:	a3 31       	cpi	r26, 0x13	; 19

00000096 <.Loc.6>:
      96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
      98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
      9a:	0e 94 b6 05 	call	0xb6c	; 0xb6c <main>
      9e:	0c 94 50 0b 	jmp	0x16a0	; 0x16a0 <_exit>

000000a2 <__bad_interrupt>:
      a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <VL53L0X_test>:
      a6:	cf 93       	push	r28
      a8:	df 93       	push	r29
      aa:	0f 92       	push	r0
      ac:	cd b7       	in	r28, 0x3d	; 61
      ae:	de b7       	in	r29, 0x3e	; 62
      b0:	0e 94 3a 02 	call	0x474	; 0x474 <I2C_init>
      b4:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
      b8:	60 e0       	ldi	r22, 0x00	; 0
      ba:	70 e0       	ldi	r23, 0x00	; 0
      bc:	89 e2       	ldi	r24, 0x29	; 41
      be:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
      c2:	80 ec       	ldi	r24, 0xC0	; 192
      c4:	0e 94 ac 02 	call	0x558	; 0x558 <I2C_write>
      c8:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
      cc:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
      d0:	61 e0       	ldi	r22, 0x01	; 1
      d2:	70 e0       	ldi	r23, 0x00	; 0
      d4:	89 e2       	ldi	r24, 0x29	; 41
      d6:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
      da:	0e 94 ca 02 	call	0x594	; 0x594 <I2C_read_NACK>
      de:	89 83       	std	Y+1, r24	; 0x01
      e0:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
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
     110:	0e 94 0e 06 	call	0xc1c	; 0xc1c <__udivmodhi4>
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
     132:	0e 94 0e 06 	call	0xc1c	; 0xc1c <__udivmodhi4>
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
     244:	0e 94 3a 02 	call	0x474	; 0x474 <I2C_init>
     248:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
     24c:	07 97       	sbiw	r24, 0x07	; 7
     24e:	29 f0       	breq	.+10     	; 0x25a <.L2>
     250:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
     254:	80 e0       	ldi	r24, 0x00	; 0
     256:	90 e0       	ldi	r25, 0x00	; 0
     258:	08 95       	ret

0000025a <.L2>:
     25a:	60 e0       	ldi	r22, 0x00	; 0
     25c:	70 e0       	ldi	r23, 0x00	; 0
     25e:	82 e5       	ldi	r24, 0x52	; 82
     260:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
     264:	07 97       	sbiw	r24, 0x07	; 7
     266:	29 f0       	breq	.+10     	; 0x272 <.L4>
     268:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
     26c:	82 e0       	ldi	r24, 0x02	; 2
     26e:	90 e0       	ldi	r25, 0x00	; 0
     270:	08 95       	ret

00000272 <.L4>:
     272:	80 e4       	ldi	r24, 0x40	; 64
     274:	0e 94 ac 02 	call	0x558	; 0x558 <I2C_write>
     278:	07 97       	sbiw	r24, 0x07	; 7
     27a:	29 f0       	breq	.+10     	; 0x286 <.L5>

0000027c <.L6>:
     27c:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
     280:	83 e0       	ldi	r24, 0x03	; 3
     282:	90 e0       	ldi	r25, 0x00	; 0
     284:	08 95       	ret

00000286 <.L5>:
     286:	80 e0       	ldi	r24, 0x00	; 0
     288:	0e 94 ac 02 	call	0x558	; 0x558 <I2C_write>
     28c:	07 97       	sbiw	r24, 0x07	; 7
     28e:	b1 f7       	brne	.-20     	; 0x27c <.L6>
     290:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
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
     2a8:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
     2ac:	07 97       	sbiw	r24, 0x07	; 7
     2ae:	59 f0       	breq	.+22     	; 0x2c6 <.L8>

000002b0 <.L12>:
     2b0:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
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
     2cc:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
     2d0:	07 97       	sbiw	r24, 0x07	; 7
     2d2:	29 f0       	breq	.+10     	; 0x2de <.L10>

000002d4 <.L13>:
     2d4:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
     2d8:	82 e0       	ldi	r24, 0x02	; 2
     2da:	90 e0       	ldi	r25, 0x00	; 0
     2dc:	ed cf       	rjmp	.-38     	; 0x2b8 <.L7>

000002de <.L10>:
     2de:	80 e0       	ldi	r24, 0x00	; 0
     2e0:	0e 94 ac 02 	call	0x558	; 0x558 <I2C_write>
     2e4:	07 97       	sbiw	r24, 0x07	; 7
     2e6:	29 f0       	breq	.+10     	; 0x2f2 <.L11>
     2e8:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
     2ec:	83 e0       	ldi	r24, 0x03	; 3
     2ee:	90 e0       	ldi	r25, 0x00	; 0
     2f0:	e3 cf       	rjmp	.-58     	; 0x2b8 <.L7>

000002f2 <.L11>:
     2f2:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
     2f6:	07 97       	sbiw	r24, 0x07	; 7
     2f8:	d9 f6       	brne	.-74     	; 0x2b0 <.L12>
     2fa:	61 e0       	ldi	r22, 0x01	; 1
     2fc:	70 e0       	ldi	r23, 0x00	; 0
     2fe:	82 e5       	ldi	r24, 0x52	; 82
     300:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
     304:	07 97       	sbiw	r24, 0x07	; 7
     306:	31 f7       	brne	.-52     	; 0x2d4 <.L13>
     308:	8e 01       	movw	r16, r28
     30a:	7e 01       	movw	r14, r28
     30c:	85 e0       	ldi	r24, 0x05	; 5
     30e:	e8 0e       	add	r14, r24
     310:	f1 1c       	adc	r15, r1

00000312 <.L14>:
     312:	0e 94 c0 02 	call	0x580	; 0x580 <I2C_read_ACK>
     316:	f8 01       	movw	r30, r16
     318:	81 93       	st	Z+, r24
     31a:	8f 01       	movw	r16, r30
     31c:	ee 15       	cp	r30, r14
     31e:	ff 05       	cpc	r31, r15
     320:	c1 f7       	brne	.-16     	; 0x312 <.L14>
     322:	0e 94 ca 02 	call	0x594	; 0x594 <I2C_read_NACK>
     326:	8d 83       	std	Y+5, r24	; 0x05
     328:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <I2C_stop>
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
     3ee:	87 ff       	sbrs	r24, 7
     3f0:	fc cf       	rjmp	.-8      	; 0x3ea <USART_receive>
     3f2:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     3f6:	08 95       	ret

000003f8 <USART_putstring>:
     3f8:	cf 93       	push	r28
     3fa:	df 93       	push	r29
     3fc:	ec 01       	movw	r28, r24

000003fe <.L10>:
     3fe:	88 81       	ld	r24, Y
     400:	81 11       	cpse	r24, r1
     402:	03 c0       	rjmp	.+6      	; 0x40a <.L11>
     404:	df 91       	pop	r29
     406:	cf 91       	pop	r28
     408:	08 95       	ret

0000040a <.L11>:
     40a:	21 96       	adiw	r28, 0x01	; 1
     40c:	0e 94 ee 01 	call	0x3dc	; 0x3dc <USART_send>
     410:	f6 cf       	rjmp	.-20     	; 0x3fe <.L10>

00000412 <USART_put_uint16>:
     412:	0f 93       	push	r16
     414:	1f 93       	push	r17
     416:	cf 93       	push	r28
     418:	df 93       	push	r29
     41a:	cd b7       	in	r28, 0x3d	; 61
     41c:	de b7       	in	r29, 0x3e	; 62
     41e:	2a 97       	sbiw	r28, 0x0a	; 10
     420:	0f b6       	in	r0, 0x3f	; 63
     422:	f8 94       	cli
     424:	de bf       	out	0x3e, r29	; 62
     426:	0f be       	out	0x3f, r0	; 63
     428:	cd bf       	out	0x3d, r28	; 61
     42a:	9f 93       	push	r25
     42c:	8f 93       	push	r24
     42e:	80 e0       	ldi	r24, 0x00	; 0
     430:	91 e0       	ldi	r25, 0x01	; 1
     432:	9f 93       	push	r25
     434:	8f 93       	push	r24
     436:	8e 01       	movw	r16, r28
     438:	0f 5f       	subi	r16, 0xFF	; 255
     43a:	1f 4f       	sbci	r17, 0xFF	; 255
     43c:	1f 93       	push	r17
     43e:	0f 93       	push	r16
     440:	0e 94 58 08 	call	0x10b0	; 0x10b0 <sprintf>
     444:	c8 01       	movw	r24, r16
     446:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <USART_putstring>
     44a:	83 e0       	ldi	r24, 0x03	; 3
     44c:	91 e0       	ldi	r25, 0x01	; 1
     44e:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <USART_putstring>
     452:	0f 90       	pop	r0
     454:	0f 90       	pop	r0
     456:	0f 90       	pop	r0
     458:	0f 90       	pop	r0
     45a:	0f 90       	pop	r0
     45c:	0f 90       	pop	r0
     45e:	2a 96       	adiw	r28, 0x0a	; 10
     460:	0f b6       	in	r0, 0x3f	; 63
     462:	f8 94       	cli
     464:	de bf       	out	0x3e, r29	; 62
     466:	0f be       	out	0x3f, r0	; 63
     468:	cd bf       	out	0x3d, r28	; 61
     46a:	df 91       	pop	r29
     46c:	cf 91       	pop	r28
     46e:	1f 91       	pop	r17
     470:	0f 91       	pop	r16
     472:	08 95       	ret

00000474 <I2C_init>:
     474:	87 b1       	in	r24, 0x07	; 7
     476:	8f 7c       	andi	r24, 0xCF	; 207
     478:	87 b9       	out	0x07, r24	; 7
     47a:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     47e:	88 e4       	ldi	r24, 0x48	; 72
     480:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     484:	84 e0       	ldi	r24, 0x04	; 4
     486:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     48a:	87 e0       	ldi	r24, 0x07	; 7
     48c:	90 e0       	ldi	r25, 0x00	; 0
     48e:	08 95       	ret

00000490 <I2C_start>:
     490:	84 ea       	ldi	r24, 0xA4	; 164
     492:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000496 <.L3>:
     496:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     49a:	87 ff       	sbrs	r24, 7
     49c:	fc cf       	rjmp	.-8      	; 0x496 <.L3>
     49e:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4a2:	88 7f       	andi	r24, 0xF8	; 248
     4a4:	88 30       	cpi	r24, 0x08	; 8
     4a6:	11 f0       	breq	.+4      	; 0x4ac <.L5>
     4a8:	80 31       	cpi	r24, 0x10	; 16
     4aa:	19 f4       	brne	.+6      	; 0x4b2 <.L6>

000004ac <.L5>:
     4ac:	87 e0       	ldi	r24, 0x07	; 7
     4ae:	90 e0       	ldi	r25, 0x00	; 0
     4b0:	08 95       	ret

000004b2 <.L6>:
     4b2:	81 e0       	ldi	r24, 0x01	; 1
     4b4:	90 e0       	ldi	r25, 0x00	; 0
     4b6:	08 95       	ret

000004b8 <I2C_connect_address>:
     4b8:	88 0f       	add	r24, r24
     4ba:	86 2b       	or	r24, r22
     4bc:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4c0:	84 e8       	ldi	r24, 0x84	; 132
     4c2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004c6 <.L9>:
     4c6:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4ca:	87 ff       	sbrs	r24, 7
     4cc:	fc cf       	rjmp	.-8      	; 0x4c6 <.L9>
     4ce:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4d2:	88 7f       	andi	r24, 0xF8	; 248
     4d4:	67 2b       	or	r22, r23
     4d6:	31 f4       	brne	.+12     	; 0x4e4 <.L10>
     4d8:	88 31       	cpi	r24, 0x18	; 24
     4da:	49 f4       	brne	.+18     	; 0x4ee <.L13>

000004dc <.L12>:
     4dc:	2d 9a       	sbi	0x05, 5	; 5
     4de:	87 e0       	ldi	r24, 0x07	; 7
     4e0:	90 e0       	ldi	r25, 0x00	; 0
     4e2:	08 95       	ret

000004e4 <.L10>:
     4e4:	80 34       	cpi	r24, 0x40	; 64
     4e6:	d1 f3       	breq	.-12     	; 0x4dc <.L12>
     4e8:	84 e0       	ldi	r24, 0x04	; 4
     4ea:	90 e0       	ldi	r25, 0x00	; 0
     4ec:	08 95       	ret

000004ee <.L13>:
     4ee:	85 e0       	ldi	r24, 0x05	; 5
     4f0:	90 e0       	ldi	r25, 0x00	; 0
     4f2:	08 95       	ret

000004f4 <I2C_scan>:
     4f4:	0f 93       	push	r16
     4f6:	1f 93       	push	r17
     4f8:	cf 93       	push	r28
     4fa:	df 93       	push	r29
     4fc:	8c 01       	movw	r16, r24
     4fe:	00 97       	sbiw	r24, 0x00	; 0
     500:	11 f0       	breq	.+4      	; 0x506 <.L17>
     502:	fc 01       	movw	r30, r24
     504:	10 82       	st	Z, r1

00000506 <.L17>:
     506:	25 9a       	sbi	0x04, 5	; 4
     508:	2d 98       	cbi	0x05, 5	; 5
     50a:	c8 e0       	ldi	r28, 0x08	; 8
     50c:	d4 e9       	ldi	r29, 0x94	; 148

0000050e <.L23>:
     50e:	0e 94 48 02 	call	0x490	; 0x490 <I2C_start>
     512:	07 97       	sbiw	r24, 0x07	; 7
     514:	41 f0       	breq	.+16     	; 0x526 <.L18>

00000516 <.L20>:
     516:	d0 93 bc 00 	sts	0x00BC, r29	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     51a:	cf 5f       	subi	r28, 0xFF	; 255
     51c:	c8 37       	cpi	r28, 0x78	; 120
     51e:	b9 f7       	brne	.-18     	; 0x50e <.L23>
     520:	86 e0       	ldi	r24, 0x06	; 6
     522:	90 e0       	ldi	r25, 0x00	; 0
     524:	14 c0       	rjmp	.+40     	; 0x54e <.L16>

00000526 <.L18>:
     526:	60 e0       	ldi	r22, 0x00	; 0
     528:	70 e0       	ldi	r23, 0x00	; 0
     52a:	8c 2f       	mov	r24, r28
     52c:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <I2C_connect_address>
     530:	87 30       	cpi	r24, 0x07	; 7
     532:	91 05       	cpc	r25, r1
     534:	81 f7       	brne	.-32     	; 0x516 <.L20>
     536:	24 e9       	ldi	r18, 0x94	; 148
     538:	20 93 bc 00 	sts	0x00BC, r18	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     53c:	01 15       	cp	r16, r1
     53e:	11 05       	cpc	r17, r1
     540:	11 f0       	breq	.+4      	; 0x546 <.L21>
     542:	f8 01       	movw	r30, r16
     544:	c0 83       	st	Z, r28

00000546 <.L21>:
     546:	25 b1       	in	r18, 0x05	; 5
     548:	30 e2       	ldi	r19, 0x20	; 32
     54a:	23 27       	eor	r18, r19
     54c:	25 b9       	out	0x05, r18	; 5

0000054e <.L16>:
     54e:	df 91       	pop	r29
     550:	cf 91       	pop	r28
     552:	1f 91       	pop	r17
     554:	0f 91       	pop	r16
     556:	08 95       	ret

00000558 <I2C_write>:
     558:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     55c:	84 e8       	ldi	r24, 0x84	; 132
     55e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000562 <.L32>:
     562:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     566:	87 ff       	sbrs	r24, 7
     568:	fc cf       	rjmp	.-8      	; 0x562 <.L32>
     56a:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     56e:	88 7f       	andi	r24, 0xF8	; 248
     570:	88 32       	cpi	r24, 0x28	; 40
     572:	19 f0       	breq	.+6      	; 0x57a <.L34>
     574:	83 e0       	ldi	r24, 0x03	; 3
     576:	90 e0       	ldi	r25, 0x00	; 0
     578:	08 95       	ret

0000057a <.L34>:
     57a:	87 e0       	ldi	r24, 0x07	; 7
     57c:	90 e0       	ldi	r25, 0x00	; 0
     57e:	08 95       	ret

00000580 <I2C_read_ACK>:
     580:	84 ec       	ldi	r24, 0xC4	; 196
     582:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000586 <.L37>:
     586:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     58a:	87 ff       	sbrs	r24, 7
     58c:	fc cf       	rjmp	.-8      	; 0x586 <.L37>
     58e:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     592:	08 95       	ret

00000594 <I2C_read_NACK>:
     594:	84 e8       	ldi	r24, 0x84	; 132
     596:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000059a <.L40>:
     59a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     59e:	87 ff       	sbrs	r24, 7
     5a0:	fc cf       	rjmp	.-8      	; 0x59a <.L40>
     5a2:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     5a6:	08 95       	ret

000005a8 <I2C_stop>:
     5a8:	84 e9       	ldi	r24, 0x94	; 148
     5aa:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     5ae:	08 95       	ret

000005b0 <Error_Handler>:
     5b0:	88 e1       	ldi	r24, 0x18	; 24
     5b2:	98 e0       	ldi	r25, 0x08	; 8
     5b4:	0f b6       	in	r0, 0x3f	; 63
     5b6:	f8 94       	cli
     5b8:	a8 95       	wdr
     5ba:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     5be:	0f be       	out	0x3f, r0	; 63
     5c0:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

000005c4 <.L2>:
     5c4:	ff cf       	rjmp	.-2      	; 0x5c4 <.L2>

000005c6 <TIMER0_init_1ms>:
     5c6:	82 e0       	ldi	r24, 0x02	; 2
     5c8:	84 bd       	out	0x24, r24	; 36
     5ca:	93 e0       	ldi	r25, 0x03	; 3
     5cc:	95 bd       	out	0x25, r25	; 37
     5ce:	99 ef       	ldi	r25, 0xF9	; 249
     5d0:	97 bd       	out	0x27, r25	; 39
     5d2:	16 bc       	out	0x26, r1	; 38
     5d4:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7f806e>
     5d8:	08 95       	ret

000005da <ADC_init>:
     5da:	85 e4       	ldi	r24, 0x45	; 69
     5dc:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
     5e0:	87 e8       	ldi	r24, 0x87	; 135
     5e2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     5e6:	82 e0       	ldi	r24, 0x02	; 2
     5e8:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     5ec:	94 e0       	ldi	r25, 0x04	; 4
     5ee:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     5f2:	99 ef       	ldi	r25, 0xF9	; 249
     5f4:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     5f8:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     5fc:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
     600:	08 95       	ret

00000602 <ADC_get>:
     602:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     606:	80 64       	ori	r24, 0x40	; 64
     608:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

0000060c <.L4>:
     60c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     610:	84 ff       	sbrs	r24, 4
     612:	fc cf       	rjmp	.-8      	; 0x60c <.L4>
     614:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     618:	80 61       	ori	r24, 0x10	; 16
     61a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     61e:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
     622:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
     626:	80 e0       	ldi	r24, 0x00	; 0
     628:	90 e0       	ldi	r25, 0x00	; 0
     62a:	0e 94 37 07 	call	0xe6e	; 0xe6e <__floatunsisf>
     62e:	26 ef       	ldi	r18, 0xF6	; 246
     630:	38 e2       	ldi	r19, 0x28	; 40
     632:	4c e9       	ldi	r20, 0x9C	; 156
     634:	50 e4       	ldi	r21, 0x40	; 64
     636:	0e 94 c5 07 	call	0xf8a	; 0xf8a <__mulsf3>
     63a:	0e 94 08 07 	call	0xe10	; 0xe10 <__fixunssfsi>
     63e:	cb 01       	movw	r24, r22
     640:	08 95       	ret

00000642 <ADC_sweep>:
     642:	ff 92       	push	r15
     644:	0f 93       	push	r16
     646:	1f 93       	push	r17
     648:	cf 93       	push	r28
     64a:	df 93       	push	r29
     64c:	ec 01       	movw	r28, r24
     64e:	0c e7       	ldi	r16, 0x7C	; 124
     650:	10 e0       	ldi	r17, 0x00	; 0
     652:	f8 01       	movw	r30, r16
     654:	10 82       	st	Z, r1
     656:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     65a:	8a 83       	std	Y+2, r24	; 0x02
     65c:	9b 83       	std	Y+3, r25	; 0x03
     65e:	8f e3       	ldi	r24, 0x3F	; 63
     660:	9f e1       	ldi	r25, 0x1F	; 31

00000662 <.L1^B1>:
     662:	01 97       	sbiw	r24, 0x01	; 1
     664:	f1 f7       	brne	.-4      	; 0x662 <.L1^B1>
     666:	00 c0       	rjmp	.+0      	; 0x668 <L0^A>

00000668 <L0^A>:
     668:	00 00       	nop
     66a:	ff 24       	eor	r15, r15
     66c:	f3 94       	inc	r15
     66e:	f8 01       	movw	r30, r16
     670:	f0 82       	st	Z, r15
     672:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     676:	88 83       	st	Y, r24
     678:	99 83       	std	Y+1, r25	; 0x01
     67a:	8f e3       	ldi	r24, 0x3F	; 63
     67c:	9f e1       	ldi	r25, 0x1F	; 31

0000067e <.L1^B2>:
     67e:	01 97       	sbiw	r24, 0x01	; 1
     680:	f1 f7       	brne	.-4      	; 0x67e <.L1^B2>
     682:	00 c0       	rjmp	.+0      	; 0x684 <L0^A>

00000684 <L0^A>:
     684:	00 00       	nop
     686:	82 e0       	ldi	r24, 0x02	; 2
     688:	f8 01       	movw	r30, r16
     68a:	80 83       	st	Z, r24
     68c:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     690:	8c 83       	std	Y+4, r24	; 0x04
     692:	9d 83       	std	Y+5, r25	; 0x05
     694:	8f e3       	ldi	r24, 0x3F	; 63
     696:	9f e1       	ldi	r25, 0x1F	; 31

00000698 <.L1^B3>:
     698:	01 97       	sbiw	r24, 0x01	; 1
     69a:	f1 f7       	brne	.-4      	; 0x698 <.L1^B3>
     69c:	00 c0       	rjmp	.+0      	; 0x69e <L0^A>

0000069e <L0^A>:
     69e:	00 00       	nop
     6a0:	83 e0       	ldi	r24, 0x03	; 3
     6a2:	f8 01       	movw	r30, r16
     6a4:	80 83       	st	Z, r24
     6a6:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     6aa:	8e 83       	std	Y+6, r24	; 0x06
     6ac:	9f 83       	std	Y+7, r25	; 0x07
     6ae:	8f e3       	ldi	r24, 0x3F	; 63
     6b0:	9f e1       	ldi	r25, 0x1F	; 31

000006b2 <.L1^B4>:
     6b2:	01 97       	sbiw	r24, 0x01	; 1
     6b4:	f1 f7       	brne	.-4      	; 0x6b2 <.L1^B4>
     6b6:	00 c0       	rjmp	.+0      	; 0x6b8 <L0^A>

000006b8 <L0^A>:
     6b8:	00 00       	nop
     6ba:	84 e0       	ldi	r24, 0x04	; 4
     6bc:	f8 01       	movw	r30, r16
     6be:	80 83       	st	Z, r24
     6c0:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     6c4:	88 87       	std	Y+8, r24	; 0x08
     6c6:	99 87       	std	Y+9, r25	; 0x09
     6c8:	8f e3       	ldi	r24, 0x3F	; 63
     6ca:	9f e1       	ldi	r25, 0x1F	; 31

000006cc <.L1^B5>:
     6cc:	01 97       	sbiw	r24, 0x01	; 1
     6ce:	f1 f7       	brne	.-4      	; 0x6cc <.L1^B5>
     6d0:	00 c0       	rjmp	.+0      	; 0x6d2 <L0^A>

000006d2 <L0^A>:
     6d2:	00 00       	nop
     6d4:	f8 01       	movw	r30, r16
     6d6:	f0 82       	st	Z, r15
     6d8:	0e 94 01 03 	call	0x602	; 0x602 <ADC_get>
     6dc:	8a 87       	std	Y+10, r24	; 0x0a
     6de:	9b 87       	std	Y+11, r25	; 0x0b
     6e0:	8f e3       	ldi	r24, 0x3F	; 63
     6e2:	9f e1       	ldi	r25, 0x1F	; 31

000006e4 <.L1^B6>:
     6e4:	01 97       	sbiw	r24, 0x01	; 1
     6e6:	f1 f7       	brne	.-4      	; 0x6e4 <.L1^B6>
     6e8:	00 c0       	rjmp	.+0      	; 0x6ea <L0^A>

000006ea <L0^A>:
     6ea:	00 00       	nop
     6ec:	df 91       	pop	r29
     6ee:	cf 91       	pop	r28
     6f0:	1f 91       	pop	r17
     6f2:	0f 91       	pop	r16
     6f4:	ff 90       	pop	r15
     6f6:	08 95       	ret

000006f8 <volts_to_D>:
     6f8:	bc 01       	movw	r22, r24
     6fa:	80 e0       	ldi	r24, 0x00	; 0
     6fc:	90 e0       	ldi	r25, 0x00	; 0
     6fe:	0e 94 37 07 	call	0xe6e	; 0xe6e <__floatunsisf>
     702:	20 e0       	ldi	r18, 0x00	; 0
     704:	30 e0       	ldi	r19, 0x00	; 0
     706:	4a e7       	ldi	r20, 0x7A	; 122
     708:	56 e4       	ldi	r21, 0x46	; 70
     70a:	0e 94 c5 07 	call	0xf8a	; 0xf8a <__mulsf3>
     70e:	20 e0       	ldi	r18, 0x00	; 0
     710:	30 e4       	ldi	r19, 0x40	; 64
     712:	4c e9       	ldi	r20, 0x9C	; 156
     714:	55 e4       	ldi	r21, 0x45	; 69
     716:	0e 94 8f 06 	call	0xd1e	; 0xd1e <__divsf3>
     71a:	20 e0       	ldi	r18, 0x00	; 0
     71c:	30 e0       	ldi	r19, 0x00	; 0
     71e:	40 e8       	ldi	r20, 0x80	; 128
     720:	5f e3       	ldi	r21, 0x3F	; 63
     722:	0e 94 22 06 	call	0xc44	; 0xc44 <__subsf3>
     726:	0e 94 08 07 	call	0xe10	; 0xe10 <__fixunssfsi>
     72a:	cb 01       	movw	r24, r22
     72c:	08 95       	ret

0000072e <GPIO_PORTD_IT_init>:
     72e:	88 30       	cpi	r24, 0x08	; 8
     730:	d0 f4       	brcc	.+52     	; 0x766 <.L10>
     732:	4a b1       	in	r20, 0x0a	; 10
     734:	21 e0       	ldi	r18, 0x01	; 1
     736:	30 e0       	ldi	r19, 0x00	; 0
     738:	b9 01       	movw	r22, r18
     73a:	01 c0       	rjmp	.+2      	; 0x73e <.L2^B1>

0000073c <.L1^B7>:
     73c:	66 0f       	add	r22, r22

0000073e <.L2^B1>:
     73e:	8a 95       	dec	r24
     740:	ea f7       	brpl	.-6      	; 0x73c <.L1^B7>
     742:	86 2f       	mov	r24, r22
     744:	96 2f       	mov	r25, r22
     746:	90 95       	com	r25
     748:	94 23       	and	r25, r20
     74a:	9a b9       	out	0x0a, r25	; 10
     74c:	9b b1       	in	r25, 0x0b	; 11
     74e:	96 2b       	or	r25, r22
     750:	9b b9       	out	0x0b, r25	; 11
     752:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     756:	94 60       	ori	r25, 0x04	; 4
     758:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     75c:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     760:	89 2b       	or	r24, r25
     762:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

00000766 <.L10>:
     766:	80 e0       	ldi	r24, 0x00	; 0
     768:	90 e0       	ldi	r25, 0x00	; 0
     76a:	08 95       	ret

0000076c <PWM_TIM1_init>:
     76c:	21 9a       	sbi	0x04, 1	; 4
     76e:	22 9a       	sbi	0x04, 2	; 4
     770:	22 ea       	ldi	r18, 0xA2	; 162
     772:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     776:	2a e1       	ldi	r18, 0x1A	; 26
     778:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     77c:	40 ed       	ldi	r20, 0xD0	; 208
     77e:	57 e0       	ldi	r21, 0x07	; 7
     780:	84 9f       	mul	r24, r20
     782:	90 01       	movw	r18, r0
     784:	85 9f       	mul	r24, r21
     786:	30 0d       	add	r19, r0
     788:	94 9f       	mul	r25, r20
     78a:	30 0d       	add	r19, r0
     78c:	11 24       	eor	r1, r1
     78e:	21 50       	subi	r18, 0x01	; 1
     790:	31 09       	sbc	r19, r1
     792:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     796:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     79a:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     79e:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7a2:	08 95       	ret

000007a4 <PWM_set_DC>:
     7a4:	9c 01       	movw	r18, r24
     7a6:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     7aa:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     7ae:	42 9f       	mul	r20, r18
     7b0:	c0 01       	movw	r24, r0
     7b2:	43 9f       	mul	r20, r19
     7b4:	90 0d       	add	r25, r0
     7b6:	52 9f       	mul	r21, r18
     7b8:	90 0d       	add	r25, r0
     7ba:	11 24       	eor	r1, r1
     7bc:	64 e6       	ldi	r22, 0x64	; 100
     7be:	70 e0       	ldi	r23, 0x00	; 0
     7c0:	0e 94 0e 06 	call	0xc1c	; 0xc1c <__udivmodhi4>
     7c4:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     7c8:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7cc:	08 95       	ret

000007ce <DEBUG_init>:
     7ce:	25 9a       	sbi	0x04, 5	; 4
     7d0:	08 95       	ret

000007d2 <DEBUG_led_toggle>:
     7d2:	85 b1       	in	r24, 0x05	; 5
     7d4:	90 e2       	ldi	r25, 0x20	; 32
     7d6:	89 27       	eor	r24, r25
     7d8:	85 b9       	out	0x05, r24	; 5
     7da:	08 95       	ret

000007dc <DEBUG_led_on>:
     7dc:	2d 9a       	sbi	0x05, 5	; 5
     7de:	08 95       	ret

000007e0 <DEBUG_led_off>:
     7e0:	2d 98       	cbi	0x05, 5	; 5
     7e2:	08 95       	ret

000007e4 <procesar_error>:
     7e4:	cf 93       	push	r28
     7e6:	df 93       	push	r29
     7e8:	cd b7       	in	r28, 0x3d	; 61
     7ea:	de b7       	in	r29, 0x3e	; 62
     7ec:	2a 97       	sbiw	r28, 0x0a	; 10
     7ee:	0f b6       	in	r0, 0x3f	; 63
     7f0:	f8 94       	cli
     7f2:	de bf       	out	0x3e, r29	; 62
     7f4:	0f be       	out	0x3f, r0	; 63
     7f6:	cd bf       	out	0x3d, r28	; 61
     7f8:	6d 83       	std	Y+5, r22	; 0x05
     7fa:	7e 83       	std	Y+6, r23	; 0x06
     7fc:	8f 83       	std	Y+7, r24	; 0x07
     7fe:	98 87       	std	Y+8, r25	; 0x08
     800:	20 91 0a 01 	lds	r18, 0x010A	; 0x80010a <x_angulo>
     804:	30 91 0b 01 	lds	r19, 0x010B	; 0x80010b <x_angulo+0x1>
     808:	29 87       	std	Y+9, r18	; 0x09
     80a:	3a 87       	std	Y+10, r19	; 0x0a
     80c:	2d 81       	ldd	r18, Y+5	; 0x05
     80e:	3e 81       	ldd	r19, Y+6	; 0x06
     810:	b9 01       	movw	r22, r18
     812:	33 0f       	add	r19, r19
     814:	88 0b       	sbc	r24, r24
     816:	98 2f       	mov	r25, r24
     818:	0e 94 39 07 	call	0xe72	; 0xe72 <__floatsisf>
     81c:	2d ec       	ldi	r18, 0xCD	; 205
     81e:	3c ec       	ldi	r19, 0xCC	; 204
     820:	4c ec       	ldi	r20, 0xCC	; 204
     822:	5d e3       	ldi	r21, 0x3D	; 61
     824:	0e 94 c5 07 	call	0xf8a	; 0xf8a <__mulsf3>
     828:	69 83       	std	Y+1, r22	; 0x01
     82a:	7a 83       	std	Y+2, r23	; 0x02
     82c:	8b 83       	std	Y+3, r24	; 0x03
     82e:	9c 83       	std	Y+4, r25	; 0x04
     830:	29 85       	ldd	r18, Y+9	; 0x09
     832:	3a 85       	ldd	r19, Y+10	; 0x0a
     834:	b9 01       	movw	r22, r18
     836:	33 0f       	add	r19, r19
     838:	88 0b       	sbc	r24, r24
     83a:	98 2f       	mov	r25, r24
     83c:	0e 94 39 07 	call	0xe72	; 0xe72 <__floatsisf>
     840:	9b 01       	movw	r18, r22
     842:	ac 01       	movw	r20, r24
     844:	69 81       	ldd	r22, Y+1	; 0x01
     846:	7a 81       	ldd	r23, Y+2	; 0x02
     848:	8b 81       	ldd	r24, Y+3	; 0x03
     84a:	9c 81       	ldd	r25, Y+4	; 0x04
     84c:	0e 94 23 06 	call	0xc46	; 0xc46 <__addsf3>
     850:	0e 94 01 07 	call	0xe02	; 0xe02 <__fixsfsi>
     854:	70 93 0b 01 	sts	0x010B, r23	; 0x80010b <x_angulo+0x1>
     858:	60 93 0a 01 	sts	0x010A, r22	; 0x80010a <x_angulo>
     85c:	60 91 08 01 	lds	r22, 0x0108	; 0x800108 <y_angulo>
     860:	70 91 09 01 	lds	r23, 0x0109	; 0x800109 <y_angulo+0x1>
     864:	87 2f       	mov	r24, r23
     866:	88 0f       	add	r24, r24
     868:	88 0b       	sbc	r24, r24
     86a:	98 2f       	mov	r25, r24
     86c:	0e 94 39 07 	call	0xe72	; 0xe72 <__floatsisf>
     870:	69 83       	std	Y+1, r22	; 0x01
     872:	7a 83       	std	Y+2, r23	; 0x02
     874:	8b 83       	std	Y+3, r24	; 0x03
     876:	9c 83       	std	Y+4, r25	; 0x04
     878:	2f 81       	ldd	r18, Y+7	; 0x07
     87a:	38 85       	ldd	r19, Y+8	; 0x08
     87c:	b9 01       	movw	r22, r18
     87e:	33 0f       	add	r19, r19
     880:	88 0b       	sbc	r24, r24
     882:	98 2f       	mov	r25, r24
     884:	0e 94 39 07 	call	0xe72	; 0xe72 <__floatsisf>
     888:	2d ec       	ldi	r18, 0xCD	; 205
     88a:	3c ec       	ldi	r19, 0xCC	; 204
     88c:	4c ec       	ldi	r20, 0xCC	; 204
     88e:	5d e3       	ldi	r21, 0x3D	; 61
     890:	0e 94 c5 07 	call	0xf8a	; 0xf8a <__mulsf3>
     894:	9b 01       	movw	r18, r22
     896:	ac 01       	movw	r20, r24
     898:	69 81       	ldd	r22, Y+1	; 0x01
     89a:	7a 81       	ldd	r23, Y+2	; 0x02
     89c:	8b 81       	ldd	r24, Y+3	; 0x03
     89e:	9c 81       	ldd	r25, Y+4	; 0x04
     8a0:	0e 94 22 06 	call	0xc44	; 0xc44 <__subsf3>
     8a4:	0e 94 01 07 	call	0xe02	; 0xe02 <__fixsfsi>
     8a8:	70 93 09 01 	sts	0x0109, r23	; 0x800109 <y_angulo+0x1>
     8ac:	60 93 08 01 	sts	0x0108, r22	; 0x800108 <y_angulo>
     8b0:	2a 96       	adiw	r28, 0x0a	; 10
     8b2:	0f b6       	in	r0, 0x3f	; 63
     8b4:	f8 94       	cli
     8b6:	de bf       	out	0x3e, r29	; 62
     8b8:	0f be       	out	0x3f, r0	; 63
     8ba:	cd bf       	out	0x3d, r28	; 61
     8bc:	df 91       	pop	r29
     8be:	cf 91       	pop	r28
     8c0:	08 95       	ret

000008c2 <get_error>:
     8c2:	ff 92       	push	r15
     8c4:	0f 93       	push	r16
     8c6:	1f 93       	push	r17
     8c8:	cf 93       	push	r28
     8ca:	df 93       	push	r29
     8cc:	cd b7       	in	r28, 0x3d	; 61
     8ce:	de b7       	in	r29, 0x3e	; 62
     8d0:	28 97       	sbiw	r28, 0x08	; 8
     8d2:	0f b6       	in	r0, 0x3f	; 63
     8d4:	f8 94       	cli
     8d6:	de bf       	out	0x3e, r29	; 62
     8d8:	0f be       	out	0x3f, r0	; 63
     8da:	cd bf       	out	0x3d, r28	; 61

000008dc <.L19>:
     8dc:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     8e0:	8c 33       	cpi	r24, 0x3C	; 60
     8e2:	e1 f7       	brne	.-8      	; 0x8dc <.L19>
     8e4:	10 e0       	ldi	r17, 0x00	; 0

000008e6 <.L21>:
     8e6:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     8ea:	8c 32       	cpi	r24, 0x2C	; 44
     8ec:	41 f0       	breq	.+16     	; 0x8fe <.L20>
     8ee:	17 30       	cpi	r17, 0x07	; 7
     8f0:	d1 f3       	breq	.-12     	; 0x8e6 <.L21>
     8f2:	fe 01       	movw	r30, r28
     8f4:	e1 0f       	add	r30, r17
     8f6:	f1 1d       	adc	r31, r1
     8f8:	81 83       	std	Z+1, r24	; 0x01
     8fa:	1f 5f       	subi	r17, 0xFF	; 255
     8fc:	f4 cf       	rjmp	.-24     	; 0x8e6 <.L21>

000008fe <.L20>:
     8fe:	fe 01       	movw	r30, r28
     900:	31 96       	adiw	r30, 0x01	; 1
     902:	e1 0f       	add	r30, r17
     904:	f1 1d       	adc	r31, r1
     906:	10 82       	st	Z, r1
     908:	ce 01       	movw	r24, r28
     90a:	01 96       	adiw	r24, 0x01	; 1
     90c:	0e 94 32 08 	call	0x1064	; 0x1064 <atoi>
     910:	8c 01       	movw	r16, r24
     912:	f1 2c       	mov	r15, r1

00000914 <.L24>:
     914:	0e 94 f5 01 	call	0x3ea	; 0x3ea <USART_receive>
     918:	8e 33       	cpi	r24, 0x3E	; 62
     91a:	51 f0       	breq	.+20     	; 0x930 <.L23>
     91c:	97 e0       	ldi	r25, 0x07	; 7
     91e:	f9 16       	cp	r15, r25
     920:	c9 f3       	breq	.-14     	; 0x914 <.L24>
     922:	fe 01       	movw	r30, r28
     924:	31 96       	adiw	r30, 0x01	; 1
     926:	ef 0d       	add	r30, r15
     928:	f1 1d       	adc	r31, r1
     92a:	80 83       	st	Z, r24
     92c:	f3 94       	inc	r15
     92e:	f2 cf       	rjmp	.-28     	; 0x914 <.L24>

00000930 <.L23>:
     930:	fe 01       	movw	r30, r28
     932:	31 96       	adiw	r30, 0x01	; 1
     934:	ef 0d       	add	r30, r15
     936:	f1 1d       	adc	r31, r1
     938:	10 82       	st	Z, r1
     93a:	ce 01       	movw	r24, r28
     93c:	01 96       	adiw	r24, 0x01	; 1
     93e:	0e 94 32 08 	call	0x1064	; 0x1064 <atoi>
     942:	b8 01       	movw	r22, r16
     944:	28 96       	adiw	r28, 0x08	; 8
     946:	0f b6       	in	r0, 0x3f	; 63
     948:	f8 94       	cli
     94a:	de bf       	out	0x3e, r29	; 62
     94c:	0f be       	out	0x3f, r0	; 63
     94e:	cd bf       	out	0x3d, r28	; 61
     950:	df 91       	pop	r29
     952:	cf 91       	pop	r28
     954:	1f 91       	pop	r17
     956:	0f 91       	pop	r16
     958:	ff 90       	pop	r15
     95a:	08 95       	ret

0000095c <procesar_joystick>:
     95c:	0f 93       	push	r16
     95e:	1f 93       	push	r17
     960:	cf 93       	push	r28
     962:	8c 01       	movw	r16, r24
     964:	66 30       	cpi	r22, 0x06	; 6
     966:	71 05       	cpc	r23, r1
     968:	08 f4       	brcc	.+2      	; 0x96c <L0^A+0x2>

0000096a <L0^A>:
     96a:	7c c0       	rjmp	.+248    	; 0xa64 <.L31>
     96c:	fc 01       	movw	r30, r24
     96e:	85 81       	ldd	r24, Z+5	; 0x05
     970:	cc 27       	eor	r28, r28
     972:	81 ff       	sbrs	r24, 1
     974:	c3 95       	inc	r28
     976:	c0 93 06 01 	sts	0x0106, r28	; 0x800106 <boton_c.1>
     97a:	80 fd       	sbrc	r24, 0
     97c:	08 c0       	rjmp	.+16     	; 0x98e <.L33>
     97e:	81 e0       	ldi	r24, 0x01	; 1
     980:	90 e0       	ldi	r25, 0x00	; 0
     982:	90 93 0f 01 	sts	0x010F, r25	; 0x80010f <estado_actual+0x1>
     986:	80 93 0e 01 	sts	0x010E, r24	; 0x80010e <estado_actual>
     98a:	0e 94 e9 03 	call	0x7d2	; 0x7d2 <DEBUG_led_toggle>

0000098e <.L33>:
     98e:	ce 5f       	subi	r28, 0xFE	; 254
     990:	20 91 08 01 	lds	r18, 0x0108	; 0x800108 <y_angulo>
     994:	30 91 09 01 	lds	r19, 0x0109	; 0x800109 <y_angulo+0x1>
     998:	f8 01       	movw	r30, r16
     99a:	81 81       	ldd	r24, Z+1	; 0x01
     99c:	80 58       	subi	r24, 0x80	; 128
     99e:	99 0b       	sbc	r25, r25
     9a0:	0c 2e       	mov	r0, r28
     9a2:	02 c0       	rjmp	.+4      	; 0x9a8 <.L2^B2>

000009a4 <.L1^B8>:
     9a4:	95 95       	asr	r25
     9a6:	87 95       	ror	r24

000009a8 <.L2^B2>:
     9a8:	0a 94       	dec	r0
     9aa:	e2 f7       	brpl	.-8      	; 0x9a4 <.L1^B8>
     9ac:	82 0f       	add	r24, r18
     9ae:	93 1f       	adc	r25, r19
     9b0:	90 93 09 01 	sts	0x0109, r25	; 0x800109 <y_angulo+0x1>
     9b4:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <y_angulo>
     9b8:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     9bc:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     9c0:	97 ff       	sbrs	r25, 7
     9c2:	34 c0       	rjmp	.+104    	; 0xa2c <.L34>
     9c4:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <y_angulo+0x1>
     9c8:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <y_angulo>

000009cc <.L35>:
     9cc:	20 91 0a 01 	lds	r18, 0x010A	; 0x80010a <x_angulo>
     9d0:	30 91 0b 01 	lds	r19, 0x010B	; 0x80010b <x_angulo+0x1>
     9d4:	f8 01       	movw	r30, r16
     9d6:	80 81       	ld	r24, Z
     9d8:	80 58       	subi	r24, 0x80	; 128
     9da:	99 0b       	sbc	r25, r25
     9dc:	02 c0       	rjmp	.+4      	; 0x9e2 <.L2^B3>

000009de <.L1^B9>:
     9de:	95 95       	asr	r25
     9e0:	87 95       	ror	r24

000009e2 <.L2^B3>:
     9e2:	ca 95       	dec	r28
     9e4:	e2 f7       	brpl	.-8      	; 0x9de <.L1^B9>
     9e6:	28 1b       	sub	r18, r24
     9e8:	39 0b       	sbc	r19, r25
     9ea:	30 93 0b 01 	sts	0x010B, r19	; 0x80010b <x_angulo+0x1>
     9ee:	20 93 0a 01 	sts	0x010A, r18	; 0x80010a <x_angulo>
     9f2:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     9f6:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     9fa:	97 ff       	sbrs	r25, 7
     9fc:	25 c0       	rjmp	.+74     	; 0xa48 <.L36>
     9fe:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <x_angulo+0x1>
     a02:	10 92 0a 01 	sts	0x010A, r1	; 0x80010a <x_angulo>

00000a06 <.L37>:
     a06:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     a0a:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     a0e:	60 e0       	ldi	r22, 0x00	; 0
     a10:	70 e0       	ldi	r23, 0x00	; 0
     a12:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     a16:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     a1a:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     a1e:	61 e0       	ldi	r22, 0x01	; 1
     a20:	70 e0       	ldi	r23, 0x00	; 0
     a22:	cf 91       	pop	r28
     a24:	1f 91       	pop	r17
     a26:	0f 91       	pop	r16
     a28:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <SERVO_set_angulo>

00000a2c <.L34>:
     a2c:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     a30:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     a34:	84 38       	cpi	r24, 0x84	; 132
     a36:	93 40       	sbci	r25, 0x03	; 3
     a38:	4c f2       	brlt	.-110    	; 0x9cc <.L35>
     a3a:	83 e8       	ldi	r24, 0x83	; 131
     a3c:	93 e0       	ldi	r25, 0x03	; 3
     a3e:	90 93 09 01 	sts	0x0109, r25	; 0x800109 <y_angulo+0x1>
     a42:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <y_angulo>
     a46:	c2 cf       	rjmp	.-124    	; 0x9cc <.L35>

00000a48 <.L36>:
     a48:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     a4c:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     a50:	88 30       	cpi	r24, 0x08	; 8
     a52:	97 40       	sbci	r25, 0x07	; 7
     a54:	c4 f2       	brlt	.-80     	; 0xa06 <.L37>
     a56:	87 e0       	ldi	r24, 0x07	; 7
     a58:	97 e0       	ldi	r25, 0x07	; 7
     a5a:	90 93 0b 01 	sts	0x010B, r25	; 0x80010b <x_angulo+0x1>
     a5e:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <x_angulo>
     a62:	d1 cf       	rjmp	.-94     	; 0xa06 <.L37>

00000a64 <.L31>:
     a64:	cf 91       	pop	r28
     a66:	1f 91       	pop	r17
     a68:	0f 91       	pop	r16
     a6a:	08 95       	ret

00000a6c <procesar_boton_z>:
     a6c:	66 30       	cpi	r22, 0x06	; 6
     a6e:	71 05       	cpc	r23, r1
     a70:	08 f4       	brcc	.+2      	; 0xa74 <L0^A+0x2>

00000a72 <L0^A>:
     a72:	4a c0       	rjmp	.+148    	; 0xb08 <.L38>
     a74:	fc 01       	movw	r30, r24
     a76:	85 81       	ldd	r24, Z+5	; 0x05
     a78:	80 ff       	sbrs	r24, 0
     a7a:	06 c0       	rjmp	.+12     	; 0xa88 <.L40>
     a7c:	10 92 0f 01 	sts	0x010F, r1	; 0x80010f <estado_actual+0x1>
     a80:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <estado_actual>
     a84:	0e 94 e9 03 	call	0x7d2	; 0x7d2 <DEBUG_led_toggle>

00000a88 <.L40>:
     a88:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     a8c:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     a90:	97 ff       	sbrs	r25, 7
     a92:	1e c0       	rjmp	.+60     	; 0xad0 <.L41>
     a94:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <y_angulo+0x1>
     a98:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <y_angulo>

00000a9c <.L42>:
     a9c:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     aa0:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     aa4:	97 ff       	sbrs	r25, 7
     aa6:	22 c0       	rjmp	.+68     	; 0xaec <.L43>
     aa8:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <x_angulo+0x1>
     aac:	10 92 0a 01 	sts	0x010A, r1	; 0x80010a <x_angulo>

00000ab0 <.L44>:
     ab0:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     ab4:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     ab8:	60 e0       	ldi	r22, 0x00	; 0
     aba:	70 e0       	ldi	r23, 0x00	; 0
     abc:	0e 94 7b 00 	call	0xf6	; 0xf6 <SERVO_set_angulo>
     ac0:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     ac4:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     ac8:	61 e0       	ldi	r22, 0x01	; 1
     aca:	70 e0       	ldi	r23, 0x00	; 0
     acc:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <SERVO_set_angulo>

00000ad0 <.L41>:
     ad0:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo>
     ad4:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo+0x1>
     ad8:	84 38       	cpi	r24, 0x84	; 132
     ada:	93 40       	sbci	r25, 0x03	; 3
     adc:	fc f2       	brlt	.-66     	; 0xa9c <.L42>
     ade:	83 e8       	ldi	r24, 0x83	; 131
     ae0:	93 e0       	ldi	r25, 0x03	; 3
     ae2:	90 93 09 01 	sts	0x0109, r25	; 0x800109 <y_angulo+0x1>
     ae6:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <y_angulo>
     aea:	d8 cf       	rjmp	.-80     	; 0xa9c <.L42>

00000aec <.L43>:
     aec:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <x_angulo>
     af0:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <x_angulo+0x1>
     af4:	88 30       	cpi	r24, 0x08	; 8
     af6:	97 40       	sbci	r25, 0x07	; 7
     af8:	dc f2       	brlt	.-74     	; 0xab0 <.L44>
     afa:	87 e0       	ldi	r24, 0x07	; 7
     afc:	97 e0       	ldi	r25, 0x07	; 7
     afe:	90 93 0b 01 	sts	0x010B, r25	; 0x80010b <x_angulo+0x1>
     b02:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <x_angulo>
     b06:	d4 cf       	rjmp	.-88     	; 0xab0 <.L44>

00000b08 <.L38>:
     b08:	08 95       	ret

00000b0a <__vector_7>:
     b0a:	18 95       	reti

00000b0c <__vector_14>:
     b0c:	1f 92       	push	r1
     b0e:	1f b6       	in	r1, 0x3f	; 63
     b10:	1f 92       	push	r1
     b12:	11 24       	eor	r1, r1
     b14:	2f 93       	push	r18
     b16:	8f 93       	push	r24
     b18:	9f 93       	push	r25
     b1a:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <contador_1seg.1>
     b1e:	90 91 12 01 	lds	r25, 0x0112	; 0x800112 <contador_1seg.1+0x1>
     b22:	01 96       	adiw	r24, 0x01	; 1
     b24:	88 3e       	cpi	r24, 0xE8	; 232
     b26:	23 e0       	ldi	r18, 0x03	; 3
     b28:	92 07       	cpc	r25, r18
     b2a:	90 f4       	brcc	.+36     	; 0xb50 <.L3>
     b2c:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <contador_1seg.1>
     b30:	90 93 12 01 	sts	0x0112, r25	; 0x800112 <contador_1seg.1+0x1>

00000b34 <.L4>:
     b34:	80 91 10 01 	lds	r24, 0x0110	; 0x800110 <contador_20ms.0>
     b38:	8f 5f       	subi	r24, 0xFF	; 255
     b3a:	84 31       	cpi	r24, 0x14	; 20
     b3c:	88 f4       	brcc	.+34     	; 0xb60 <.L5>
     b3e:	80 93 10 01 	sts	0x0110, r24	; 0x800110 <contador_20ms.0>

00000b42 <.L2>:
     b42:	9f 91       	pop	r25
     b44:	8f 91       	pop	r24
     b46:	2f 91       	pop	r18
     b48:	1f 90       	pop	r1
     b4a:	1f be       	out	0x3f, r1	; 63
     b4c:	1f 90       	pop	r1
     b4e:	18 95       	reti

00000b50 <.L3>:
     b50:	10 92 11 01 	sts	0x0111, r1	; 0x800111 <contador_1seg.1>
     b54:	10 92 12 01 	sts	0x0112, r1	; 0x800112 <contador_1seg.1+0x1>
     b58:	81 e0       	ldi	r24, 0x01	; 1
     b5a:	80 93 0c 01 	sts	0x010C, r24	; 0x80010c <flag_1seg>
     b5e:	ea cf       	rjmp	.-44     	; 0xb34 <.L4>

00000b60 <.L5>:
     b60:	10 92 10 01 	sts	0x0110, r1	; 0x800110 <contador_20ms.0>
     b64:	81 e0       	ldi	r24, 0x01	; 1
     b66:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <flag_20ms>
     b6a:	eb cf       	rjmp	.-42     	; 0xb42 <.L2>

00000b6c <main>:
     b6c:	00 d0       	rcall	.+0      	; 0xb6e <L0^A>

00000b6e <L0^A>:
     b6e:	00 d0       	rcall	.+0      	; 0xb70 <L0^A>

00000b70 <L0^A>:
     b70:	00 d0       	rcall	.+0      	; 0xb72 <L0^A>

00000b72 <L0^A>:
     b72:	cd b7       	in	r28, 0x3d	; 61
     b74:	de b7       	in	r29, 0x3e	; 62
     b76:	0e 94 e7 03 	call	0x7ce	; 0x7ce <DEBUG_init>
     b7a:	0e 94 ee 03 	call	0x7dc	; 0x7dc <DEBUG_led_on>
     b7e:	0e 94 3a 02 	call	0x474	; 0x474 <I2C_init>

00000b82 <.L8>:
     b82:	0e 94 22 01 	call	0x244	; 0x244 <NUN_init>
     b86:	05 97       	sbiw	r24, 0x05	; 5
     b88:	61 f5       	brne	.+88     	; 0xbe2 <.L9>
     b8a:	0e 94 df 01 	call	0x3be	; 0x3be <USART_init>
     b8e:	0e 94 e3 02 	call	0x5c6	; 0x5c6 <TIMER0_init_1ms>
     b92:	84 e1       	ldi	r24, 0x14	; 20
     b94:	90 e0       	ldi	r25, 0x00	; 0
     b96:	0e 94 b6 03 	call	0x76c	; 0x76c <PWM_TIM1_init>
     b9a:	0e 94 f0 03 	call	0x7e0	; 0x7e0 <DEBUG_led_off>
     b9e:	78 94       	sei

00000ba0 <.L10>:
     ba0:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <flag_1seg>
     ba4:	81 11       	cpse	r24, r1
     ba6:	10 92 0c 01 	sts	0x010C, r1	; 0x80010c <flag_1seg>
     baa:	80 91 0e 01 	lds	r24, 0x010E	; 0x80010e <estado_actual>
     bae:	90 91 0f 01 	lds	r25, 0x010F	; 0x80010f <estado_actual+0x1>
     bb2:	01 97       	sbiw	r24, 0x01	; 1
     bb4:	10 f1       	brcs	.+68     	; 0xbfa <.L12>
     bb6:	a1 f7       	brne	.-24     	; 0xba0 <.L10>
     bb8:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <flag_20ms>
     bbc:	81 15       	cp	r24, r1
     bbe:	81 f3       	breq	.-32     	; 0xba0 <.L10>
     bc0:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <flag_20ms>
     bc4:	0e 94 61 04 	call	0x8c2	; 0x8c2 <get_error>
     bc8:	0e 94 f2 03 	call	0x7e4	; 0x7e4 <procesar_error>
     bcc:	ce 01       	movw	r24, r28
     bce:	01 96       	adiw	r24, 0x01	; 1
     bd0:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     bd4:	66 e0       	ldi	r22, 0x06	; 6
     bd6:	70 e0       	ldi	r23, 0x00	; 0
     bd8:	ce 01       	movw	r24, r28
     bda:	01 96       	adiw	r24, 0x01	; 1
     bdc:	0e 94 36 05 	call	0xa6c	; 0xa6c <procesar_boton_z>
     be0:	df cf       	rjmp	.-66     	; 0xba0 <.L10>

00000be2 <.L9>:
     be2:	2f ef       	ldi	r18, 0xFF	; 255
     be4:	80 e7       	ldi	r24, 0x70	; 112
     be6:	92 e0       	ldi	r25, 0x02	; 2

00000be8 <.L1^B1>:
     be8:	21 50       	subi	r18, 0x01	; 1
     bea:	80 40       	sbci	r24, 0x00	; 0
     bec:	90 40       	sbci	r25, 0x00	; 0
     bee:	e1 f7       	brne	.-8      	; 0xbe8 <.L1^B1>
     bf0:	00 c0       	rjmp	.+0      	; 0xbf2 <L0^A>

00000bf2 <L0^A>:
     bf2:	00 00       	nop
     bf4:	0e 94 e9 03 	call	0x7d2	; 0x7d2 <DEBUG_led_toggle>
     bf8:	c4 cf       	rjmp	.-120    	; 0xb82 <.L8>

00000bfa <.L12>:
     bfa:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <flag_20ms>
     bfe:	81 15       	cp	r24, r1
     c00:	79 f2       	breq	.-98     	; 0xba0 <.L10>
     c02:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <flag_20ms>
     c06:	ce 01       	movw	r24, r28
     c08:	01 96       	adiw	r24, 0x01	; 1
     c0a:	0e 94 4d 01 	call	0x29a	; 0x29a <NUN_get_raw>
     c0e:	66 e0       	ldi	r22, 0x06	; 6
     c10:	70 e0       	ldi	r23, 0x00	; 0
     c12:	ce 01       	movw	r24, r28
     c14:	01 96       	adiw	r24, 0x01	; 1
     c16:	0e 94 ae 04 	call	0x95c	; 0x95c <procesar_joystick>
     c1a:	c2 cf       	rjmp	.-124    	; 0xba0 <.L10>

00000c1c <__udivmodhi4>:
     c1c:	aa 1b       	sub	r26, r26

00000c1e <.Loc.1>:
     c1e:	bb 1b       	sub	r27, r27

00000c20 <.Loc.2>:
     c20:	51 e1       	ldi	r21, 0x11	; 17

00000c22 <.Loc.3>:
     c22:	07 c0       	rjmp	.+14     	; 0xc32 <__udivmodhi4_ep>

00000c24 <__udivmodhi4_loop>:
     c24:	aa 1f       	adc	r26, r26

00000c26 <.Loc.5>:
     c26:	bb 1f       	adc	r27, r27

00000c28 <.Loc.6>:
     c28:	a6 17       	cp	r26, r22

00000c2a <.Loc.7>:
     c2a:	b7 07       	cpc	r27, r23

00000c2c <.Loc.8>:
     c2c:	10 f0       	brcs	.+4      	; 0xc32 <__udivmodhi4_ep>

00000c2e <.Loc.9>:
     c2e:	a6 1b       	sub	r26, r22

00000c30 <.Loc.10>:
     c30:	b7 0b       	sbc	r27, r23

00000c32 <__udivmodhi4_ep>:
     c32:	88 1f       	adc	r24, r24

00000c34 <.Loc.12>:
     c34:	99 1f       	adc	r25, r25

00000c36 <.Loc.13>:
     c36:	5a 95       	dec	r21

00000c38 <.Loc.14>:
     c38:	a9 f7       	brne	.-22     	; 0xc24 <__udivmodhi4_loop>

00000c3a <.Loc.15>:
     c3a:	80 95       	com	r24

00000c3c <.Loc.16>:
     c3c:	90 95       	com	r25

00000c3e <.Loc.17>:
     c3e:	bc 01       	movw	r22, r24

00000c40 <.Loc.18>:
     c40:	cd 01       	movw	r24, r26

00000c42 <.Loc.19>:
     c42:	08 95       	ret

00000c44 <__subsf3>:
     c44:	50 58       	subi	r21, 0x80	; 128

00000c46 <__addsf3>:
     c46:	bb 27       	eor	r27, r27
     c48:	aa 27       	eor	r26, r26
     c4a:	0e 94 3a 06 	call	0xc74	; 0xc74 <__addsf3x>
     c4e:	0c 94 8b 07 	jmp	0xf16	; 0xf16 <__fp_round>

00000c52 <.L0^B1>:
     c52:	0e 94 7d 07 	call	0xefa	; 0xefa <__fp_pscA>
     c56:	38 f0       	brcs	.+14     	; 0xc66 <.L_nan>
     c58:	0e 94 84 07 	call	0xf08	; 0xf08 <__fp_pscB>
     c5c:	20 f0       	brcs	.+8      	; 0xc66 <.L_nan>
     c5e:	39 f4       	brne	.+14     	; 0xc6e <.L_inf>
     c60:	9f 3f       	cpi	r25, 0xFF	; 255
     c62:	19 f4       	brne	.+6      	; 0xc6a <.L_infB>
     c64:	26 f4       	brtc	.+8      	; 0xc6e <.L_inf>

00000c66 <.L_nan>:
     c66:	0c 94 7a 07 	jmp	0xef4	; 0xef4 <__fp_nan>

00000c6a <.L_infB>:
     c6a:	0e f4       	brtc	.+2      	; 0xc6e <.L_inf>
     c6c:	e0 95       	com	r30

00000c6e <.L_inf>:
     c6e:	e7 fb       	bst	r30, 7
     c70:	0c 94 74 07 	jmp	0xee8	; 0xee8 <__fp_inf>

00000c74 <__addsf3x>:
     c74:	e9 2f       	mov	r30, r25
     c76:	0e 94 9c 07 	call	0xf38	; 0xf38 <__fp_split3>
     c7a:	58 f3       	brcs	.-42     	; 0xc52 <.L0^B1>
     c7c:	ba 17       	cp	r27, r26
     c7e:	62 07       	cpc	r22, r18
     c80:	73 07       	cpc	r23, r19
     c82:	84 07       	cpc	r24, r20
     c84:	95 07       	cpc	r25, r21
     c86:	20 f0       	brcs	.+8      	; 0xc90 <.L2^B1>
     c88:	79 f4       	brne	.+30     	; 0xca8 <.L4^B1>
     c8a:	a6 f5       	brtc	.+104    	; 0xcf4 <.L_add>
     c8c:	0c 94 be 07 	jmp	0xf7c	; 0xf7c <__fp_zero>

00000c90 <.L2^B1>:
     c90:	0e f4       	brtc	.+2      	; 0xc94 <.L3^B1>
     c92:	e0 95       	com	r30

00000c94 <.L3^B1>:
     c94:	0b 2e       	mov	r0, r27
     c96:	ba 2f       	mov	r27, r26
     c98:	a0 2d       	mov	r26, r0
     c9a:	0b 01       	movw	r0, r22
     c9c:	b9 01       	movw	r22, r18
     c9e:	90 01       	movw	r18, r0
     ca0:	0c 01       	movw	r0, r24
     ca2:	ca 01       	movw	r24, r20
     ca4:	a0 01       	movw	r20, r0
     ca6:	11 24       	eor	r1, r1

00000ca8 <.L4^B1>:
     ca8:	ff 27       	eor	r31, r31
     caa:	59 1b       	sub	r21, r25

00000cac <.L5^B1>:
     cac:	99 f0       	breq	.+38     	; 0xcd4 <.L7^B1>
     cae:	59 3f       	cpi	r21, 0xF9	; 249
     cb0:	50 f4       	brcc	.+20     	; 0xcc6 <.L6^B1>
     cb2:	50 3e       	cpi	r21, 0xE0	; 224
     cb4:	68 f1       	brcs	.+90     	; 0xd10 <.L_ret>
     cb6:	1a 16       	cp	r1, r26
     cb8:	f0 40       	sbci	r31, 0x00	; 0
     cba:	a2 2f       	mov	r26, r18
     cbc:	23 2f       	mov	r18, r19
     cbe:	34 2f       	mov	r19, r20
     cc0:	44 27       	eor	r20, r20
     cc2:	58 5f       	subi	r21, 0xF8	; 248
     cc4:	f3 cf       	rjmp	.-26     	; 0xcac <.L5^B1>

00000cc6 <.L6^B1>:
     cc6:	46 95       	lsr	r20
     cc8:	37 95       	ror	r19
     cca:	27 95       	ror	r18
     ccc:	a7 95       	ror	r26
     cce:	f0 40       	sbci	r31, 0x00	; 0
     cd0:	53 95       	inc	r21
     cd2:	c9 f7       	brne	.-14     	; 0xcc6 <.L6^B1>

00000cd4 <.L7^B1>:
     cd4:	7e f4       	brtc	.+30     	; 0xcf4 <.L_add>
     cd6:	1f 16       	cp	r1, r31
     cd8:	ba 0b       	sbc	r27, r26
     cda:	62 0b       	sbc	r22, r18
     cdc:	73 0b       	sbc	r23, r19
     cde:	84 0b       	sbc	r24, r20
     ce0:	ba f0       	brmi	.+46     	; 0xd10 <.L_ret>

00000ce2 <.L8^B1>:
     ce2:	91 50       	subi	r25, 0x01	; 1
     ce4:	a1 f0       	breq	.+40     	; 0xd0e <.L9^B1>
     ce6:	ff 0f       	add	r31, r31
     ce8:	bb 1f       	adc	r27, r27
     cea:	66 1f       	adc	r22, r22
     cec:	77 1f       	adc	r23, r23
     cee:	88 1f       	adc	r24, r24
     cf0:	c2 f7       	brpl	.-16     	; 0xce2 <.L8^B1>
     cf2:	0e c0       	rjmp	.+28     	; 0xd10 <.L_ret>

00000cf4 <.L_add>:
     cf4:	ba 0f       	add	r27, r26
     cf6:	62 1f       	adc	r22, r18
     cf8:	73 1f       	adc	r23, r19
     cfa:	84 1f       	adc	r24, r20
     cfc:	48 f4       	brcc	.+18     	; 0xd10 <.L_ret>
     cfe:	87 95       	ror	r24
     d00:	77 95       	ror	r23
     d02:	67 95       	ror	r22
     d04:	b7 95       	ror	r27
     d06:	f7 95       	ror	r31
     d08:	9e 3f       	cpi	r25, 0xFE	; 254
     d0a:	08 f0       	brcs	.+2      	; 0xd0e <.L9^B1>
     d0c:	b0 cf       	rjmp	.-160    	; 0xc6e <.L_inf>

00000d0e <.L9^B1>:
     d0e:	93 95       	inc	r25

00000d10 <.L_ret>:
     d10:	88 0f       	add	r24, r24
     d12:	08 f0       	brcs	.+2      	; 0xd16 <.L1^B1>
     d14:	99 27       	eor	r25, r25

00000d16 <.L1^B1>:
     d16:	ee 0f       	add	r30, r30
     d18:	97 95       	ror	r25
     d1a:	87 95       	ror	r24
     d1c:	08 95       	ret

00000d1e <__divsf3>:
     d1e:	0e 94 a3 06 	call	0xd46	; 0xd46 <__divsf3x>
     d22:	0c 94 8b 07 	jmp	0xf16	; 0xf16 <__fp_round>

00000d26 <.L0^B1>:
     d26:	0e 94 84 07 	call	0xf08	; 0xf08 <__fp_pscB>
     d2a:	58 f0       	brcs	.+22     	; 0xd42 <.L_nan>
     d2c:	0e 94 7d 07 	call	0xefa	; 0xefa <__fp_pscA>
     d30:	40 f0       	brcs	.+16     	; 0xd42 <.L_nan>
     d32:	29 f4       	brne	.+10     	; 0xd3e <.L_zr>
     d34:	5f 3f       	cpi	r21, 0xFF	; 255
     d36:	29 f0       	breq	.+10     	; 0xd42 <.L_nan>

00000d38 <.L_inf>:
     d38:	0c 94 74 07 	jmp	0xee8	; 0xee8 <__fp_inf>

00000d3c <.L1^B1>:
     d3c:	51 11       	cpse	r21, r1

00000d3e <.L_zr>:
     d3e:	0c 94 bf 07 	jmp	0xf7e	; 0xf7e <__fp_szero>

00000d42 <.L_nan>:
     d42:	0c 94 7a 07 	jmp	0xef4	; 0xef4 <__fp_nan>

00000d46 <__divsf3x>:
     d46:	0e 94 9c 07 	call	0xf38	; 0xf38 <__fp_split3>
     d4a:	68 f3       	brcs	.-38     	; 0xd26 <.L0^B1>

00000d4c <__divsf3_pse>:
     d4c:	99 23       	and	r25, r25
     d4e:	b1 f3       	breq	.-20     	; 0xd3c <.L1^B1>
     d50:	55 23       	and	r21, r21
     d52:	91 f3       	breq	.-28     	; 0xd38 <.L_inf>
     d54:	95 1b       	sub	r25, r21
     d56:	55 0b       	sbc	r21, r21
     d58:	bb 27       	eor	r27, r27
     d5a:	aa 27       	eor	r26, r26

00000d5c <.L2^B1>:
     d5c:	62 17       	cp	r22, r18
     d5e:	73 07       	cpc	r23, r19
     d60:	84 07       	cpc	r24, r20
     d62:	38 f0       	brcs	.+14     	; 0xd72 <.L3^B1>
     d64:	9f 5f       	subi	r25, 0xFF	; 255
     d66:	5f 4f       	sbci	r21, 0xFF	; 255
     d68:	22 0f       	add	r18, r18
     d6a:	33 1f       	adc	r19, r19
     d6c:	44 1f       	adc	r20, r20
     d6e:	aa 1f       	adc	r26, r26
     d70:	a9 f3       	breq	.-22     	; 0xd5c <.L2^B1>

00000d72 <.L3^B1>:
     d72:	35 d0       	rcall	.+106    	; 0xdde <.L_div>
     d74:	0e 2e       	mov	r0, r30
     d76:	3a f0       	brmi	.+14     	; 0xd86 <.L5^B1>

00000d78 <.L4^B1>:
     d78:	e0 e8       	ldi	r30, 0x80	; 128
     d7a:	32 d0       	rcall	.+100    	; 0xde0 <.L_div1>
     d7c:	91 50       	subi	r25, 0x01	; 1
     d7e:	50 40       	sbci	r21, 0x00	; 0
     d80:	e6 95       	lsr	r30
     d82:	00 1c       	adc	r0, r0
     d84:	ca f7       	brpl	.-14     	; 0xd78 <.L4^B1>

00000d86 <.L5^B1>:
     d86:	2b d0       	rcall	.+86     	; 0xdde <.L_div>
     d88:	fe 2f       	mov	r31, r30
     d8a:	29 d0       	rcall	.+82     	; 0xdde <.L_div>
     d8c:	66 0f       	add	r22, r22
     d8e:	77 1f       	adc	r23, r23
     d90:	88 1f       	adc	r24, r24
     d92:	bb 1f       	adc	r27, r27
     d94:	26 17       	cp	r18, r22
     d96:	37 07       	cpc	r19, r23
     d98:	48 07       	cpc	r20, r24
     d9a:	ab 07       	cpc	r26, r27
     d9c:	b0 e8       	ldi	r27, 0x80	; 128
     d9e:	09 f0       	breq	.+2      	; 0xda2 <.L4^B2>
     da0:	bb 0b       	sbc	r27, r27

00000da2 <.L4^B2>:
     da2:	80 2d       	mov	r24, r0
     da4:	bf 01       	movw	r22, r30
     da6:	ff 27       	eor	r31, r31
     da8:	93 58       	subi	r25, 0x83	; 131
     daa:	5f 4f       	sbci	r21, 0xFF	; 255
     dac:	3a f0       	brmi	.+14     	; 0xdbc <.L13^B1>
     dae:	9e 3f       	cpi	r25, 0xFE	; 254
     db0:	51 05       	cpc	r21, r1
     db2:	78 f0       	brcs	.+30     	; 0xdd2 <.L15^B1>
     db4:	0c 94 74 07 	jmp	0xee8	; 0xee8 <__fp_inf>

00000db8 <.L12^B1>:
     db8:	0c 94 bf 07 	jmp	0xf7e	; 0xf7e <__fp_szero>

00000dbc <.L13^B1>:
     dbc:	5f 3f       	cpi	r21, 0xFF	; 255
     dbe:	e4 f3       	brlt	.-8      	; 0xdb8 <.L12^B1>
     dc0:	98 3e       	cpi	r25, 0xE8	; 232
     dc2:	d4 f3       	brlt	.-12     	; 0xdb8 <.L12^B1>

00000dc4 <.L14^B1>:
     dc4:	86 95       	lsr	r24
     dc6:	77 95       	ror	r23
     dc8:	67 95       	ror	r22
     dca:	b7 95       	ror	r27
     dcc:	f7 95       	ror	r31
     dce:	9f 5f       	subi	r25, 0xFF	; 255
     dd0:	c9 f7       	brne	.-14     	; 0xdc4 <.L14^B1>

00000dd2 <.L15^B1>:
     dd2:	88 0f       	add	r24, r24
     dd4:	91 1d       	adc	r25, r1
     dd6:	96 95       	lsr	r25
     dd8:	87 95       	ror	r24
     dda:	97 f9       	bld	r25, 7
     ddc:	08 95       	ret

00000dde <.L_div>:
     dde:	e1 e0       	ldi	r30, 0x01	; 1

00000de0 <.L_div1>:
     de0:	66 0f       	add	r22, r22
     de2:	77 1f       	adc	r23, r23
     de4:	88 1f       	adc	r24, r24
     de6:	bb 1f       	adc	r27, r27
     de8:	62 17       	cp	r22, r18
     dea:	73 07       	cpc	r23, r19
     dec:	84 07       	cpc	r24, r20
     dee:	ba 07       	cpc	r27, r26
     df0:	20 f0       	brcs	.+8      	; 0xdfa <.L2^B2>
     df2:	62 1b       	sub	r22, r18
     df4:	73 0b       	sbc	r23, r19
     df6:	84 0b       	sbc	r24, r20
     df8:	ba 0b       	sbc	r27, r26

00000dfa <.L2^B2>:
     dfa:	ee 1f       	adc	r30, r30
     dfc:	88 f7       	brcc	.-30     	; 0xde0 <.L_div1>
     dfe:	e0 95       	com	r30
     e00:	08 95       	ret

00000e02 <__fixsfsi>:
     e02:	0e 94 08 07 	call	0xe10	; 0xe10 <__fixunssfsi>
     e06:	68 94       	set
     e08:	b1 11       	cpse	r27, r1
     e0a:	0c 94 bf 07 	jmp	0xf7e	; 0xf7e <__fp_szero>
     e0e:	08 95       	ret

00000e10 <__fixunssfsi>:
     e10:	0e 94 a4 07 	call	0xf48	; 0xf48 <__fp_splitA>
     e14:	88 f0       	brcs	.+34     	; 0xe38 <.L_err>
     e16:	9f 57       	subi	r25, 0x7F	; 127
     e18:	98 f0       	brcs	.+38     	; 0xe40 <.L_zr>
     e1a:	b9 2f       	mov	r27, r25
     e1c:	99 27       	eor	r25, r25
     e1e:	b7 51       	subi	r27, 0x17	; 23
     e20:	b0 f0       	brcs	.+44     	; 0xe4e <.L4^B1>
     e22:	e1 f0       	breq	.+56     	; 0xe5c <.L_sign>

00000e24 <.L1^B1>:
     e24:	66 0f       	add	r22, r22
     e26:	77 1f       	adc	r23, r23
     e28:	88 1f       	adc	r24, r24
     e2a:	99 1f       	adc	r25, r25
     e2c:	1a f0       	brmi	.+6      	; 0xe34 <.L2^B1>
     e2e:	ba 95       	dec	r27
     e30:	c9 f7       	brne	.-14     	; 0xe24 <.L1^B1>
     e32:	14 c0       	rjmp	.+40     	; 0xe5c <.L_sign>

00000e34 <.L2^B1>:
     e34:	b1 30       	cpi	r27, 0x01	; 1
     e36:	91 f0       	breq	.+36     	; 0xe5c <.L_sign>

00000e38 <.L_err>:
     e38:	0e 94 be 07 	call	0xf7c	; 0xf7c <__fp_zero>
     e3c:	b1 e0       	ldi	r27, 0x01	; 1
     e3e:	08 95       	ret

00000e40 <.L_zr>:
     e40:	0c 94 be 07 	jmp	0xf7c	; 0xf7c <__fp_zero>

00000e44 <.L3^B1>:
     e44:	67 2f       	mov	r22, r23
     e46:	78 2f       	mov	r23, r24
     e48:	88 27       	eor	r24, r24
     e4a:	b8 5f       	subi	r27, 0xF8	; 248
     e4c:	39 f0       	breq	.+14     	; 0xe5c <.L_sign>

00000e4e <.L4^B1>:
     e4e:	b9 3f       	cpi	r27, 0xF9	; 249
     e50:	cc f3       	brlt	.-14     	; 0xe44 <.L3^B1>

00000e52 <.L5^B1>:
     e52:	86 95       	lsr	r24
     e54:	77 95       	ror	r23
     e56:	67 95       	ror	r22
     e58:	b3 95       	inc	r27
     e5a:	d9 f7       	brne	.-10     	; 0xe52 <.L5^B1>

00000e5c <.L_sign>:
     e5c:	3e f4       	brtc	.+14     	; 0xe6c <.L6^B1>
     e5e:	90 95       	com	r25
     e60:	80 95       	com	r24
     e62:	70 95       	com	r23
     e64:	61 95       	neg	r22
     e66:	7f 4f       	sbci	r23, 0xFF	; 255
     e68:	8f 4f       	sbci	r24, 0xFF	; 255
     e6a:	9f 4f       	sbci	r25, 0xFF	; 255

00000e6c <.L6^B1>:
     e6c:	08 95       	ret

00000e6e <__floatunsisf>:
     e6e:	e8 94       	clt
     e70:	09 c0       	rjmp	.+18     	; 0xe84 <.L1^B1>

00000e72 <__floatsisf>:
     e72:	97 fb       	bst	r25, 7
     e74:	3e f4       	brtc	.+14     	; 0xe84 <.L1^B1>
     e76:	90 95       	com	r25
     e78:	80 95       	com	r24
     e7a:	70 95       	com	r23
     e7c:	61 95       	neg	r22
     e7e:	7f 4f       	sbci	r23, 0xFF	; 255
     e80:	8f 4f       	sbci	r24, 0xFF	; 255
     e82:	9f 4f       	sbci	r25, 0xFF	; 255

00000e84 <.L1^B1>:
     e84:	99 23       	and	r25, r25
     e86:	a9 f0       	breq	.+42     	; 0xeb2 <.L4^B1>
     e88:	f9 2f       	mov	r31, r25
     e8a:	96 e9       	ldi	r25, 0x96	; 150
     e8c:	bb 27       	eor	r27, r27

00000e8e <.L2^B1>:
     e8e:	93 95       	inc	r25
     e90:	f6 95       	lsr	r31
     e92:	87 95       	ror	r24
     e94:	77 95       	ror	r23
     e96:	67 95       	ror	r22
     e98:	b7 95       	ror	r27
     e9a:	f1 11       	cpse	r31, r1
     e9c:	f8 cf       	rjmp	.-16     	; 0xe8e <.L2^B1>
     e9e:	fa f4       	brpl	.+62     	; 0xede <.L_pack>
     ea0:	bb 0f       	add	r27, r27
     ea2:	11 f4       	brne	.+4      	; 0xea8 <.L3^B1>
     ea4:	60 ff       	sbrs	r22, 0
     ea6:	1b c0       	rjmp	.+54     	; 0xede <.L_pack>

00000ea8 <.L3^B1>:
     ea8:	6f 5f       	subi	r22, 0xFF	; 255
     eaa:	7f 4f       	sbci	r23, 0xFF	; 255
     eac:	8f 4f       	sbci	r24, 0xFF	; 255
     eae:	9f 4f       	sbci	r25, 0xFF	; 255
     eb0:	16 c0       	rjmp	.+44     	; 0xede <.L_pack>

00000eb2 <.L4^B1>:
     eb2:	88 23       	and	r24, r24
     eb4:	11 f0       	breq	.+4      	; 0xeba <.L5^B1>
     eb6:	96 e9       	ldi	r25, 0x96	; 150
     eb8:	11 c0       	rjmp	.+34     	; 0xedc <.L8^B1>

00000eba <.L5^B1>:
     eba:	77 23       	and	r23, r23
     ebc:	21 f0       	breq	.+8      	; 0xec6 <.L6^B1>
     ebe:	9e e8       	ldi	r25, 0x8E	; 142
     ec0:	87 2f       	mov	r24, r23
     ec2:	76 2f       	mov	r23, r22
     ec4:	05 c0       	rjmp	.+10     	; 0xed0 <.L7^B1>

00000ec6 <.L6^B1>:
     ec6:	66 23       	and	r22, r22
     ec8:	71 f0       	breq	.+28     	; 0xee6 <.L9^B1>
     eca:	96 e8       	ldi	r25, 0x86	; 134
     ecc:	86 2f       	mov	r24, r22
     ece:	70 e0       	ldi	r23, 0x00	; 0

00000ed0 <.L7^B1>:
     ed0:	60 e0       	ldi	r22, 0x00	; 0
     ed2:	2a f0       	brmi	.+10     	; 0xede <.L_pack>

00000ed4 <.L10^B1>:
     ed4:	9a 95       	dec	r25
     ed6:	66 0f       	add	r22, r22
     ed8:	77 1f       	adc	r23, r23
     eda:	88 1f       	adc	r24, r24

00000edc <.L8^B1>:
     edc:	da f7       	brpl	.-10     	; 0xed4 <.L10^B1>

00000ede <.L_pack>:
     ede:	88 0f       	add	r24, r24
     ee0:	96 95       	lsr	r25
     ee2:	87 95       	ror	r24
     ee4:	97 f9       	bld	r25, 7

00000ee6 <.L9^B1>:
     ee6:	08 95       	ret

00000ee8 <__fp_inf>:
     ee8:	97 f9       	bld	r25, 7
     eea:	9f 67       	ori	r25, 0x7F	; 127
     eec:	80 e8       	ldi	r24, 0x80	; 128
     eee:	70 e0       	ldi	r23, 0x00	; 0
     ef0:	60 e0       	ldi	r22, 0x00	; 0
     ef2:	08 95       	ret

00000ef4 <__fp_nan>:
     ef4:	9f ef       	ldi	r25, 0xFF	; 255
     ef6:	80 ec       	ldi	r24, 0xC0	; 192
     ef8:	08 95       	ret

00000efa <__fp_pscA>:
     efa:	00 24       	eor	r0, r0
     efc:	0a 94       	dec	r0
     efe:	16 16       	cp	r1, r22
     f00:	17 06       	cpc	r1, r23
     f02:	18 06       	cpc	r1, r24
     f04:	09 06       	cpc	r0, r25
     f06:	08 95       	ret

00000f08 <__fp_pscB>:
     f08:	00 24       	eor	r0, r0
     f0a:	0a 94       	dec	r0
     f0c:	12 16       	cp	r1, r18
     f0e:	13 06       	cpc	r1, r19
     f10:	14 06       	cpc	r1, r20
     f12:	05 06       	cpc	r0, r21
     f14:	08 95       	ret

00000f16 <__fp_round>:
     f16:	09 2e       	mov	r0, r25
     f18:	03 94       	inc	r0
     f1a:	00 0c       	add	r0, r0
     f1c:	11 f4       	brne	.+4      	; 0xf22 <.L1^B1>
     f1e:	88 23       	and	r24, r24
     f20:	52 f0       	brmi	.+20     	; 0xf36 <.L3^B1>

00000f22 <.L1^B1>:
     f22:	bb 0f       	add	r27, r27
     f24:	40 f4       	brcc	.+16     	; 0xf36 <.L3^B1>
     f26:	bf 2b       	or	r27, r31
     f28:	11 f4       	brne	.+4      	; 0xf2e <.L2^B1>
     f2a:	60 ff       	sbrs	r22, 0
     f2c:	04 c0       	rjmp	.+8      	; 0xf36 <.L3^B1>

00000f2e <.L2^B1>:
     f2e:	6f 5f       	subi	r22, 0xFF	; 255
     f30:	7f 4f       	sbci	r23, 0xFF	; 255
     f32:	8f 4f       	sbci	r24, 0xFF	; 255
     f34:	9f 4f       	sbci	r25, 0xFF	; 255

00000f36 <.L3^B1>:
     f36:	08 95       	ret

00000f38 <__fp_split3>:
     f38:	57 fd       	sbrc	r21, 7
     f3a:	90 58       	subi	r25, 0x80	; 128
     f3c:	44 0f       	add	r20, r20
     f3e:	55 1f       	adc	r21, r21
     f40:	59 f0       	breq	.+22     	; 0xf58 <.L4^B1>
     f42:	5f 3f       	cpi	r21, 0xFF	; 255
     f44:	71 f0       	breq	.+28     	; 0xf62 <.L5^B1>

00000f46 <.L1^B1>:
     f46:	47 95       	ror	r20

00000f48 <__fp_splitA>:
     f48:	88 0f       	add	r24, r24
     f4a:	97 fb       	bst	r25, 7
     f4c:	99 1f       	adc	r25, r25
     f4e:	61 f0       	breq	.+24     	; 0xf68 <.L6^B1>
     f50:	9f 3f       	cpi	r25, 0xFF	; 255
     f52:	79 f0       	breq	.+30     	; 0xf72 <.L7^B1>

00000f54 <.L3^B1>:
     f54:	87 95       	ror	r24
     f56:	08 95       	ret

00000f58 <.L4^B1>:
     f58:	12 16       	cp	r1, r18
     f5a:	13 06       	cpc	r1, r19
     f5c:	14 06       	cpc	r1, r20
     f5e:	55 1f       	adc	r21, r21
     f60:	f2 cf       	rjmp	.-28     	; 0xf46 <.L1^B1>

00000f62 <.L5^B1>:
     f62:	46 95       	lsr	r20
     f64:	f1 df       	rcall	.-30     	; 0xf48 <__fp_splitA>
     f66:	08 c0       	rjmp	.+16     	; 0xf78 <.L8^B1>

00000f68 <.L6^B1>:
     f68:	16 16       	cp	r1, r22
     f6a:	17 06       	cpc	r1, r23
     f6c:	18 06       	cpc	r1, r24
     f6e:	99 1f       	adc	r25, r25
     f70:	f1 cf       	rjmp	.-30     	; 0xf54 <.L3^B1>

00000f72 <.L7^B1>:
     f72:	86 95       	lsr	r24
     f74:	71 05       	cpc	r23, r1
     f76:	61 05       	cpc	r22, r1

00000f78 <.L8^B1>:
     f78:	08 94       	sec
     f7a:	08 95       	ret

00000f7c <__fp_zero>:
     f7c:	e8 94       	clt

00000f7e <__fp_szero>:
     f7e:	bb 27       	eor	r27, r27
     f80:	66 27       	eor	r22, r22
     f82:	77 27       	eor	r23, r23
     f84:	cb 01       	movw	r24, r22
     f86:	97 f9       	bld	r25, 7
     f88:	08 95       	ret

00000f8a <__mulsf3>:
     f8a:	0e 94 d8 07 	call	0xfb0	; 0xfb0 <__mulsf3x>
     f8e:	0c 94 8b 07 	jmp	0xf16	; 0xf16 <__fp_round>

00000f92 <.L0^B1>:
     f92:	0e 94 7d 07 	call	0xefa	; 0xefa <__fp_pscA>
     f96:	38 f0       	brcs	.+14     	; 0xfa6 <.L1^B1>
     f98:	0e 94 84 07 	call	0xf08	; 0xf08 <__fp_pscB>
     f9c:	20 f0       	brcs	.+8      	; 0xfa6 <.L1^B1>
     f9e:	95 23       	and	r25, r21
     fa0:	11 f0       	breq	.+4      	; 0xfa6 <.L1^B1>
     fa2:	0c 94 74 07 	jmp	0xee8	; 0xee8 <__fp_inf>

00000fa6 <.L1^B1>:
     fa6:	0c 94 7a 07 	jmp	0xef4	; 0xef4 <__fp_nan>

00000faa <.L2^B1>:
     faa:	11 24       	eor	r1, r1
     fac:	0c 94 bf 07 	jmp	0xf7e	; 0xf7e <__fp_szero>

00000fb0 <__mulsf3x>:
     fb0:	0e 94 9c 07 	call	0xf38	; 0xf38 <__fp_split3>
     fb4:	70 f3       	brcs	.-36     	; 0xf92 <.L0^B1>

00000fb6 <__mulsf3_pse>:
     fb6:	95 9f       	mul	r25, r21
     fb8:	c1 f3       	breq	.-16     	; 0xfaa <.L2^B1>
     fba:	95 0f       	add	r25, r21
     fbc:	50 e0       	ldi	r21, 0x00	; 0
     fbe:	55 1f       	adc	r21, r21
     fc0:	62 9f       	mul	r22, r18
     fc2:	f0 01       	movw	r30, r0
     fc4:	72 9f       	mul	r23, r18
     fc6:	bb 27       	eor	r27, r27
     fc8:	f0 0d       	add	r31, r0
     fca:	b1 1d       	adc	r27, r1
     fcc:	63 9f       	mul	r22, r19
     fce:	aa 27       	eor	r26, r26
     fd0:	f0 0d       	add	r31, r0
     fd2:	b1 1d       	adc	r27, r1
     fd4:	aa 1f       	adc	r26, r26
     fd6:	64 9f       	mul	r22, r20
     fd8:	66 27       	eor	r22, r22
     fda:	b0 0d       	add	r27, r0
     fdc:	a1 1d       	adc	r26, r1
     fde:	66 1f       	adc	r22, r22
     fe0:	82 9f       	mul	r24, r18
     fe2:	22 27       	eor	r18, r18
     fe4:	b0 0d       	add	r27, r0
     fe6:	a1 1d       	adc	r26, r1
     fe8:	62 1f       	adc	r22, r18
     fea:	73 9f       	mul	r23, r19
     fec:	b0 0d       	add	r27, r0
     fee:	a1 1d       	adc	r26, r1
     ff0:	62 1f       	adc	r22, r18
     ff2:	83 9f       	mul	r24, r19
     ff4:	a0 0d       	add	r26, r0
     ff6:	61 1d       	adc	r22, r1
     ff8:	22 1f       	adc	r18, r18
     ffa:	74 9f       	mul	r23, r20
     ffc:	33 27       	eor	r19, r19
     ffe:	a0 0d       	add	r26, r0
    1000:	61 1d       	adc	r22, r1
    1002:	23 1f       	adc	r18, r19
    1004:	84 9f       	mul	r24, r20
    1006:	60 0d       	add	r22, r0
    1008:	21 1d       	adc	r18, r1
    100a:	82 2f       	mov	r24, r18
    100c:	76 2f       	mov	r23, r22
    100e:	6a 2f       	mov	r22, r26
    1010:	11 24       	eor	r1, r1
    1012:	9f 57       	subi	r25, 0x7F	; 127
    1014:	50 40       	sbci	r21, 0x00	; 0
    1016:	9a f0       	brmi	.+38     	; 0x103e <.L13^B1>
    1018:	f1 f0       	breq	.+60     	; 0x1056 <.L15^B1>

0000101a <.L10^B1>:
    101a:	88 23       	and	r24, r24
    101c:	4a f0       	brmi	.+18     	; 0x1030 <.L11^B1>
    101e:	ee 0f       	add	r30, r30
    1020:	ff 1f       	adc	r31, r31
    1022:	bb 1f       	adc	r27, r27
    1024:	66 1f       	adc	r22, r22
    1026:	77 1f       	adc	r23, r23
    1028:	88 1f       	adc	r24, r24
    102a:	91 50       	subi	r25, 0x01	; 1
    102c:	50 40       	sbci	r21, 0x00	; 0
    102e:	a9 f7       	brne	.-22     	; 0x101a <.L10^B1>

00001030 <.L11^B1>:
    1030:	9e 3f       	cpi	r25, 0xFE	; 254
    1032:	51 05       	cpc	r21, r1
    1034:	80 f0       	brcs	.+32     	; 0x1056 <.L15^B1>
    1036:	0c 94 74 07 	jmp	0xee8	; 0xee8 <__fp_inf>

0000103a <.L12^B1>:
    103a:	0c 94 bf 07 	jmp	0xf7e	; 0xf7e <__fp_szero>

0000103e <.L13^B1>:
    103e:	5f 3f       	cpi	r21, 0xFF	; 255
    1040:	e4 f3       	brlt	.-8      	; 0x103a <.L12^B1>
    1042:	98 3e       	cpi	r25, 0xE8	; 232
    1044:	d4 f3       	brlt	.-12     	; 0x103a <.L12^B1>

00001046 <.L14^B1>:
    1046:	86 95       	lsr	r24
    1048:	77 95       	ror	r23
    104a:	67 95       	ror	r22
    104c:	b7 95       	ror	r27
    104e:	f7 95       	ror	r31
    1050:	e7 95       	ror	r30
    1052:	9f 5f       	subi	r25, 0xFF	; 255
    1054:	c1 f7       	brne	.-16     	; 0x1046 <.L14^B1>

00001056 <.L15^B1>:
    1056:	fe 2b       	or	r31, r30
    1058:	88 0f       	add	r24, r24
    105a:	91 1d       	adc	r25, r1
    105c:	96 95       	lsr	r25
    105e:	87 95       	ror	r24
    1060:	97 f9       	bld	r25, 7
    1062:	08 95       	ret

00001064 <atoi>:
    1064:	fc 01       	movw	r30, r24
    1066:	88 27       	eor	r24, r24
    1068:	99 27       	eor	r25, r25
    106a:	e8 94       	clt

0000106c <.L_atoi_loop>:
    106c:	21 91       	ld	r18, Z+
    106e:	20 32       	cpi	r18, 0x20	; 32
    1070:	e9 f3       	breq	.-6      	; 0x106c <.L_atoi_loop>
    1072:	29 30       	cpi	r18, 0x09	; 9
    1074:	10 f0       	brcs	.+4      	; 0x107a <.L1^B1>
    1076:	2e 30       	cpi	r18, 0x0E	; 14
    1078:	c8 f3       	brcs	.-14     	; 0x106c <.L_atoi_loop>

0000107a <.L1^B1>:
    107a:	2b 32       	cpi	r18, 0x2B	; 43
    107c:	41 f0       	breq	.+16     	; 0x108e <.L_atoi_loop2>
    107e:	2d 32       	cpi	r18, 0x2D	; 45
    1080:	39 f4       	brne	.+14     	; 0x1090 <.L_atoi_digit>
    1082:	68 94       	set
    1084:	04 c0       	rjmp	.+8      	; 0x108e <.L_atoi_loop2>

00001086 <.L2^B1>:
    1086:	0e 94 50 08 	call	0x10a0	; 0x10a0 <__mulhi_const_10>
    108a:	82 0f       	add	r24, r18
    108c:	91 1d       	adc	r25, r1

0000108e <.L_atoi_loop2>:
    108e:	21 91       	ld	r18, Z+

00001090 <.L_atoi_digit>:
    1090:	20 53       	subi	r18, 0x30	; 48
    1092:	2a 30       	cpi	r18, 0x0A	; 10
    1094:	c0 f3       	brcs	.-16     	; 0x1086 <.L2^B1>
    1096:	1e f4       	brtc	.+6      	; 0x109e <.L_atoi_done>
    1098:	90 95       	com	r25
    109a:	81 95       	neg	r24
    109c:	9f 4f       	sbci	r25, 0xFF	; 255

0000109e <.L_atoi_done>:
    109e:	08 95       	ret

000010a0 <__mulhi_const_10>:
    10a0:	7a e0       	ldi	r23, 0x0A	; 10
    10a2:	97 9f       	mul	r25, r23
    10a4:	90 2d       	mov	r25, r0
    10a6:	87 9f       	mul	r24, r23
    10a8:	80 2d       	mov	r24, r0
    10aa:	91 0d       	add	r25, r1
    10ac:	11 24       	eor	r1, r1
    10ae:	08 95       	ret

000010b0 <sprintf>:
    10b0:	ae e0       	ldi	r26, 0x0E	; 14
    10b2:	b0 e0       	ldi	r27, 0x00	; 0
    10b4:	ee e5       	ldi	r30, 0x5E	; 94
    10b6:	f8 e0       	ldi	r31, 0x08	; 8
    10b8:	0c 94 29 0b 	jmp	0x1652	; 0x1652 <.Loc.16>

000010bc <.L1^B1>:
    10bc:	86 e0       	ldi	r24, 0x06	; 6
    10be:	8c 83       	std	Y+4, r24	; 0x04
    10c0:	2b 89       	ldd	r18, Y+19	; 0x13
    10c2:	3c 89       	ldd	r19, Y+20	; 0x14
    10c4:	29 83       	std	Y+1, r18	; 0x01
    10c6:	3a 83       	std	Y+2, r19	; 0x02
    10c8:	8f ef       	ldi	r24, 0xFF	; 255
    10ca:	9f e7       	ldi	r25, 0x7F	; 127
    10cc:	8d 83       	std	Y+5, r24	; 0x05
    10ce:	9e 83       	std	Y+6, r25	; 0x06
    10d0:	ae 01       	movw	r20, r28
    10d2:	49 5e       	subi	r20, 0xE9	; 233
    10d4:	5f 4f       	sbci	r21, 0xFF	; 255
    10d6:	6d 89       	ldd	r22, Y+21	; 0x15
    10d8:	7e 89       	ldd	r23, Y+22	; 0x16
    10da:	ce 01       	movw	r24, r28
    10dc:	01 96       	adiw	r24, 0x01	; 1
    10de:	0e 94 7c 08 	call	0x10f8	; 0x10f8 <vfprintf>
    10e2:	ef 81       	ldd	r30, Y+7	; 0x07
    10e4:	f8 85       	ldd	r31, Y+8	; 0x08
    10e6:	2b 89       	ldd	r18, Y+19	; 0x13
    10e8:	3c 89       	ldd	r19, Y+20	; 0x14
    10ea:	e2 0f       	add	r30, r18
    10ec:	f3 1f       	adc	r31, r19
    10ee:	10 82       	st	Z, r1
    10f0:	2e 96       	adiw	r28, 0x0e	; 14
    10f2:	e2 e0       	ldi	r30, 0x02	; 2
    10f4:	0c 94 45 0b 	jmp	0x168a	; 0x168a <.Loc.16>

000010f8 <vfprintf>:
    10f8:	ab e0       	ldi	r26, 0x0B	; 11
    10fa:	b0 e0       	ldi	r27, 0x00	; 0
    10fc:	e2 e8       	ldi	r30, 0x82	; 130
    10fe:	f8 e0       	ldi	r31, 0x08	; 8
    1100:	0c 94 1c 0b 	jmp	0x1638	; 0x1638 <.Loc.3>

00001104 <.L1^B1>:
    1104:	6c 01       	movw	r12, r24
    1106:	7b 01       	movw	r14, r22
    1108:	8a 01       	movw	r16, r20
    110a:	fc 01       	movw	r30, r24
    110c:	16 82       	std	Z+6, r1	; 0x06
    110e:	17 82       	std	Z+7, r1	; 0x07
    1110:	83 81       	ldd	r24, Z+3	; 0x03
    1112:	81 ff       	sbrs	r24, 1
    1114:	df c1       	rjmp	.+958    	; 0x14d4 <.L80>
    1116:	3a e0       	ldi	r19, 0x0A	; 10
    1118:	53 2e       	mov	r5, r19

0000111a <.L3>:
    111a:	f6 01       	movw	r30, r12
    111c:	23 81       	ldd	r18, Z+3	; 0x03
    111e:	f7 01       	movw	r30, r14
    1120:	23 fd       	sbrc	r18, 3
    1122:	85 91       	lpm	r24, Z+
    1124:	23 ff       	sbrs	r18, 3
    1126:	81 91       	ld	r24, Z+
    1128:	7f 01       	movw	r14, r30
    112a:	81 15       	cp	r24, r1
    112c:	09 f4       	brne	.+2      	; 0x1130 <L0^A+0x2>

0000112e <L0^A>:
    112e:	37 c1       	rjmp	.+622    	; 0x139e <.L4>
    1130:	85 32       	cpi	r24, 0x25	; 37
    1132:	39 f4       	brne	.+14     	; 0x1142 <.L5>
    1134:	23 fd       	sbrc	r18, 3
    1136:	95 91       	lpm	r25, Z+
    1138:	23 ff       	sbrs	r18, 3
    113a:	91 91       	ld	r25, Z+
    113c:	7f 01       	movw	r14, r30
    113e:	95 32       	cpi	r25, 0x25	; 37
    1140:	29 f4       	brne	.+10     	; 0x114c <.L81>

00001142 <.L5>:
    1142:	b6 01       	movw	r22, r12
    1144:	90 e0       	ldi	r25, 0x00	; 0
    1146:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    114a:	e7 cf       	rjmp	.-50     	; 0x111a <.L3>

0000114c <.L81>:
    114c:	30 e0       	ldi	r19, 0x00	; 0
    114e:	91 2c       	mov	r9, r1
    1150:	61 2c       	mov	r6, r1
    1152:	71 2c       	mov	r7, r1

00001154 <.L6>:
    1154:	f0 e2       	ldi	r31, 0x20	; 32
    1156:	7f 16       	cp	r7, r31
    1158:	40 f5       	brcc	.+80     	; 0x11aa <.L8>
    115a:	9b 32       	cpi	r25, 0x2B	; 43
    115c:	d9 f0       	breq	.+54     	; 0x1194 <.L9>
    115e:	58 f4       	brcc	.+22     	; 0x1176 <.L10>
    1160:	90 32       	cpi	r25, 0x20	; 32
    1162:	d1 f0       	breq	.+52     	; 0x1198 <.L11>
    1164:	93 32       	cpi	r25, 0x23	; 35
    1166:	f1 f0       	breq	.+60     	; 0x11a4 <.L12>

00001168 <.L13>:
    1168:	9e 32       	cpi	r25, 0x2E	; 46
    116a:	91 f5       	brne	.+100    	; 0x11d0 <.L19>
    116c:	76 fc       	sbrc	r7, 6
    116e:	17 c1       	rjmp	.+558    	; 0x139e <.L4>
    1170:	68 94       	set
    1172:	76 f8       	bld	r7, 6
    1174:	06 c0       	rjmp	.+12     	; 0x1182 <.L16>

00001176 <.L10>:
    1176:	9d 32       	cpi	r25, 0x2D	; 45
    1178:	91 f0       	breq	.+36     	; 0x119e <.L14>
    117a:	90 33       	cpi	r25, 0x30	; 48
    117c:	c1 f4       	brne	.+48     	; 0x11ae <.L15>
    117e:	68 94       	set
    1180:	70 f8       	bld	r7, 0

00001182 <.L16>:
    1182:	f7 01       	movw	r30, r14
    1184:	23 fd       	sbrc	r18, 3
    1186:	95 91       	lpm	r25, Z+
    1188:	23 ff       	sbrs	r18, 3
    118a:	91 91       	ld	r25, Z+
    118c:	7f 01       	movw	r14, r30
    118e:	91 11       	cpse	r25, r1
    1190:	e1 cf       	rjmp	.-62     	; 0x1154 <.L6>
    1192:	28 c0       	rjmp	.+80     	; 0x11e4 <.L17>

00001194 <.L9>:
    1194:	68 94       	set
    1196:	71 f8       	bld	r7, 1

00001198 <.L11>:
    1198:	68 94       	set
    119a:	72 f8       	bld	r7, 2
    119c:	f2 cf       	rjmp	.-28     	; 0x1182 <.L16>

0000119e <.L14>:
    119e:	68 94       	set
    11a0:	73 f8       	bld	r7, 3
    11a2:	ef cf       	rjmp	.-34     	; 0x1182 <.L16>

000011a4 <.L12>:
    11a4:	68 94       	set
    11a6:	74 f8       	bld	r7, 4
    11a8:	ec cf       	rjmp	.-40     	; 0x1182 <.L16>

000011aa <.L8>:
    11aa:	77 fc       	sbrc	r7, 7
    11ac:	1b c0       	rjmp	.+54     	; 0x11e4 <.L17>

000011ae <.L15>:
    11ae:	80 ed       	ldi	r24, 0xD0	; 208
    11b0:	89 0f       	add	r24, r25
    11b2:	8a 30       	cpi	r24, 0x0A	; 10
    11b4:	c8 f6       	brcc	.-78     	; 0x1168 <.L13>
    11b6:	76 fe       	sbrs	r7, 6
    11b8:	05 c0       	rjmp	.+10     	; 0x11c4 <.L18>
    11ba:	95 9c       	mul	r9, r5
    11bc:	80 0d       	add	r24, r0
    11be:	11 24       	eor	r1, r1
    11c0:	98 2e       	mov	r9, r24
    11c2:	df cf       	rjmp	.-66     	; 0x1182 <.L16>

000011c4 <.L18>:
    11c4:	65 9c       	mul	r6, r5
    11c6:	80 0d       	add	r24, r0
    11c8:	11 24       	eor	r1, r1
    11ca:	68 2e       	mov	r6, r24
    11cc:	7f 2a       	or	r7, r31
    11ce:	d9 cf       	rjmp	.-78     	; 0x1182 <.L16>

000011d0 <.L19>:
    11d0:	9c 36       	cpi	r25, 0x6C	; 108
    11d2:	19 f4       	brne	.+6      	; 0x11da <.L20>
    11d4:	68 94       	set
    11d6:	77 f8       	bld	r7, 7
    11d8:	d4 cf       	rjmp	.-88     	; 0x1182 <.L16>

000011da <.L20>:
    11da:	9c 34       	cpi	r25, 0x4C	; 76
    11dc:	09 f4       	brne	.+2      	; 0x11e0 <L0^A+0x2>

000011de <L0^A>:
    11de:	45 c0       	rjmp	.+138    	; 0x126a <.L82>
    11e0:	98 36       	cpi	r25, 0x68	; 104
    11e2:	79 f2       	breq	.-98     	; 0x1182 <.L16>

000011e4 <.L17>:
    11e4:	89 2f       	mov	r24, r25
    11e6:	8f 7d       	andi	r24, 0xDF	; 223
    11e8:	85 54       	subi	r24, 0x45	; 69
    11ea:	83 30       	cpi	r24, 0x03	; 3
    11ec:	08 f4       	brcc	.+2      	; 0x11f0 <L0^A+0x2>

000011ee <L0^A>:
    11ee:	3f c0       	rjmp	.+126    	; 0x126e <.L21>
    11f0:	93 36       	cpi	r25, 0x63	; 99
    11f2:	09 f4       	brne	.+2      	; 0x11f6 <L0^A+0x2>

000011f4 <L0^A>:
    11f4:	61 c0       	rjmp	.+194    	; 0x12b8 <.L22>
    11f6:	93 37       	cpi	r25, 0x73	; 115
    11f8:	09 f4       	brne	.+2      	; 0x11fc <L0^A+0x2>

000011fa <L0^A>:
    11fa:	6b c0       	rjmp	.+214    	; 0x12d2 <.L23>
    11fc:	93 35       	cpi	r25, 0x53	; 83
    11fe:	09 f4       	brne	.+2      	; 0x1202 <L0^A+0x2>

00001200 <L0^A>:
    1200:	77 c0       	rjmp	.+238    	; 0x12f0 <.L24>
    1202:	94 36       	cpi	r25, 0x64	; 100
    1204:	19 f0       	breq	.+6      	; 0x120c <.L39>
    1206:	99 36       	cpi	r25, 0x69	; 105
    1208:	09 f0       	breq	.+2      	; 0x120c <.L39>

0000120a <L0^A>:
    120a:	a4 c0       	rjmp	.+328    	; 0x1354 <.L40>

0000120c <.L39>:
    120c:	f8 01       	movw	r30, r16
    120e:	77 fe       	sbrs	r7, 7
    1210:	9a c0       	rjmp	.+308    	; 0x1346 <.L41>
    1212:	61 91       	ld	r22, Z+
    1214:	71 91       	ld	r23, Z+
    1216:	81 91       	ld	r24, Z+
    1218:	91 91       	ld	r25, Z+

0000121a <.L126>:
    121a:	8f 01       	movw	r16, r30
    121c:	27 2d       	mov	r18, r7
    121e:	2f 76       	andi	r18, 0x6F	; 111
    1220:	82 2e       	mov	r8, r18
    1222:	97 ff       	sbrs	r25, 7
    1224:	04 c0       	rjmp	.+8      	; 0x122e <.L43>
    1226:	0e 94 11 0b 	call	0x1622	; 0x1622 <__negsi2>
    122a:	68 94       	set
    122c:	87 f8       	bld	r8, 7

0000122e <.L43>:
    122e:	2a e0       	ldi	r18, 0x0A	; 10
    1230:	30 e0       	ldi	r19, 0x00	; 0
    1232:	5e 01       	movw	r10, r28
    1234:	4f ef       	ldi	r20, 0xFF	; 255
    1236:	a4 1a       	sub	r10, r20
    1238:	b4 0a       	sbc	r11, r20
    123a:	a5 01       	movw	r20, r10
    123c:	0e 94 b3 0a 	call	0x1566	; 0x1566 <__ultoa_invert>
    1240:	78 2e       	mov	r7, r24
    1242:	7a 18       	sub	r7, r10

00001244 <.L44>:
    1244:	86 fe       	sbrs	r8, 6
    1246:	cf c0       	rjmp	.+414    	; 0x13e6 <.L54>
    1248:	88 2d       	mov	r24, r8
    124a:	8e 7f       	andi	r24, 0xFE	; 254
    124c:	79 14       	cp	r7, r9
    124e:	08 f0       	brcs	.+2      	; 0x1252 <L0^A+0x2>

00001250 <L0^A>:
    1250:	c9 c0       	rjmp	.+402    	; 0x13e4 <.L88>
    1252:	84 fe       	sbrs	r8, 4
    1254:	1d c1       	rjmp	.+570    	; 0x1490 <.L89>
    1256:	82 fc       	sbrc	r8, 2
    1258:	11 c1       	rjmp	.+546    	; 0x147c <.L90>
    125a:	2e ee       	ldi	r18, 0xEE	; 238
    125c:	82 22       	and	r8, r18
    125e:	b9 2c       	mov	r11, r9

00001260 <.L55>:
    1260:	88 2d       	mov	r24, r8
    1262:	86 78       	andi	r24, 0x86	; 134
    1264:	09 f4       	brne	.+2      	; 0x1268 <L0^A+0x2>

00001266 <L0^A>:
    1266:	cb c0       	rjmp	.+406    	; 0x13fe <.L58>
    1268:	0e c1       	rjmp	.+540    	; 0x1486 <.L128>

0000126a <.L82>:
    126a:	31 e0       	ldi	r19, 0x01	; 1
    126c:	8a cf       	rjmp	.-236    	; 0x1182 <.L16>

0000126e <.L21>:
    126e:	31 15       	cp	r19, r1
    1270:	01 f1       	breq	.+64     	; 0x12b2 <.L26>
    1272:	08 5f       	subi	r16, 0xF8	; 248
    1274:	1f 4f       	sbci	r17, 0xFF	; 255

00001276 <.L27>:
    1276:	8f e3       	ldi	r24, 0x3F	; 63
    1278:	89 83       	std	Y+1, r24	; 0x01
    127a:	21 e0       	ldi	r18, 0x01	; 1
    127c:	82 2e       	mov	r8, r18
    127e:	91 2c       	mov	r9, r1
    1280:	5e 01       	movw	r10, r28
    1282:	2f ef       	ldi	r18, 0xFF	; 255
    1284:	a2 1a       	sub	r10, r18
    1286:	b2 0a       	sbc	r11, r18

00001288 <.L28>:
    1288:	e8 94       	clt
    128a:	77 f8       	bld	r7, 7

0000128c <.L30>:
    128c:	73 fc       	sbrc	r7, 3
    128e:	03 c0       	rjmp	.+6      	; 0x1296 <.L36>

00001290 <.L32>:
    1290:	86 14       	cp	r8, r6
    1292:	91 04       	cpc	r9, r1
    1294:	f0 f1       	brcs	.+124    	; 0x1312 <.L34>

00001296 <.L36>:
    1296:	81 14       	cp	r8, r1
    1298:	91 04       	cpc	r9, r1
    129a:	09 f0       	breq	.+2      	; 0x129e <.L77>

0000129c <L0^A>:
    129c:	41 c0       	rjmp	.+130    	; 0x1320 <.L37>

0000129e <.L77>:
    129e:	61 14       	cp	r6, r1
    12a0:	09 f4       	brne	.+2      	; 0x12a4 <L0^A+0x2>

000012a2 <L0^A>:
    12a2:	3b cf       	rjmp	.-394    	; 0x111a <.L3>
    12a4:	b6 01       	movw	r22, r12
    12a6:	80 e2       	ldi	r24, 0x20	; 32
    12a8:	90 e0       	ldi	r25, 0x00	; 0
    12aa:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    12ae:	6a 94       	dec	r6
    12b0:	f6 cf       	rjmp	.-20     	; 0x129e <.L77>

000012b2 <.L26>:
    12b2:	0c 5f       	subi	r16, 0xFC	; 252
    12b4:	1f 4f       	sbci	r17, 0xFF	; 255
    12b6:	df cf       	rjmp	.-66     	; 0x1276 <.L27>

000012b8 <.L22>:
    12b8:	f8 01       	movw	r30, r16
    12ba:	80 81       	ld	r24, Z
    12bc:	89 83       	std	Y+1, r24	; 0x01
    12be:	0e 5f       	subi	r16, 0xFE	; 254
    12c0:	1f 4f       	sbci	r17, 0xFF	; 255
    12c2:	91 e0       	ldi	r25, 0x01	; 1
    12c4:	89 2e       	mov	r8, r25
    12c6:	91 2c       	mov	r9, r1
    12c8:	5e 01       	movw	r10, r28
    12ca:	ff ef       	ldi	r31, 0xFF	; 255
    12cc:	af 1a       	sub	r10, r31
    12ce:	bf 0a       	sbc	r11, r31
    12d0:	db cf       	rjmp	.-74     	; 0x1288 <.L28>

000012d2 <.L23>:
    12d2:	f8 01       	movw	r30, r16
    12d4:	a1 90       	ld	r10, Z+
    12d6:	b1 90       	ld	r11, Z+
    12d8:	8f 01       	movw	r16, r30
    12da:	69 2d       	mov	r22, r9
    12dc:	70 e0       	ldi	r23, 0x00	; 0
    12de:	76 fc       	sbrc	r7, 6
    12e0:	02 c0       	rjmp	.+4      	; 0x12e6 <.L29>
    12e2:	6f ef       	ldi	r22, 0xFF	; 255
    12e4:	7f ef       	ldi	r23, 0xFF	; 255

000012e6 <.L29>:
    12e6:	c5 01       	movw	r24, r10
    12e8:	0e 94 78 0a 	call	0x14f0	; 0x14f0 <strnlen>
    12ec:	4c 01       	movw	r8, r24
    12ee:	cc cf       	rjmp	.-104    	; 0x1288 <.L28>

000012f0 <.L24>:
    12f0:	f8 01       	movw	r30, r16
    12f2:	a1 90       	ld	r10, Z+
    12f4:	b1 90       	ld	r11, Z+
    12f6:	8f 01       	movw	r16, r30
    12f8:	69 2d       	mov	r22, r9
    12fa:	70 e0       	ldi	r23, 0x00	; 0
    12fc:	76 fc       	sbrc	r7, 6
    12fe:	02 c0       	rjmp	.+4      	; 0x1304 <.L31>
    1300:	6f ef       	ldi	r22, 0xFF	; 255
    1302:	7f ef       	ldi	r23, 0xFF	; 255

00001304 <.L31>:
    1304:	c5 01       	movw	r24, r10
    1306:	0e 94 6d 0a 	call	0x14da	; 0x14da <strnlen_P>
    130a:	4c 01       	movw	r8, r24
    130c:	68 94       	set
    130e:	77 f8       	bld	r7, 7
    1310:	bd cf       	rjmp	.-134    	; 0x128c <.L30>

00001312 <.L34>:
    1312:	b6 01       	movw	r22, r12
    1314:	80 e2       	ldi	r24, 0x20	; 32
    1316:	90 e0       	ldi	r25, 0x00	; 0
    1318:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    131c:	6a 94       	dec	r6
    131e:	b8 cf       	rjmp	.-144    	; 0x1290 <.L32>

00001320 <.L37>:
    1320:	f5 01       	movw	r30, r10
    1322:	77 fc       	sbrc	r7, 7
    1324:	85 91       	lpm	r24, Z+
    1326:	77 fe       	sbrs	r7, 7
    1328:	81 91       	ld	r24, Z+
    132a:	5f 01       	movw	r10, r30
    132c:	b6 01       	movw	r22, r12
    132e:	90 e0       	ldi	r25, 0x00	; 0
    1330:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    1334:	81 e0       	ldi	r24, 0x01	; 1
    1336:	61 10       	cpse	r6, r1
    1338:	01 c0       	rjmp	.+2      	; 0x133c <.L35>
    133a:	80 e0       	ldi	r24, 0x00	; 0

0000133c <.L35>:
    133c:	68 1a       	sub	r6, r24
    133e:	f1 e0       	ldi	r31, 0x01	; 1
    1340:	8f 1a       	sub	r8, r31
    1342:	91 08       	sbc	r9, r1
    1344:	a8 cf       	rjmp	.-176    	; 0x1296 <.L36>

00001346 <.L41>:
    1346:	61 91       	ld	r22, Z+
    1348:	71 91       	ld	r23, Z+
    134a:	87 2f       	mov	r24, r23
    134c:	88 0f       	add	r24, r24
    134e:	88 0b       	sbc	r24, r24
    1350:	98 2f       	mov	r25, r24
    1352:	63 cf       	rjmp	.-314    	; 0x121a <.L126>

00001354 <.L40>:
    1354:	95 37       	cpi	r25, 0x75	; 117
    1356:	c9 f4       	brne	.+50     	; 0x138a <.L45>
    1358:	87 2c       	mov	r8, r7
    135a:	e8 94       	clt
    135c:	84 f8       	bld	r8, 4
    135e:	2a e0       	ldi	r18, 0x0A	; 10
    1360:	30 e0       	ldi	r19, 0x00	; 0

00001362 <.L46>:
    1362:	f8 01       	movw	r30, r16
    1364:	87 fe       	sbrs	r8, 7
    1366:	39 c0       	rjmp	.+114    	; 0x13da <.L52>
    1368:	61 91       	ld	r22, Z+
    136a:	71 91       	ld	r23, Z+
    136c:	81 91       	ld	r24, Z+
    136e:	91 91       	ld	r25, Z+

00001370 <.L127>:
    1370:	8f 01       	movw	r16, r30
    1372:	5e 01       	movw	r10, r28
    1374:	ff ef       	ldi	r31, 0xFF	; 255
    1376:	af 1a       	sub	r10, r31
    1378:	bf 0a       	sbc	r11, r31
    137a:	a5 01       	movw	r20, r10
    137c:	0e 94 b3 0a 	call	0x1566	; 0x1566 <__ultoa_invert>
    1380:	78 2e       	mov	r7, r24
    1382:	7a 18       	sub	r7, r10
    1384:	e8 94       	clt
    1386:	87 f8       	bld	r8, 7
    1388:	5d cf       	rjmp	.-326    	; 0x1244 <.L44>

0000138a <.L45>:
    138a:	87 2d       	mov	r24, r7
    138c:	89 7f       	andi	r24, 0xF9	; 249
    138e:	88 2e       	mov	r8, r24
    1390:	90 37       	cpi	r25, 0x70	; 112
    1392:	99 f0       	breq	.+38     	; 0x13ba <.L47>
    1394:	58 f4       	brcc	.+22     	; 0x13ac <.L48>
    1396:	98 35       	cpi	r25, 0x58	; 88
    1398:	a9 f0       	breq	.+42     	; 0x13c4 <.L49>
    139a:	9f 36       	cpi	r25, 0x6F	; 111
    139c:	d9 f0       	breq	.+54     	; 0x13d4 <.L85>

0000139e <.L4>:
    139e:	f6 01       	movw	r30, r12
    13a0:	86 81       	ldd	r24, Z+6	; 0x06
    13a2:	97 81       	ldd	r25, Z+7	; 0x07

000013a4 <.L1>:
    13a4:	2b 96       	adiw	r28, 0x0b	; 11
    13a6:	ef e0       	ldi	r30, 0x0F	; 15
    13a8:	0c 94 38 0b 	jmp	0x1670	; 0x1670 <.Loc.3>

000013ac <.L48>:
    13ac:	98 37       	cpi	r25, 0x78	; 120
    13ae:	b9 f7       	brne	.-18     	; 0x139e <.L4>
    13b0:	74 fc       	sbrc	r7, 4
    13b2:	05 c0       	rjmp	.+10     	; 0x13be <.L51>

000013b4 <.L86>:
    13b4:	20 e1       	ldi	r18, 0x10	; 16
    13b6:	30 e0       	ldi	r19, 0x00	; 0
    13b8:	d4 cf       	rjmp	.-88     	; 0x1362 <.L46>

000013ba <.L47>:
    13ba:	68 94       	set
    13bc:	84 f8       	bld	r8, 4

000013be <.L51>:
    13be:	68 94       	set
    13c0:	82 f8       	bld	r8, 2
    13c2:	f8 cf       	rjmp	.-16     	; 0x13b4 <.L86>

000013c4 <.L49>:
    13c4:	74 fe       	sbrs	r7, 4
    13c6:	03 c0       	rjmp	.+6      	; 0x13ce <.L87>
    13c8:	e7 2d       	mov	r30, r7
    13ca:	e6 60       	ori	r30, 0x06	; 6
    13cc:	8e 2e       	mov	r8, r30

000013ce <.L87>:
    13ce:	20 e1       	ldi	r18, 0x10	; 16
    13d0:	32 e0       	ldi	r19, 0x02	; 2
    13d2:	c7 cf       	rjmp	.-114    	; 0x1362 <.L46>

000013d4 <.L85>:
    13d4:	28 e0       	ldi	r18, 0x08	; 8
    13d6:	30 e0       	ldi	r19, 0x00	; 0
    13d8:	c4 cf       	rjmp	.-120    	; 0x1362 <.L46>

000013da <.L52>:
    13da:	61 91       	ld	r22, Z+
    13dc:	71 91       	ld	r23, Z+
    13de:	80 e0       	ldi	r24, 0x00	; 0
    13e0:	90 e0       	ldi	r25, 0x00	; 0
    13e2:	c6 cf       	rjmp	.-116    	; 0x1370 <.L127>

000013e4 <.L88>:
    13e4:	88 2e       	mov	r8, r24

000013e6 <.L54>:
    13e6:	b7 2c       	mov	r11, r7
    13e8:	84 fe       	sbrs	r8, 4
    13ea:	3a cf       	rjmp	.-396    	; 0x1260 <.L55>

000013ec <.L56>:
    13ec:	fe 01       	movw	r30, r28
    13ee:	e7 0d       	add	r30, r7
    13f0:	f1 1d       	adc	r31, r1
    13f2:	80 81       	ld	r24, Z
    13f4:	80 33       	cpi	r24, 0x30	; 48
    13f6:	09 f0       	breq	.+2      	; 0x13fa <L0^A+0x2>

000013f8 <L0^A>:
    13f8:	44 c0       	rjmp	.+136    	; 0x1482 <.L57>
    13fa:	49 ee       	ldi	r20, 0xE9	; 233
    13fc:	84 22       	and	r8, r20

000013fe <.L58>:
    13fe:	83 fc       	sbrc	r8, 3
    1400:	0e c0       	rjmp	.+28     	; 0x141e <.L60>
    1402:	80 fe       	sbrs	r8, 0
    1404:	51 c0       	rjmp	.+162    	; 0x14a8 <.L92>
    1406:	97 2c       	mov	r9, r7
    1408:	b6 14       	cp	r11, r6
    140a:	18 f4       	brcc	.+6      	; 0x1412 <.L79>
    140c:	96 0c       	add	r9, r6
    140e:	9b 18       	sub	r9, r11
    1410:	b6 2c       	mov	r11, r6

00001412 <.L79>:
    1412:	86 2d       	mov	r24, r6
    1414:	8b 19       	sub	r24, r11
    1416:	6b 14       	cp	r6, r11
    1418:	08 f4       	brcc	.+2      	; 0x141c <.L65>
    141a:	80 e0       	ldi	r24, 0x00	; 0

0000141c <.L65>:
    141c:	b8 0e       	add	r11, r24

0000141e <.L60>:
    141e:	b6 14       	cp	r11, r6
    1420:	08 f0       	brcs	.+2      	; 0x1424 <L0^A+0x2>

00001422 <L0^A>:
    1422:	44 c0       	rjmp	.+136    	; 0x14ac <.L94>
    1424:	6b 18       	sub	r6, r11

00001426 <.L67>:
    1426:	84 fe       	sbrs	r8, 4
    1428:	43 c0       	rjmp	.+134    	; 0x14b0 <.L68>
    142a:	b6 01       	movw	r22, r12
    142c:	80 e3       	ldi	r24, 0x30	; 48
    142e:	90 e0       	ldi	r25, 0x00	; 0
    1430:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    1434:	82 fe       	sbrs	r8, 2
    1436:	09 c0       	rjmp	.+18     	; 0x144a <.L74>
    1438:	88 e5       	ldi	r24, 0x58	; 88
    143a:	90 e0       	ldi	r25, 0x00	; 0
    143c:	81 fc       	sbrc	r8, 1
    143e:	02 c0       	rjmp	.+4      	; 0x1444 <.L70>
    1440:	88 e7       	ldi	r24, 0x78	; 120
    1442:	90 e0       	ldi	r25, 0x00	; 0

00001444 <.L70>:
    1444:	b6 01       	movw	r22, r12

00001446 <.L129>:
    1446:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>

0000144a <.L74>:
    144a:	79 14       	cp	r7, r9
    144c:	e0 f1       	brcs	.+120    	; 0x14c6 <.L75>
    144e:	5e 01       	movw	r10, r28
    1450:	8f ef       	ldi	r24, 0xFF	; 255
    1452:	a8 1a       	sub	r10, r24
    1454:	b8 0a       	sbc	r11, r24
    1456:	7a 94       	dec	r7
    1458:	82 e0       	ldi	r24, 0x02	; 2
    145a:	88 2e       	mov	r8, r24
    145c:	91 2c       	mov	r9, r1
    145e:	8c 0e       	add	r8, r28
    1460:	9d 1e       	adc	r9, r29
    1462:	87 0c       	add	r8, r7
    1464:	91 1c       	adc	r9, r1

00001466 <.L76>:
    1466:	f4 01       	movw	r30, r8
    1468:	82 91       	ld	r24, -Z
    146a:	4f 01       	movw	r8, r30
    146c:	b6 01       	movw	r22, r12
    146e:	90 e0       	ldi	r25, 0x00	; 0
    1470:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    1474:	8a 14       	cp	r8, r10
    1476:	9b 04       	cpc	r9, r11
    1478:	b1 f7       	brne	.-20     	; 0x1466 <.L76>
    147a:	11 cf       	rjmp	.-478    	; 0x129e <.L77>

0000147c <.L90>:
    147c:	b9 2c       	mov	r11, r9
    147e:	88 2e       	mov	r8, r24
    1480:	b5 cf       	rjmp	.-150    	; 0x13ec <.L56>

00001482 <.L57>:
    1482:	82 fc       	sbrc	r8, 2
    1484:	02 c0       	rjmp	.+4      	; 0x148a <.L59>

00001486 <.L128>:
    1486:	b3 94       	inc	r11
    1488:	ba cf       	rjmp	.-140    	; 0x13fe <.L58>

0000148a <.L59>:
    148a:	b3 94       	inc	r11
    148c:	b3 94       	inc	r11
    148e:	b7 cf       	rjmp	.-146    	; 0x13fe <.L58>

00001490 <.L89>:
    1490:	b9 2c       	mov	r11, r9
    1492:	88 2e       	mov	r8, r24
    1494:	e5 ce       	rjmp	.-566    	; 0x1260 <.L55>

00001496 <.L63>:
    1496:	b6 01       	movw	r22, r12
    1498:	80 e2       	ldi	r24, 0x20	; 32
    149a:	90 e0       	ldi	r25, 0x00	; 0
    149c:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    14a0:	a3 94       	inc	r10

000014a2 <.L61>:
    14a2:	a6 14       	cp	r10, r6
    14a4:	c0 f3       	brcs	.-16     	; 0x1496 <.L63>
    14a6:	b5 cf       	rjmp	.-150    	; 0x1412 <.L79>

000014a8 <.L92>:
    14a8:	ab 2c       	mov	r10, r11
    14aa:	fb cf       	rjmp	.-10     	; 0x14a2 <.L61>

000014ac <.L94>:
    14ac:	61 2c       	mov	r6, r1
    14ae:	bb cf       	rjmp	.-138    	; 0x1426 <.L67>

000014b0 <.L68>:
    14b0:	88 2d       	mov	r24, r8
    14b2:	86 78       	andi	r24, 0x86	; 134
    14b4:	51 f2       	breq	.-108    	; 0x144a <.L74>
    14b6:	80 e2       	ldi	r24, 0x20	; 32
    14b8:	81 fc       	sbrc	r8, 1
    14ba:	8b e2       	ldi	r24, 0x2B	; 43
    14bc:	87 fc       	sbrc	r8, 7
    14be:	8d e2       	ldi	r24, 0x2D	; 45
    14c0:	b6 01       	movw	r22, r12
    14c2:	90 e0       	ldi	r25, 0x00	; 0
    14c4:	c0 cf       	rjmp	.-128    	; 0x1446 <.L129>

000014c6 <.L75>:
    14c6:	b6 01       	movw	r22, r12
    14c8:	80 e3       	ldi	r24, 0x30	; 48
    14ca:	90 e0       	ldi	r25, 0x00	; 0
    14cc:	0e 94 83 0a 	call	0x1506	; 0x1506 <fputc>
    14d0:	9a 94       	dec	r9
    14d2:	bb cf       	rjmp	.-138    	; 0x144a <.L74>

000014d4 <.L80>:
    14d4:	8f ef       	ldi	r24, 0xFF	; 255
    14d6:	9f ef       	ldi	r25, 0xFF	; 255
    14d8:	65 cf       	rjmp	.-310    	; 0x13a4 <.L1>

000014da <strnlen_P>:
    14da:	fc 01       	movw	r30, r24

000014dc <.L_strnlen_P_loop>:
    14dc:	05 90       	lpm	r0, Z+
    14de:	61 50       	subi	r22, 0x01	; 1
    14e0:	70 40       	sbci	r23, 0x00	; 0
    14e2:	01 10       	cpse	r0, r1
    14e4:	d8 f7       	brcc	.-10     	; 0x14dc <.L_strnlen_P_loop>
    14e6:	80 95       	com	r24
    14e8:	90 95       	com	r25
    14ea:	8e 0f       	add	r24, r30
    14ec:	9f 1f       	adc	r25, r31
    14ee:	08 95       	ret

000014f0 <strnlen>:
    14f0:	fc 01       	movw	r30, r24

000014f2 <.L_strnlen_loop>:
    14f2:	61 50       	subi	r22, 0x01	; 1
    14f4:	70 40       	sbci	r23, 0x00	; 0
    14f6:	01 90       	ld	r0, Z+
    14f8:	01 10       	cpse	r0, r1
    14fa:	d8 f7       	brcc	.-10     	; 0x14f2 <.L_strnlen_loop>
    14fc:	80 95       	com	r24
    14fe:	90 95       	com	r25
    1500:	8e 0f       	add	r24, r30
    1502:	9f 1f       	adc	r25, r31
    1504:	08 95       	ret

00001506 <fputc>:
    1506:	0f 93       	push	r16
    1508:	1f 93       	push	r17
    150a:	cf 93       	push	r28
    150c:	df 93       	push	r29
    150e:	18 2f       	mov	r17, r24
    1510:	09 2f       	mov	r16, r25
    1512:	eb 01       	movw	r28, r22
    1514:	8b 81       	ldd	r24, Y+3	; 0x03
    1516:	81 fd       	sbrc	r24, 1
    1518:	09 c0       	rjmp	.+18     	; 0x152c <.L2>

0000151a <.L7>:
    151a:	0f ef       	ldi	r16, 0xFF	; 255
    151c:	1f ef       	ldi	r17, 0xFF	; 255

0000151e <.L3>:
    151e:	81 2f       	mov	r24, r17
    1520:	90 2f       	mov	r25, r16
    1522:	df 91       	pop	r29
    1524:	cf 91       	pop	r28
    1526:	1f 91       	pop	r17
    1528:	0f 91       	pop	r16
    152a:	08 95       	ret

0000152c <.L2>:
    152c:	82 ff       	sbrs	r24, 2
    152e:	14 c0       	rjmp	.+40     	; 0x1558 <.L4>
    1530:	2e 81       	ldd	r18, Y+6	; 0x06
    1532:	3f 81       	ldd	r19, Y+7	; 0x07
    1534:	8c 81       	ldd	r24, Y+4	; 0x04
    1536:	9d 81       	ldd	r25, Y+5	; 0x05
    1538:	28 17       	cp	r18, r24
    153a:	39 07       	cpc	r19, r25
    153c:	3c f4       	brge	.+14     	; 0x154c <.L8>
    153e:	e8 81       	ld	r30, Y
    1540:	f9 81       	ldd	r31, Y+1	; 0x01
    1542:	cf 01       	movw	r24, r30
    1544:	01 96       	adiw	r24, 0x01	; 1
    1546:	88 83       	st	Y, r24
    1548:	99 83       	std	Y+1, r25	; 0x01
    154a:	10 83       	st	Z, r17

0000154c <.L8>:
    154c:	8e 81       	ldd	r24, Y+6	; 0x06
    154e:	9f 81       	ldd	r25, Y+7	; 0x07
    1550:	01 96       	adiw	r24, 0x01	; 1
    1552:	8e 83       	std	Y+6, r24	; 0x06
    1554:	9f 83       	std	Y+7, r25	; 0x07
    1556:	e3 cf       	rjmp	.-58     	; 0x151e <.L3>

00001558 <.L4>:
    1558:	e8 85       	ldd	r30, Y+8	; 0x08
    155a:	f9 85       	ldd	r31, Y+9	; 0x09
    155c:	81 2f       	mov	r24, r17
    155e:	09 95       	icall
    1560:	89 2b       	or	r24, r25
    1562:	a1 f3       	breq	.-24     	; 0x154c <.L8>
    1564:	da cf       	rjmp	.-76     	; 0x151a <.L7>

00001566 <__ultoa_invert>:
    1566:	fa 01       	movw	r30, r20
    1568:	aa 27       	eor	r26, r26
    156a:	28 30       	cpi	r18, 0x08	; 8
    156c:	51 f1       	breq	.+84     	; 0x15c2 <.L_oct>
    156e:	20 31       	cpi	r18, 0x10	; 16
    1570:	81 f1       	breq	.+96     	; 0x15d2 <.L_hex>
    1572:	e8 94       	clt

00001574 <.L_dec_loop>:
    1574:	6f 93       	push	r22
    1576:	6e 7f       	andi	r22, 0xFE	; 254
    1578:	6e 5f       	subi	r22, 0xFE	; 254
    157a:	7f 4f       	sbci	r23, 0xFF	; 255
    157c:	8f 4f       	sbci	r24, 0xFF	; 255
    157e:	9f 4f       	sbci	r25, 0xFF	; 255
    1580:	af 4f       	sbci	r26, 0xFF	; 255
    1582:	b1 e0       	ldi	r27, 0x01	; 1
    1584:	3e d0       	rcall	.+124    	; 0x1602 <.L_div_add>
    1586:	b4 e0       	ldi	r27, 0x04	; 4
    1588:	3c d0       	rcall	.+120    	; 0x1602 <.L_div_add>
    158a:	67 0f       	add	r22, r23
    158c:	78 1f       	adc	r23, r24
    158e:	89 1f       	adc	r24, r25
    1590:	9a 1f       	adc	r25, r26
    1592:	a1 1d       	adc	r26, r1
    1594:	68 0f       	add	r22, r24
    1596:	79 1f       	adc	r23, r25
    1598:	8a 1f       	adc	r24, r26
    159a:	91 1d       	adc	r25, r1
    159c:	a1 1d       	adc	r26, r1
    159e:	6a 0f       	add	r22, r26
    15a0:	71 1d       	adc	r23, r1
    15a2:	81 1d       	adc	r24, r1
    15a4:	91 1d       	adc	r25, r1
    15a6:	a1 1d       	adc	r26, r1
    15a8:	20 d0       	rcall	.+64     	; 0x15ea <.L_lsr_4>
    15aa:	09 f4       	brne	.+2      	; 0x15ae <.L1^B1>
    15ac:	68 94       	set

000015ae <.L1^B1>:
    15ae:	3f 91       	pop	r19
    15b0:	2a e0       	ldi	r18, 0x0A	; 10
    15b2:	26 9f       	mul	r18, r22
    15b4:	11 24       	eor	r1, r1
    15b6:	30 19       	sub	r19, r0
    15b8:	30 5d       	subi	r19, 0xD0	; 208
    15ba:	31 93       	st	Z+, r19
    15bc:	de f6       	brtc	.-74     	; 0x1574 <.L_dec_loop>

000015be <.L_eos>:
    15be:	cf 01       	movw	r24, r30
    15c0:	08 95       	ret

000015c2 <.L_oct>:
    15c2:	46 2f       	mov	r20, r22
    15c4:	47 70       	andi	r20, 0x07	; 7
    15c6:	40 5d       	subi	r20, 0xD0	; 208
    15c8:	41 93       	st	Z+, r20
    15ca:	b3 e0       	ldi	r27, 0x03	; 3
    15cc:	0f d0       	rcall	.+30     	; 0x15ec <.L_lsr>
    15ce:	c9 f7       	brne	.-14     	; 0x15c2 <.L_oct>
    15d0:	f6 cf       	rjmp	.-20     	; 0x15be <.L_eos>

000015d2 <.L_hex>:
    15d2:	46 2f       	mov	r20, r22
    15d4:	4f 70       	andi	r20, 0x0F	; 15
    15d6:	40 5d       	subi	r20, 0xD0	; 208
    15d8:	4a 33       	cpi	r20, 0x3A	; 58
    15da:	18 f0       	brcs	.+6      	; 0x15e2 <.L3^B1>
    15dc:	49 5d       	subi	r20, 0xD9	; 217
    15de:	31 fd       	sbrc	r19, 1
    15e0:	40 52       	subi	r20, 0x20	; 32

000015e2 <.L3^B1>:
    15e2:	41 93       	st	Z+, r20
    15e4:	02 d0       	rcall	.+4      	; 0x15ea <.L_lsr_4>
    15e6:	a9 f7       	brne	.-22     	; 0x15d2 <.L_hex>
    15e8:	ea cf       	rjmp	.-44     	; 0x15be <.L_eos>

000015ea <.L_lsr_4>:
    15ea:	b4 e0       	ldi	r27, 0x04	; 4

000015ec <.L_lsr>:
    15ec:	a6 95       	lsr	r26
    15ee:	97 95       	ror	r25
    15f0:	87 95       	ror	r24
    15f2:	77 95       	ror	r23
    15f4:	67 95       	ror	r22
    15f6:	ba 95       	dec	r27
    15f8:	c9 f7       	brne	.-14     	; 0x15ec <.L_lsr>
    15fa:	00 97       	sbiw	r24, 0x00	; 0
    15fc:	61 05       	cpc	r22, r1
    15fe:	71 05       	cpc	r23, r1
    1600:	08 95       	ret

00001602 <.L_div_add>:
    1602:	9b 01       	movw	r18, r22
    1604:	ac 01       	movw	r20, r24
    1606:	0a 2e       	mov	r0, r26

00001608 <.L7^B1>:
    1608:	06 94       	lsr	r0
    160a:	57 95       	ror	r21
    160c:	47 95       	ror	r20
    160e:	37 95       	ror	r19
    1610:	27 95       	ror	r18
    1612:	ba 95       	dec	r27
    1614:	c9 f7       	brne	.-14     	; 0x1608 <.L7^B1>
    1616:	62 0f       	add	r22, r18
    1618:	73 1f       	adc	r23, r19
    161a:	84 1f       	adc	r24, r20
    161c:	95 1f       	adc	r25, r21
    161e:	a0 1d       	adc	r26, r0
    1620:	08 95       	ret

00001622 <__negsi2>:
    1622:	90 95       	com	r25
    1624:	80 95       	com	r24
    1626:	70 95       	com	r23
    1628:	61 95       	neg	r22
    162a:	7f 4f       	sbci	r23, 0xFF	; 255
    162c:	8f 4f       	sbci	r24, 0xFF	; 255
    162e:	9f 4f       	sbci	r25, 0xFF	; 255

00001630 <.Loc.1>:
    1630:	08 95       	ret

00001632 <__prologue_saves__>:
    1632:	2f 92       	push	r2

00001634 <.Loc.1>:
    1634:	3f 92       	push	r3

00001636 <.Loc.2>:
    1636:	4f 92       	push	r4

00001638 <.Loc.3>:
    1638:	5f 92       	push	r5

0000163a <.Loc.4>:
    163a:	6f 92       	push	r6

0000163c <.Loc.5>:
    163c:	7f 92       	push	r7

0000163e <.Loc.6>:
    163e:	8f 92       	push	r8

00001640 <.Loc.7>:
    1640:	9f 92       	push	r9

00001642 <.Loc.8>:
    1642:	af 92       	push	r10

00001644 <.Loc.9>:
    1644:	bf 92       	push	r11

00001646 <.Loc.10>:
    1646:	cf 92       	push	r12

00001648 <.Loc.11>:
    1648:	df 92       	push	r13

0000164a <.Loc.12>:
    164a:	ef 92       	push	r14

0000164c <.Loc.13>:
    164c:	ff 92       	push	r15

0000164e <.Loc.14>:
    164e:	0f 93       	push	r16

00001650 <.Loc.15>:
    1650:	1f 93       	push	r17

00001652 <.Loc.16>:
    1652:	cf 93       	push	r28

00001654 <.Loc.17>:
    1654:	df 93       	push	r29

00001656 <.Loc.18>:
    1656:	cd b7       	in	r28, 0x3d	; 61

00001658 <.Loc.19>:
    1658:	de b7       	in	r29, 0x3e	; 62

0000165a <.Loc.20>:
    165a:	ca 1b       	sub	r28, r26

0000165c <.Loc.21>:
    165c:	db 0b       	sbc	r29, r27

0000165e <.Loc.22>:
    165e:	0f b6       	in	r0, 0x3f	; 63

00001660 <.Loc.23>:
    1660:	f8 94       	cli

00001662 <.Loc.24>:
    1662:	de bf       	out	0x3e, r29	; 62

00001664 <.Loc.25>:
    1664:	0f be       	out	0x3f, r0	; 63

00001666 <.Loc.26>:
    1666:	cd bf       	out	0x3d, r28	; 61

00001668 <.Loc.27>:
    1668:	09 94       	ijmp

0000166a <__epilogue_restores__>:
    166a:	2a 88       	ldd	r2, Y+18	; 0x12

0000166c <.Loc.1>:
    166c:	39 88       	ldd	r3, Y+17	; 0x11

0000166e <.Loc.2>:
    166e:	48 88       	ldd	r4, Y+16	; 0x10

00001670 <.Loc.3>:
    1670:	5f 84       	ldd	r5, Y+15	; 0x0f

00001672 <.Loc.4>:
    1672:	6e 84       	ldd	r6, Y+14	; 0x0e

00001674 <.Loc.5>:
    1674:	7d 84       	ldd	r7, Y+13	; 0x0d

00001676 <.Loc.6>:
    1676:	8c 84       	ldd	r8, Y+12	; 0x0c

00001678 <.Loc.7>:
    1678:	9b 84       	ldd	r9, Y+11	; 0x0b

0000167a <.Loc.8>:
    167a:	aa 84       	ldd	r10, Y+10	; 0x0a

0000167c <.Loc.9>:
    167c:	b9 84       	ldd	r11, Y+9	; 0x09

0000167e <.Loc.10>:
    167e:	c8 84       	ldd	r12, Y+8	; 0x08

00001680 <.Loc.11>:
    1680:	df 80       	ldd	r13, Y+7	; 0x07

00001682 <.Loc.12>:
    1682:	ee 80       	ldd	r14, Y+6	; 0x06

00001684 <.Loc.13>:
    1684:	fd 80       	ldd	r15, Y+5	; 0x05

00001686 <.Loc.14>:
    1686:	0c 81       	ldd	r16, Y+4	; 0x04

00001688 <.Loc.15>:
    1688:	1b 81       	ldd	r17, Y+3	; 0x03

0000168a <.Loc.16>:
    168a:	aa 81       	ldd	r26, Y+2	; 0x02

0000168c <.Loc.17>:
    168c:	b9 81       	ldd	r27, Y+1	; 0x01

0000168e <.Loc.18>:
    168e:	ce 0f       	add	r28, r30

00001690 <.Loc.19>:
    1690:	d1 1d       	adc	r29, r1

00001692 <.Loc.20>:
    1692:	0f b6       	in	r0, 0x3f	; 63

00001694 <.Loc.21>:
    1694:	f8 94       	cli

00001696 <.Loc.22>:
    1696:	de bf       	out	0x3e, r29	; 62

00001698 <.Loc.23>:
    1698:	0f be       	out	0x3f, r0	; 63

0000169a <.Loc.24>:
    169a:	cd bf       	out	0x3d, r28	; 61

0000169c <.Loc.25>:
    169c:	ed 01       	movw	r28, r26

0000169e <.Loc.26>:
    169e:	08 95       	ret

000016a0 <_exit>:
    16a0:	f8 94       	cli

000016a2 <__stop_program>:
    16a2:	ff cf       	rjmp	.-2      	; 0x16a2 <__stop_program>
