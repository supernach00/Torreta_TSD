
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
      1c:	0c 94 49 04 	jmp	0x892	; 0x892 <__vector_7>
      20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
      38:	0c 94 4a 04 	jmp	0x894	; 0x894 <__vector_14>
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
      7a:	ea e8       	ldi	r30, 0x8A	; 138

0000007c <.Loc.4>:
      7c:	f3 e1       	ldi	r31, 0x13	; 19

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
      94:	ac 30       	cpi	r26, 0x0C	; 12

00000096 <.Loc.6>:
      96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
      98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
      9a:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <main>
      9e:	0c 94 c3 09 	jmp	0x1386	; 0x1386 <_exit>

000000a2 <__bad_interrupt>:
      a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <SERVO_set_angulo>:
      a6:	9c 01       	movw	r18, r24
      a8:	61 30       	cpi	r22, 0x01	; 1
      aa:	71 05       	cpc	r23, r1
      ac:	90 f0       	brcs	.+36     	; 0xd2 <.L2>
      ae:	09 f5       	brne	.+66     	; 0xf2 <.L1>
      b0:	44 e1       	ldi	r20, 0x14	; 20
      b2:	42 9f       	mul	r20, r18
      b4:	c0 01       	movw	r24, r0
      b6:	43 9f       	mul	r20, r19
      b8:	90 0d       	add	r25, r0
      ba:	11 24       	eor	r1, r1
      bc:	69 e0       	ldi	r22, 0x09	; 9
      be:	70 e0       	ldi	r23, 0x00	; 0
      c0:	0e 94 ae 04 	call	0x95c	; 0x95c <__udivmodhi4>
      c4:	69 51       	subi	r22, 0x19	; 25
      c6:	7c 4f       	sbci	r23, 0xFC	; 252
      c8:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
      cc:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
      d0:	08 95       	ret

000000d2 <.L2>:
      d2:	44 e1       	ldi	r20, 0x14	; 20
      d4:	42 9f       	mul	r20, r18
      d6:	c0 01       	movw	r24, r0
      d8:	43 9f       	mul	r20, r19
      da:	90 0d       	add	r25, r0
      dc:	11 24       	eor	r1, r1
      de:	69 e0       	ldi	r22, 0x09	; 9
      e0:	70 e0       	ldi	r23, 0x00	; 0
      e2:	0e 94 ae 04 	call	0x95c	; 0x95c <__udivmodhi4>
      e6:	69 51       	subi	r22, 0x19	; 25
      e8:	7c 4f       	sbci	r23, 0xFC	; 252
      ea:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
      ee:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

000000f2 <.L1>:
      f2:	08 95       	ret

000000f4 <SERVO_test>:
      f4:	ef 92       	push	r14
      f6:	ff 92       	push	r15
      f8:	0f 93       	push	r16
      fa:	1f 93       	push	r17
      fc:	cf 93       	push	r28
      fe:	df 93       	push	r29
     100:	8c 01       	movw	r16, r24
     102:	eb 01       	movw	r28, r22
     104:	bc 01       	movw	r22, r24
     106:	80 e0       	ldi	r24, 0x00	; 0
     108:	90 e0       	ldi	r25, 0x00	; 0
     10a:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     10e:	be 01       	movw	r22, r28
     110:	80 e0       	ldi	r24, 0x00	; 0
     112:	90 e0       	ldi	r25, 0x00	; 0
     114:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     118:	2f ef       	ldi	r18, 0xFF	; 255
     11a:	83 ed       	ldi	r24, 0xD3	; 211
     11c:	90 e3       	ldi	r25, 0x30	; 48

0000011e <.L1^B1>:
     11e:	21 50       	subi	r18, 0x01	; 1
     120:	80 40       	sbci	r24, 0x00	; 0
     122:	90 40       	sbci	r25, 0x00	; 0
     124:	e1 f7       	brne	.-8      	; 0x11e <.L1^B1>
     126:	00 c0       	rjmp	.+0      	; 0x128 <L0^A>

00000128 <L0^A>:
     128:	00 00       	nop
     12a:	e1 2c       	mov	r14, r1
     12c:	f1 2c       	mov	r15, r1

0000012e <.L5>:
     12e:	b8 01       	movw	r22, r16
     130:	c7 01       	movw	r24, r14
     132:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     136:	be 01       	movw	r22, r28
     138:	c7 01       	movw	r24, r14
     13a:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     13e:	8f e9       	ldi	r24, 0x9F	; 159
     140:	9f e0       	ldi	r25, 0x0F	; 15

00000142 <.L1^B2>:
     142:	01 97       	sbiw	r24, 0x01	; 1
     144:	f1 f7       	brne	.-4      	; 0x142 <.L1^B2>
     146:	00 c0       	rjmp	.+0      	; 0x148 <L0^A>

00000148 <L0^A>:
     148:	00 00       	nop
     14a:	9f ef       	ldi	r25, 0xFF	; 255
     14c:	e9 1a       	sub	r14, r25
     14e:	f9 0a       	sbc	r15, r25
     150:	29 e0       	ldi	r18, 0x09	; 9
     152:	e2 16       	cp	r14, r18
     154:	27 e0       	ldi	r18, 0x07	; 7
     156:	f2 06       	cpc	r15, r18
     158:	51 f7       	brne	.-44     	; 0x12e <.L5>
     15a:	88 e0       	ldi	r24, 0x08	; 8
     15c:	e8 2e       	mov	r14, r24
     15e:	87 e0       	ldi	r24, 0x07	; 7
     160:	f8 2e       	mov	r15, r24

00000162 <.L6>:
     162:	b8 01       	movw	r22, r16
     164:	c7 01       	movw	r24, r14
     166:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     16a:	be 01       	movw	r22, r28
     16c:	c7 01       	movw	r24, r14
     16e:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     172:	8f e9       	ldi	r24, 0x9F	; 159
     174:	9f e0       	ldi	r25, 0x0F	; 15

00000176 <.L1^B3>:
     176:	01 97       	sbiw	r24, 0x01	; 1
     178:	f1 f7       	brne	.-4      	; 0x176 <.L1^B3>
     17a:	00 c0       	rjmp	.+0      	; 0x17c <L0^A>

0000017c <L0^A>:
     17c:	00 00       	nop
     17e:	91 e0       	ldi	r25, 0x01	; 1
     180:	e9 1a       	sub	r14, r25
     182:	f1 08       	sbc	r15, r1
     184:	70 f7       	brcc	.-36     	; 0x162 <.L6>
     186:	b8 01       	movw	r22, r16
     188:	80 e0       	ldi	r24, 0x00	; 0
     18a:	90 e0       	ldi	r25, 0x00	; 0
     18c:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     190:	be 01       	movw	r22, r28
     192:	80 e0       	ldi	r24, 0x00	; 0
     194:	90 e0       	ldi	r25, 0x00	; 0
     196:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     19a:	b8 01       	movw	r22, r16
     19c:	88 e0       	ldi	r24, 0x08	; 8
     19e:	97 e0       	ldi	r25, 0x07	; 7
     1a0:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     1a4:	be 01       	movw	r22, r28
     1a6:	88 e0       	ldi	r24, 0x08	; 8
     1a8:	97 e0       	ldi	r25, 0x07	; 7
     1aa:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     1ae:	8f ef       	ldi	r24, 0xFF	; 255
     1b0:	93 ed       	ldi	r25, 0xD3	; 211
     1b2:	20 e3       	ldi	r18, 0x30	; 48

000001b4 <.L1^B4>:
     1b4:	81 50       	subi	r24, 0x01	; 1
     1b6:	90 40       	sbci	r25, 0x00	; 0
     1b8:	20 40       	sbci	r18, 0x00	; 0
     1ba:	e1 f7       	brne	.-8      	; 0x1b4 <.L1^B4>
     1bc:	00 c0       	rjmp	.+0      	; 0x1be <L0^A>

000001be <L0^A>:
     1be:	00 00       	nop
     1c0:	b8 01       	movw	r22, r16
     1c2:	80 e0       	ldi	r24, 0x00	; 0
     1c4:	90 e0       	ldi	r25, 0x00	; 0
     1c6:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     1ca:	be 01       	movw	r22, r28
     1cc:	80 e0       	ldi	r24, 0x00	; 0
     1ce:	90 e0       	ldi	r25, 0x00	; 0
     1d0:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     1d4:	8f ef       	ldi	r24, 0xFF	; 255
     1d6:	93 ed       	ldi	r25, 0xD3	; 211
     1d8:	20 e3       	ldi	r18, 0x30	; 48

000001da <.L1^B5>:
     1da:	81 50       	subi	r24, 0x01	; 1
     1dc:	90 40       	sbci	r25, 0x00	; 0
     1de:	20 40       	sbci	r18, 0x00	; 0
     1e0:	e1 f7       	brne	.-8      	; 0x1da <.L1^B5>
     1e2:	00 c0       	rjmp	.+0      	; 0x1e4 <L0^A>

000001e4 <L0^A>:
     1e4:	00 00       	nop
     1e6:	df 91       	pop	r29
     1e8:	cf 91       	pop	r28
     1ea:	1f 91       	pop	r17
     1ec:	0f 91       	pop	r16
     1ee:	ff 90       	pop	r15
     1f0:	ef 90       	pop	r14
     1f2:	08 95       	ret

000001f4 <NUN_init>:
     1f4:	0e 94 df 01 	call	0x3be	; 0x3be <I2C_init>
     1f8:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     1fc:	07 97       	sbiw	r24, 0x07	; 7
     1fe:	29 f0       	breq	.+10     	; 0x20a <.L2>
     200:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     204:	80 e0       	ldi	r24, 0x00	; 0
     206:	90 e0       	ldi	r25, 0x00	; 0
     208:	08 95       	ret

0000020a <.L2>:
     20a:	60 e0       	ldi	r22, 0x00	; 0
     20c:	70 e0       	ldi	r23, 0x00	; 0
     20e:	82 e5       	ldi	r24, 0x52	; 82
     210:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     214:	07 97       	sbiw	r24, 0x07	; 7
     216:	29 f0       	breq	.+10     	; 0x222 <.L4>
     218:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     21c:	82 e0       	ldi	r24, 0x02	; 2
     21e:	90 e0       	ldi	r25, 0x00	; 0
     220:	08 95       	ret

00000222 <.L4>:
     222:	80 e4       	ldi	r24, 0x40	; 64
     224:	0e 94 51 02 	call	0x4a2	; 0x4a2 <I2C_write>
     228:	07 97       	sbiw	r24, 0x07	; 7
     22a:	29 f0       	breq	.+10     	; 0x236 <.L5>

0000022c <.L6>:
     22c:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     230:	83 e0       	ldi	r24, 0x03	; 3
     232:	90 e0       	ldi	r25, 0x00	; 0
     234:	08 95       	ret

00000236 <.L5>:
     236:	80 e0       	ldi	r24, 0x00	; 0
     238:	0e 94 51 02 	call	0x4a2	; 0x4a2 <I2C_write>
     23c:	07 97       	sbiw	r24, 0x07	; 7
     23e:	b1 f7       	brne	.-20     	; 0x22c <.L6>
     240:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     244:	85 e0       	ldi	r24, 0x05	; 5
     246:	90 e0       	ldi	r25, 0x00	; 0
     248:	08 95       	ret

0000024a <NUN_get_raw>:
     24a:	ef 92       	push	r14
     24c:	ff 92       	push	r15
     24e:	0f 93       	push	r16
     250:	1f 93       	push	r17
     252:	cf 93       	push	r28
     254:	df 93       	push	r29
     256:	ec 01       	movw	r28, r24
     258:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     25c:	07 97       	sbiw	r24, 0x07	; 7
     25e:	59 f0       	breq	.+22     	; 0x276 <.L8>

00000260 <.L12>:
     260:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     264:	81 e0       	ldi	r24, 0x01	; 1
     266:	90 e0       	ldi	r25, 0x00	; 0

00000268 <.L7>:
     268:	df 91       	pop	r29
     26a:	cf 91       	pop	r28
     26c:	1f 91       	pop	r17
     26e:	0f 91       	pop	r16
     270:	ff 90       	pop	r15
     272:	ef 90       	pop	r14
     274:	08 95       	ret

00000276 <.L8>:
     276:	60 e0       	ldi	r22, 0x00	; 0
     278:	70 e0       	ldi	r23, 0x00	; 0
     27a:	82 e5       	ldi	r24, 0x52	; 82
     27c:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     280:	07 97       	sbiw	r24, 0x07	; 7
     282:	29 f0       	breq	.+10     	; 0x28e <.L10>

00000284 <.L13>:
     284:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     288:	82 e0       	ldi	r24, 0x02	; 2
     28a:	90 e0       	ldi	r25, 0x00	; 0
     28c:	ed cf       	rjmp	.-38     	; 0x268 <.L7>

0000028e <.L10>:
     28e:	80 e0       	ldi	r24, 0x00	; 0
     290:	0e 94 51 02 	call	0x4a2	; 0x4a2 <I2C_write>
     294:	07 97       	sbiw	r24, 0x07	; 7
     296:	29 f0       	breq	.+10     	; 0x2a2 <.L11>
     298:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     29c:	83 e0       	ldi	r24, 0x03	; 3
     29e:	90 e0       	ldi	r25, 0x00	; 0
     2a0:	e3 cf       	rjmp	.-58     	; 0x268 <.L7>

000002a2 <.L11>:
     2a2:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     2a6:	07 97       	sbiw	r24, 0x07	; 7
     2a8:	d9 f6       	brne	.-74     	; 0x260 <.L12>
     2aa:	61 e0       	ldi	r22, 0x01	; 1
     2ac:	70 e0       	ldi	r23, 0x00	; 0
     2ae:	82 e5       	ldi	r24, 0x52	; 82
     2b0:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     2b4:	07 97       	sbiw	r24, 0x07	; 7
     2b6:	31 f7       	brne	.-52     	; 0x284 <.L13>
     2b8:	8e 01       	movw	r16, r28
     2ba:	7e 01       	movw	r14, r28
     2bc:	85 e0       	ldi	r24, 0x05	; 5
     2be:	e8 0e       	add	r14, r24
     2c0:	f1 1c       	adc	r15, r1

000002c2 <.L14>:
     2c2:	0e 94 65 02 	call	0x4ca	; 0x4ca <I2C_read_ACK>
     2c6:	f8 01       	movw	r30, r16
     2c8:	81 93       	st	Z+, r24
     2ca:	8f 01       	movw	r16, r30
     2cc:	ee 15       	cp	r30, r14
     2ce:	ff 05       	cpc	r31, r15
     2d0:	c1 f7       	brne	.-16     	; 0x2c2 <.L14>
     2d2:	0e 94 6f 02 	call	0x4de	; 0x4de <I2C_read_NACK>
     2d6:	8d 83       	std	Y+5, r24	; 0x05
     2d8:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     2dc:	85 e0       	ldi	r24, 0x05	; 5
     2de:	90 e0       	ldi	r25, 0x00	; 0
     2e0:	c3 cf       	rjmp	.-122    	; 0x268 <.L7>

000002e2 <NUN_get_joystick>:
     2e2:	cf 93       	push	r28
     2e4:	df 93       	push	r29
     2e6:	cd b7       	in	r28, 0x3d	; 61
     2e8:	de b7       	in	r29, 0x3e	; 62
     2ea:	28 97       	sbiw	r28, 0x08	; 8
     2ec:	0f b6       	in	r0, 0x3f	; 63
     2ee:	f8 94       	cli
     2f0:	de bf       	out	0x3e, r29	; 62
     2f2:	0f be       	out	0x3f, r0	; 63
     2f4:	cd bf       	out	0x3d, r28	; 61
     2f6:	8f 83       	std	Y+7, r24	; 0x07
     2f8:	98 87       	std	Y+8, r25	; 0x08
     2fa:	ce 01       	movw	r24, r28
     2fc:	01 96       	adiw	r24, 0x01	; 1
     2fe:	0e 94 25 01 	call	0x24a	; 0x24a <NUN_get_raw>
     302:	89 81       	ldd	r24, Y+1	; 0x01
     304:	ef 81       	ldd	r30, Y+7	; 0x07
     306:	f8 85       	ldd	r31, Y+8	; 0x08
     308:	80 83       	st	Z, r24
     30a:	8a 81       	ldd	r24, Y+2	; 0x02
     30c:	81 83       	std	Z+1, r24	; 0x01
     30e:	85 e0       	ldi	r24, 0x05	; 5
     310:	90 e0       	ldi	r25, 0x00	; 0
     312:	28 96       	adiw	r28, 0x08	; 8
     314:	0f b6       	in	r0, 0x3f	; 63
     316:	f8 94       	cli
     318:	de bf       	out	0x3e, r29	; 62
     31a:	0f be       	out	0x3f, r0	; 63
     31c:	cd bf       	out	0x3d, r28	; 61
     31e:	df 91       	pop	r29
     320:	cf 91       	pop	r28
     322:	08 95       	ret

00000324 <NUN_get_buttons>:
     324:	cf 93       	push	r28
     326:	df 93       	push	r29
     328:	cd b7       	in	r28, 0x3d	; 61
     32a:	de b7       	in	r29, 0x3e	; 62
     32c:	28 97       	sbiw	r28, 0x08	; 8
     32e:	0f b6       	in	r0, 0x3f	; 63
     330:	f8 94       	cli
     332:	de bf       	out	0x3e, r29	; 62
     334:	0f be       	out	0x3f, r0	; 63
     336:	cd bf       	out	0x3d, r28	; 61
     338:	8f 83       	std	Y+7, r24	; 0x07
     33a:	98 87       	std	Y+8, r25	; 0x08
     33c:	ce 01       	movw	r24, r28
     33e:	01 96       	adiw	r24, 0x01	; 1
     340:	26 e0       	ldi	r18, 0x06	; 6
     342:	fc 01       	movw	r30, r24

00000344 <.L0^B1>:
     344:	11 92       	st	Z+, r1
     346:	2a 95       	dec	r18
     348:	e9 f7       	brne	.-6      	; 0x344 <.L0^B1>
     34a:	0e 94 25 01 	call	0x24a	; 0x24a <NUN_get_raw>
     34e:	8e 81       	ldd	r24, Y+6	; 0x06
     350:	83 70       	andi	r24, 0x03	; 3
     352:	ef 81       	ldd	r30, Y+7	; 0x07
     354:	f8 85       	ldd	r31, Y+8	; 0x08
     356:	80 83       	st	Z, r24
     358:	85 e0       	ldi	r24, 0x05	; 5
     35a:	90 e0       	ldi	r25, 0x00	; 0
     35c:	28 96       	adiw	r28, 0x08	; 8
     35e:	0f b6       	in	r0, 0x3f	; 63
     360:	f8 94       	cli
     362:	de bf       	out	0x3e, r29	; 62
     364:	0f be       	out	0x3f, r0	; 63
     366:	cd bf       	out	0x3d, r28	; 61
     368:	df 91       	pop	r29
     36a:	cf 91       	pop	r28
     36c:	08 95       	ret

0000036e <VL53L0X_test>:
     36e:	cf 93       	push	r28
     370:	df 93       	push	r29
     372:	0f 92       	push	r0
     374:	cd b7       	in	r28, 0x3d	; 61
     376:	de b7       	in	r29, 0x3e	; 62
     378:	0e 94 df 01 	call	0x3be	; 0x3be <I2C_init>
     37c:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     380:	60 e0       	ldi	r22, 0x00	; 0
     382:	70 e0       	ldi	r23, 0x00	; 0
     384:	89 e2       	ldi	r24, 0x29	; 41
     386:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     38a:	80 ec       	ldi	r24, 0xC0	; 192
     38c:	0e 94 51 02 	call	0x4a2	; 0x4a2 <I2C_write>
     390:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     394:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     398:	61 e0       	ldi	r22, 0x01	; 1
     39a:	70 e0       	ldi	r23, 0x00	; 0
     39c:	89 e2       	ldi	r24, 0x29	; 41
     39e:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     3a2:	0e 94 6f 02 	call	0x4de	; 0x4de <I2C_read_NACK>
     3a6:	89 83       	std	Y+1, r24	; 0x01
     3a8:	0e 94 79 02 	call	0x4f2	; 0x4f2 <I2C_stop>
     3ac:	81 e0       	ldi	r24, 0x01	; 1
     3ae:	99 81       	ldd	r25, Y+1	; 0x01
     3b0:	9e 3e       	cpi	r25, 0xEE	; 238
     3b2:	09 f0       	breq	.+2      	; 0x3b6 <.L2>
     3b4:	80 e0       	ldi	r24, 0x00	; 0

000003b6 <.L2>:
     3b6:	0f 90       	pop	r0
     3b8:	df 91       	pop	r29
     3ba:	cf 91       	pop	r28
     3bc:	08 95       	ret

000003be <I2C_init>:
     3be:	87 b1       	in	r24, 0x07	; 7
     3c0:	8f 7c       	andi	r24, 0xCF	; 207
     3c2:	87 b9       	out	0x07, r24	; 7
     3c4:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3c8:	88 e4       	ldi	r24, 0x48	; 72
     3ca:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     3ce:	84 e0       	ldi	r24, 0x04	; 4
     3d0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3d4:	87 e0       	ldi	r24, 0x07	; 7
     3d6:	90 e0       	ldi	r25, 0x00	; 0
     3d8:	08 95       	ret

000003da <I2C_start>:
     3da:	84 ea       	ldi	r24, 0xA4	; 164
     3dc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003e0 <.L3>:
     3e0:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3e4:	87 ff       	sbrs	r24, 7
     3e6:	fc cf       	rjmp	.-8      	; 0x3e0 <.L3>
     3e8:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3ec:	88 7f       	andi	r24, 0xF8	; 248
     3ee:	88 30       	cpi	r24, 0x08	; 8
     3f0:	11 f0       	breq	.+4      	; 0x3f6 <.L5>
     3f2:	80 31       	cpi	r24, 0x10	; 16
     3f4:	19 f4       	brne	.+6      	; 0x3fc <.L6>

000003f6 <.L5>:
     3f6:	87 e0       	ldi	r24, 0x07	; 7
     3f8:	90 e0       	ldi	r25, 0x00	; 0
     3fa:	08 95       	ret

000003fc <.L6>:
     3fc:	81 e0       	ldi	r24, 0x01	; 1
     3fe:	90 e0       	ldi	r25, 0x00	; 0
     400:	08 95       	ret

00000402 <I2C_connect_address>:
     402:	88 0f       	add	r24, r24
     404:	86 2b       	or	r24, r22
     406:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     40a:	84 e8       	ldi	r24, 0x84	; 132
     40c:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000410 <.L9>:
     410:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     414:	87 ff       	sbrs	r24, 7
     416:	fc cf       	rjmp	.-8      	; 0x410 <.L9>
     418:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     41c:	88 7f       	andi	r24, 0xF8	; 248
     41e:	67 2b       	or	r22, r23
     420:	31 f4       	brne	.+12     	; 0x42e <.L10>
     422:	88 31       	cpi	r24, 0x18	; 24
     424:	49 f4       	brne	.+18     	; 0x438 <.L13>

00000426 <.L12>:
     426:	2d 9a       	sbi	0x05, 5	; 5
     428:	87 e0       	ldi	r24, 0x07	; 7
     42a:	90 e0       	ldi	r25, 0x00	; 0
     42c:	08 95       	ret

0000042e <.L10>:
     42e:	80 34       	cpi	r24, 0x40	; 64
     430:	d1 f3       	breq	.-12     	; 0x426 <.L12>
     432:	84 e0       	ldi	r24, 0x04	; 4
     434:	90 e0       	ldi	r25, 0x00	; 0
     436:	08 95       	ret

00000438 <.L13>:
     438:	85 e0       	ldi	r24, 0x05	; 5
     43a:	90 e0       	ldi	r25, 0x00	; 0
     43c:	08 95       	ret

0000043e <I2C_scan>:
     43e:	0f 93       	push	r16
     440:	1f 93       	push	r17
     442:	cf 93       	push	r28
     444:	df 93       	push	r29
     446:	8c 01       	movw	r16, r24
     448:	00 97       	sbiw	r24, 0x00	; 0
     44a:	11 f0       	breq	.+4      	; 0x450 <.L17>
     44c:	fc 01       	movw	r30, r24
     44e:	10 82       	st	Z, r1

00000450 <.L17>:
     450:	25 9a       	sbi	0x04, 5	; 4
     452:	2d 98       	cbi	0x05, 5	; 5
     454:	c8 e0       	ldi	r28, 0x08	; 8
     456:	d4 e9       	ldi	r29, 0x94	; 148

00000458 <.L23>:
     458:	0e 94 ed 01 	call	0x3da	; 0x3da <I2C_start>
     45c:	07 97       	sbiw	r24, 0x07	; 7
     45e:	41 f0       	breq	.+16     	; 0x470 <.L18>

00000460 <.L20>:
     460:	d0 93 bc 00 	sts	0x00BC, r29	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     464:	cf 5f       	subi	r28, 0xFF	; 255
     466:	c8 37       	cpi	r28, 0x78	; 120
     468:	b9 f7       	brne	.-18     	; 0x458 <.L23>
     46a:	86 e0       	ldi	r24, 0x06	; 6
     46c:	90 e0       	ldi	r25, 0x00	; 0
     46e:	14 c0       	rjmp	.+40     	; 0x498 <.L16>

00000470 <.L18>:
     470:	60 e0       	ldi	r22, 0x00	; 0
     472:	70 e0       	ldi	r23, 0x00	; 0
     474:	8c 2f       	mov	r24, r28
     476:	0e 94 01 02 	call	0x402	; 0x402 <I2C_connect_address>
     47a:	87 30       	cpi	r24, 0x07	; 7
     47c:	91 05       	cpc	r25, r1
     47e:	81 f7       	brne	.-32     	; 0x460 <.L20>
     480:	24 e9       	ldi	r18, 0x94	; 148
     482:	20 93 bc 00 	sts	0x00BC, r18	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     486:	01 15       	cp	r16, r1
     488:	11 05       	cpc	r17, r1
     48a:	11 f0       	breq	.+4      	; 0x490 <.L21>
     48c:	f8 01       	movw	r30, r16
     48e:	c0 83       	st	Z, r28

00000490 <.L21>:
     490:	25 b1       	in	r18, 0x05	; 5
     492:	30 e2       	ldi	r19, 0x20	; 32
     494:	23 27       	eor	r18, r19
     496:	25 b9       	out	0x05, r18	; 5

00000498 <.L16>:
     498:	df 91       	pop	r29
     49a:	cf 91       	pop	r28
     49c:	1f 91       	pop	r17
     49e:	0f 91       	pop	r16
     4a0:	08 95       	ret

000004a2 <I2C_write>:
     4a2:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4a6:	84 e8       	ldi	r24, 0x84	; 132
     4a8:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004ac <.L32>:
     4ac:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4b0:	87 ff       	sbrs	r24, 7
     4b2:	fc cf       	rjmp	.-8      	; 0x4ac <.L32>
     4b4:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     4b8:	88 7f       	andi	r24, 0xF8	; 248
     4ba:	88 32       	cpi	r24, 0x28	; 40
     4bc:	19 f0       	breq	.+6      	; 0x4c4 <.L34>
     4be:	83 e0       	ldi	r24, 0x03	; 3
     4c0:	90 e0       	ldi	r25, 0x00	; 0
     4c2:	08 95       	ret

000004c4 <.L34>:
     4c4:	87 e0       	ldi	r24, 0x07	; 7
     4c6:	90 e0       	ldi	r25, 0x00	; 0
     4c8:	08 95       	ret

000004ca <I2C_read_ACK>:
     4ca:	84 ec       	ldi	r24, 0xC4	; 196
     4cc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004d0 <.L37>:
     4d0:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4d4:	87 ff       	sbrs	r24, 7
     4d6:	fc cf       	rjmp	.-8      	; 0x4d0 <.L37>
     4d8:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4dc:	08 95       	ret

000004de <I2C_read_NACK>:
     4de:	84 e8       	ldi	r24, 0x84	; 132
     4e0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000004e4 <.L40>:
     4e4:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4e8:	87 ff       	sbrs	r24, 7
     4ea:	fc cf       	rjmp	.-8      	; 0x4e4 <.L40>
     4ec:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     4f0:	08 95       	ret

000004f2 <I2C_stop>:
     4f2:	84 e9       	ldi	r24, 0x94	; 148
     4f4:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     4f8:	08 95       	ret

000004fa <USART_init>:
     4fa:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
     4fe:	87 e6       	ldi	r24, 0x67	; 103
     500:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
     504:	88 e1       	ldi	r24, 0x18	; 24
     506:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
     50a:	86 e0       	ldi	r24, 0x06	; 6
     50c:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
     510:	08 95       	ret

00000512 <USART_send>:
     512:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     516:	95 ff       	sbrs	r25, 5
     518:	fc cf       	rjmp	.-8      	; 0x512 <USART_send>
     51a:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     51e:	08 95       	ret

00000520 <USART_receive>:
     520:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     524:	87 ff       	sbrs	r24, 7
     526:	fc cf       	rjmp	.-8      	; 0x520 <USART_receive>
     528:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     52c:	08 95       	ret

0000052e <USART_putstring>:
     52e:	cf 93       	push	r28
     530:	df 93       	push	r29
     532:	ec 01       	movw	r28, r24

00000534 <.L10>:
     534:	88 81       	ld	r24, Y
     536:	81 11       	cpse	r24, r1
     538:	03 c0       	rjmp	.+6      	; 0x540 <.L11>
     53a:	df 91       	pop	r29
     53c:	cf 91       	pop	r28
     53e:	08 95       	ret

00000540 <.L11>:
     540:	21 96       	adiw	r28, 0x01	; 1
     542:	0e 94 89 02 	call	0x512	; 0x512 <USART_send>
     546:	f6 cf       	rjmp	.-20     	; 0x534 <.L10>

00000548 <USART_put_uint16>:
     548:	0f 93       	push	r16
     54a:	1f 93       	push	r17
     54c:	cf 93       	push	r28
     54e:	df 93       	push	r29
     550:	cd b7       	in	r28, 0x3d	; 61
     552:	de b7       	in	r29, 0x3e	; 62
     554:	2a 97       	sbiw	r28, 0x0a	; 10
     556:	0f b6       	in	r0, 0x3f	; 63
     558:	f8 94       	cli
     55a:	de bf       	out	0x3e, r29	; 62
     55c:	0f be       	out	0x3f, r0	; 63
     55e:	cd bf       	out	0x3d, r28	; 61
     560:	9f 93       	push	r25
     562:	8f 93       	push	r24
     564:	80 e0       	ldi	r24, 0x00	; 0
     566:	91 e0       	ldi	r25, 0x01	; 1
     568:	9f 93       	push	r25
     56a:	8f 93       	push	r24
     56c:	8e 01       	movw	r16, r28
     56e:	0f 5f       	subi	r16, 0xFF	; 255
     570:	1f 4f       	sbci	r17, 0xFF	; 255
     572:	1f 93       	push	r17
     574:	0f 93       	push	r16
     576:	0e 94 cb 06 	call	0xd96	; 0xd96 <sprintf>
     57a:	c8 01       	movw	r24, r16
     57c:	0e 94 97 02 	call	0x52e	; 0x52e <USART_putstring>
     580:	83 e0       	ldi	r24, 0x03	; 3
     582:	91 e0       	ldi	r25, 0x01	; 1
     584:	0e 94 97 02 	call	0x52e	; 0x52e <USART_putstring>
     588:	2f ef       	ldi	r18, 0xFF	; 255
     58a:	89 e6       	ldi	r24, 0x69	; 105
     58c:	98 e1       	ldi	r25, 0x18	; 24

0000058e <.L1^B1>:
     58e:	21 50       	subi	r18, 0x01	; 1
     590:	80 40       	sbci	r24, 0x00	; 0
     592:	90 40       	sbci	r25, 0x00	; 0
     594:	e1 f7       	brne	.-8      	; 0x58e <.L1^B1>
     596:	00 c0       	rjmp	.+0      	; 0x598 <L0^A>

00000598 <L0^A>:
     598:	00 00       	nop
     59a:	0f 90       	pop	r0
     59c:	0f 90       	pop	r0
     59e:	0f 90       	pop	r0
     5a0:	0f 90       	pop	r0
     5a2:	0f 90       	pop	r0
     5a4:	0f 90       	pop	r0
     5a6:	2a 96       	adiw	r28, 0x0a	; 10
     5a8:	0f b6       	in	r0, 0x3f	; 63
     5aa:	f8 94       	cli
     5ac:	de bf       	out	0x3e, r29	; 62
     5ae:	0f be       	out	0x3f, r0	; 63
     5b0:	cd bf       	out	0x3d, r28	; 61
     5b2:	df 91       	pop	r29
     5b4:	cf 91       	pop	r28
     5b6:	1f 91       	pop	r17
     5b8:	0f 91       	pop	r16
     5ba:	08 95       	ret

000005bc <Error_Handler>:
     5bc:	88 e1       	ldi	r24, 0x18	; 24
     5be:	98 e0       	ldi	r25, 0x08	; 8
     5c0:	0f b6       	in	r0, 0x3f	; 63
     5c2:	f8 94       	cli
     5c4:	a8 95       	wdr
     5c6:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     5ca:	0f be       	out	0x3f, r0	; 63
     5cc:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

000005d0 <.L2>:
     5d0:	ff cf       	rjmp	.-2      	; 0x5d0 <.L2>

000005d2 <TIMER0_init_1ms>:
     5d2:	82 e0       	ldi	r24, 0x02	; 2
     5d4:	84 bd       	out	0x24, r24	; 36
     5d6:	93 e0       	ldi	r25, 0x03	; 3
     5d8:	95 bd       	out	0x25, r25	; 37
     5da:	99 ef       	ldi	r25, 0xF9	; 249
     5dc:	97 bd       	out	0x27, r25	; 39
     5de:	16 bc       	out	0x26, r1	; 38
     5e0:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7f806e>
     5e4:	08 95       	ret

000005e6 <ADC_init>:
     5e6:	85 e4       	ldi	r24, 0x45	; 69
     5e8:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
     5ec:	87 e8       	ldi	r24, 0x87	; 135
     5ee:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     5f2:	82 e0       	ldi	r24, 0x02	; 2
     5f4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
     5f8:	94 e0       	ldi	r25, 0x04	; 4
     5fa:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
     5fe:	99 ef       	ldi	r25, 0xF9	; 249
     600:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
     604:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
     608:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
     60c:	08 95       	ret

0000060e <ADC_get>:
     60e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     612:	80 64       	ori	r24, 0x40	; 64
     614:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

00000618 <.L4>:
     618:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     61c:	84 ff       	sbrs	r24, 4
     61e:	fc cf       	rjmp	.-8      	; 0x618 <.L4>
     620:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     624:	80 61       	ori	r24, 0x10	; 16
     626:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
     62a:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
     62e:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
     632:	80 e0       	ldi	r24, 0x00	; 0
     634:	90 e0       	ldi	r25, 0x00	; 0
     636:	0e 94 d0 05 	call	0xba0	; 0xba0 <__floatunsisf>
     63a:	26 ef       	ldi	r18, 0xF6	; 246
     63c:	38 e2       	ldi	r19, 0x28	; 40
     63e:	4c e9       	ldi	r20, 0x9C	; 156
     640:	50 e4       	ldi	r21, 0x40	; 64
     642:	0e 94 5e 06 	call	0xcbc	; 0xcbc <__mulsf3>
     646:	0e 94 a1 05 	call	0xb42	; 0xb42 <__fixunssfsi>
     64a:	cb 01       	movw	r24, r22
     64c:	08 95       	ret

0000064e <ADC_sweep>:
     64e:	ff 92       	push	r15
     650:	0f 93       	push	r16
     652:	1f 93       	push	r17
     654:	cf 93       	push	r28
     656:	df 93       	push	r29
     658:	ec 01       	movw	r28, r24
     65a:	0c e7       	ldi	r16, 0x7C	; 124
     65c:	10 e0       	ldi	r17, 0x00	; 0
     65e:	f8 01       	movw	r30, r16
     660:	10 82       	st	Z, r1
     662:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     666:	8a 83       	std	Y+2, r24	; 0x02
     668:	9b 83       	std	Y+3, r25	; 0x03
     66a:	8f e3       	ldi	r24, 0x3F	; 63
     66c:	9f e1       	ldi	r25, 0x1F	; 31

0000066e <.L1^B1>:
     66e:	01 97       	sbiw	r24, 0x01	; 1
     670:	f1 f7       	brne	.-4      	; 0x66e <.L1^B1>
     672:	00 c0       	rjmp	.+0      	; 0x674 <L0^A>

00000674 <L0^A>:
     674:	00 00       	nop
     676:	ff 24       	eor	r15, r15
     678:	f3 94       	inc	r15
     67a:	f8 01       	movw	r30, r16
     67c:	f0 82       	st	Z, r15
     67e:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     682:	88 83       	st	Y, r24
     684:	99 83       	std	Y+1, r25	; 0x01
     686:	8f e3       	ldi	r24, 0x3F	; 63
     688:	9f e1       	ldi	r25, 0x1F	; 31

0000068a <.L1^B2>:
     68a:	01 97       	sbiw	r24, 0x01	; 1
     68c:	f1 f7       	brne	.-4      	; 0x68a <.L1^B2>
     68e:	00 c0       	rjmp	.+0      	; 0x690 <L0^A>

00000690 <L0^A>:
     690:	00 00       	nop
     692:	82 e0       	ldi	r24, 0x02	; 2
     694:	f8 01       	movw	r30, r16
     696:	80 83       	st	Z, r24
     698:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     69c:	8c 83       	std	Y+4, r24	; 0x04
     69e:	9d 83       	std	Y+5, r25	; 0x05
     6a0:	8f e3       	ldi	r24, 0x3F	; 63
     6a2:	9f e1       	ldi	r25, 0x1F	; 31

000006a4 <.L1^B3>:
     6a4:	01 97       	sbiw	r24, 0x01	; 1
     6a6:	f1 f7       	brne	.-4      	; 0x6a4 <.L1^B3>
     6a8:	00 c0       	rjmp	.+0      	; 0x6aa <L0^A>

000006aa <L0^A>:
     6aa:	00 00       	nop
     6ac:	83 e0       	ldi	r24, 0x03	; 3
     6ae:	f8 01       	movw	r30, r16
     6b0:	80 83       	st	Z, r24
     6b2:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     6b6:	8e 83       	std	Y+6, r24	; 0x06
     6b8:	9f 83       	std	Y+7, r25	; 0x07
     6ba:	8f e3       	ldi	r24, 0x3F	; 63
     6bc:	9f e1       	ldi	r25, 0x1F	; 31

000006be <.L1^B4>:
     6be:	01 97       	sbiw	r24, 0x01	; 1
     6c0:	f1 f7       	brne	.-4      	; 0x6be <.L1^B4>
     6c2:	00 c0       	rjmp	.+0      	; 0x6c4 <L0^A>

000006c4 <L0^A>:
     6c4:	00 00       	nop
     6c6:	84 e0       	ldi	r24, 0x04	; 4
     6c8:	f8 01       	movw	r30, r16
     6ca:	80 83       	st	Z, r24
     6cc:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     6d0:	88 87       	std	Y+8, r24	; 0x08
     6d2:	99 87       	std	Y+9, r25	; 0x09
     6d4:	8f e3       	ldi	r24, 0x3F	; 63
     6d6:	9f e1       	ldi	r25, 0x1F	; 31

000006d8 <.L1^B5>:
     6d8:	01 97       	sbiw	r24, 0x01	; 1
     6da:	f1 f7       	brne	.-4      	; 0x6d8 <.L1^B5>
     6dc:	00 c0       	rjmp	.+0      	; 0x6de <L0^A>

000006de <L0^A>:
     6de:	00 00       	nop
     6e0:	f8 01       	movw	r30, r16
     6e2:	f0 82       	st	Z, r15
     6e4:	0e 94 07 03 	call	0x60e	; 0x60e <ADC_get>
     6e8:	8a 87       	std	Y+10, r24	; 0x0a
     6ea:	9b 87       	std	Y+11, r25	; 0x0b
     6ec:	8f e3       	ldi	r24, 0x3F	; 63
     6ee:	9f e1       	ldi	r25, 0x1F	; 31

000006f0 <.L1^B6>:
     6f0:	01 97       	sbiw	r24, 0x01	; 1
     6f2:	f1 f7       	brne	.-4      	; 0x6f0 <.L1^B6>
     6f4:	00 c0       	rjmp	.+0      	; 0x6f6 <L0^A>

000006f6 <L0^A>:
     6f6:	00 00       	nop
     6f8:	df 91       	pop	r29
     6fa:	cf 91       	pop	r28
     6fc:	1f 91       	pop	r17
     6fe:	0f 91       	pop	r16
     700:	ff 90       	pop	r15
     702:	08 95       	ret

00000704 <volts_to_D>:
     704:	bc 01       	movw	r22, r24
     706:	80 e0       	ldi	r24, 0x00	; 0
     708:	90 e0       	ldi	r25, 0x00	; 0
     70a:	0e 94 d0 05 	call	0xba0	; 0xba0 <__floatunsisf>
     70e:	20 e0       	ldi	r18, 0x00	; 0
     710:	30 e0       	ldi	r19, 0x00	; 0
     712:	4a e7       	ldi	r20, 0x7A	; 122
     714:	56 e4       	ldi	r21, 0x46	; 70
     716:	0e 94 5e 06 	call	0xcbc	; 0xcbc <__mulsf3>
     71a:	20 e0       	ldi	r18, 0x00	; 0
     71c:	30 e4       	ldi	r19, 0x40	; 64
     71e:	4c e9       	ldi	r20, 0x9C	; 156
     720:	55 e4       	ldi	r21, 0x45	; 69
     722:	0e 94 2f 05 	call	0xa5e	; 0xa5e <__divsf3>
     726:	20 e0       	ldi	r18, 0x00	; 0
     728:	30 e0       	ldi	r19, 0x00	; 0
     72a:	40 e8       	ldi	r20, 0x80	; 128
     72c:	5f e3       	ldi	r21, 0x3F	; 63
     72e:	0e 94 c2 04 	call	0x984	; 0x984 <__subsf3>
     732:	0e 94 a1 05 	call	0xb42	; 0xb42 <__fixunssfsi>
     736:	cb 01       	movw	r24, r22
     738:	08 95       	ret

0000073a <GPIO_PORTD_IT_init>:
     73a:	88 30       	cpi	r24, 0x08	; 8
     73c:	d0 f4       	brcc	.+52     	; 0x772 <.L10>
     73e:	4a b1       	in	r20, 0x0a	; 10
     740:	21 e0       	ldi	r18, 0x01	; 1
     742:	30 e0       	ldi	r19, 0x00	; 0
     744:	b9 01       	movw	r22, r18
     746:	01 c0       	rjmp	.+2      	; 0x74a <.L2^B1>

00000748 <.L1^B7>:
     748:	66 0f       	add	r22, r22

0000074a <.L2^B1>:
     74a:	8a 95       	dec	r24
     74c:	ea f7       	brpl	.-6      	; 0x748 <.L1^B7>
     74e:	86 2f       	mov	r24, r22
     750:	96 2f       	mov	r25, r22
     752:	90 95       	com	r25
     754:	94 23       	and	r25, r20
     756:	9a b9       	out	0x0a, r25	; 10
     758:	9b b1       	in	r25, 0x0b	; 11
     75a:	96 2b       	or	r25, r22
     75c:	9b b9       	out	0x0b, r25	; 11
     75e:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     762:	94 60       	ori	r25, 0x04	; 4
     764:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     768:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     76c:	89 2b       	or	r24, r25
     76e:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

00000772 <.L10>:
     772:	80 e0       	ldi	r24, 0x00	; 0
     774:	90 e0       	ldi	r25, 0x00	; 0
     776:	08 95       	ret

00000778 <PWM_TIM1_init>:
     778:	21 9a       	sbi	0x04, 1	; 4
     77a:	22 9a       	sbi	0x04, 2	; 4
     77c:	22 ea       	ldi	r18, 0xA2	; 162
     77e:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     782:	2a e1       	ldi	r18, 0x1A	; 26
     784:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     788:	40 ed       	ldi	r20, 0xD0	; 208
     78a:	57 e0       	ldi	r21, 0x07	; 7
     78c:	84 9f       	mul	r24, r20
     78e:	90 01       	movw	r18, r0
     790:	85 9f       	mul	r24, r21
     792:	30 0d       	add	r19, r0
     794:	94 9f       	mul	r25, r20
     796:	30 0d       	add	r19, r0
     798:	11 24       	eor	r1, r1
     79a:	21 50       	subi	r18, 0x01	; 1
     79c:	31 09       	sbc	r19, r1
     79e:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     7a2:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     7a6:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     7aa:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7ae:	08 95       	ret

000007b0 <PWM_set_DC>:
     7b0:	9c 01       	movw	r18, r24
     7b2:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     7b6:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     7ba:	42 9f       	mul	r20, r18
     7bc:	c0 01       	movw	r24, r0
     7be:	43 9f       	mul	r20, r19
     7c0:	90 0d       	add	r25, r0
     7c2:	52 9f       	mul	r21, r18
     7c4:	90 0d       	add	r25, r0
     7c6:	11 24       	eor	r1, r1
     7c8:	64 e6       	ldi	r22, 0x64	; 100
     7ca:	70 e0       	ldi	r23, 0x00	; 0
     7cc:	0e 94 ae 04 	call	0x95c	; 0x95c <__udivmodhi4>
     7d0:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     7d4:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     7d8:	08 95       	ret

000007da <DEBUG_init>:
     7da:	25 9a       	sbi	0x04, 5	; 4
     7dc:	08 95       	ret

000007de <DEBUG_led_toggle>:
     7de:	85 b1       	in	r24, 0x05	; 5
     7e0:	90 e2       	ldi	r25, 0x20	; 32
     7e2:	89 27       	eor	r24, r25
     7e4:	85 b9       	out	0x05, r24	; 5
     7e6:	08 95       	ret

000007e8 <DEBUG_led_on>:
     7e8:	2d 9a       	sbi	0x05, 5	; 5
     7ea:	08 95       	ret

000007ec <DEBUG_led_off>:
     7ec:	2d 98       	cbi	0x05, 5	; 5
     7ee:	08 95       	ret

000007f0 <procesar_joystick>:
     7f0:	fc 01       	movw	r30, r24
     7f2:	66 30       	cpi	r22, 0x06	; 6
     7f4:	71 05       	cpc	r23, r1
     7f6:	08 f4       	brcc	.+2      	; 0x7fa <L0^A+0x2>

000007f8 <L0^A>:
     7f8:	4b c0       	rjmp	.+150    	; 0x890 <.L17>
     7fa:	95 81       	ldd	r25, Z+5	; 0x05
     7fc:	90 95       	com	r25
     7fe:	92 70       	andi	r25, 0x02	; 2
     800:	9f 5f       	subi	r25, 0xFF	; 255
     802:	41 81       	ldd	r20, Z+1	; 0x01
     804:	40 58       	subi	r20, 0x80	; 128
     806:	55 0b       	sbc	r21, r21
     808:	09 2e       	mov	r0, r25
     80a:	02 c0       	rjmp	.+4      	; 0x810 <.L2^B2>

0000080c <.L1^B8>:
     80c:	55 95       	asr	r21
     80e:	47 95       	ror	r20

00000810 <.L2^B2>:
     810:	0a 94       	dec	r0
     812:	e2 f7       	brpl	.-8      	; 0x80c <.L1^B8>
     814:	20 91 08 01 	lds	r18, 0x0108	; 0x800108 <y_angulo.1>
     818:	30 91 09 01 	lds	r19, 0x0109	; 0x800109 <y_angulo.1+0x1>
     81c:	24 0f       	add	r18, r20
     81e:	35 1f       	adc	r19, r21
     820:	24 38       	cpi	r18, 0x84	; 132
     822:	83 e0       	ldi	r24, 0x03	; 3
     824:	38 07       	cpc	r19, r24
     826:	54 f1       	brlt	.+84     	; 0x87c <.L19>
     828:	23 e8       	ldi	r18, 0x83	; 131
     82a:	33 e0       	ldi	r19, 0x03	; 3

0000082c <.L20>:
     82c:	20 93 08 01 	sts	0x0108, r18	; 0x800108 <y_angulo.1>
     830:	30 93 09 01 	sts	0x0109, r19	; 0x800109 <y_angulo.1+0x1>
     834:	20 81       	ld	r18, Z
     836:	20 58       	subi	r18, 0x80	; 128
     838:	33 0b       	sbc	r19, r19
     83a:	02 c0       	rjmp	.+4      	; 0x840 <.L2^B3>

0000083c <.L1^B9>:
     83c:	35 95       	asr	r19
     83e:	27 95       	ror	r18

00000840 <.L2^B3>:
     840:	9a 95       	dec	r25
     842:	e2 f7       	brpl	.-8      	; 0x83c <.L1^B9>
     844:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <x_angulo.0>
     848:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <x_angulo.0+0x1>
     84c:	82 1b       	sub	r24, r18
     84e:	93 0b       	sbc	r25, r19
     850:	88 30       	cpi	r24, 0x08	; 8
     852:	27 e0       	ldi	r18, 0x07	; 7
     854:	92 07       	cpc	r25, r18
     856:	bc f0       	brlt	.+46     	; 0x886 <.L21>
     858:	87 e0       	ldi	r24, 0x07	; 7
     85a:	97 e0       	ldi	r25, 0x07	; 7

0000085c <.L22>:
     85c:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <x_angulo.0>
     860:	90 93 07 01 	sts	0x0107, r25	; 0x800107 <x_angulo.0+0x1>
     864:	60 e0       	ldi	r22, 0x00	; 0
     866:	70 e0       	ldi	r23, 0x00	; 0
     868:	0e 94 53 00 	call	0xa6	; 0xa6 <SERVO_set_angulo>
     86c:	61 e0       	ldi	r22, 0x01	; 1
     86e:	70 e0       	ldi	r23, 0x00	; 0
     870:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <y_angulo.1>
     874:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <y_angulo.1+0x1>
     878:	0c 94 53 00 	jmp	0xa6	; 0xa6 <SERVO_set_angulo>

0000087c <.L19>:
     87c:	37 ff       	sbrs	r19, 7
     87e:	d6 cf       	rjmp	.-84     	; 0x82c <.L20>
     880:	20 e0       	ldi	r18, 0x00	; 0
     882:	30 e0       	ldi	r19, 0x00	; 0
     884:	d3 cf       	rjmp	.-90     	; 0x82c <.L20>

00000886 <.L21>:
     886:	97 ff       	sbrs	r25, 7
     888:	e9 cf       	rjmp	.-46     	; 0x85c <.L22>
     88a:	80 e0       	ldi	r24, 0x00	; 0
     88c:	90 e0       	ldi	r25, 0x00	; 0
     88e:	e6 cf       	rjmp	.-52     	; 0x85c <.L22>

00000890 <.L17>:
     890:	08 95       	ret

00000892 <__vector_7>:
     892:	18 95       	reti

00000894 <__vector_14>:
     894:	1f 92       	push	r1
     896:	0f 92       	push	r0
     898:	0f b6       	in	r0, 0x3f	; 63
     89a:	0f 92       	push	r0
     89c:	11 24       	eor	r1, r1
     89e:	2f 93       	push	r18
     8a0:	3f 93       	push	r19
     8a2:	4f 93       	push	r20
     8a4:	5f 93       	push	r21
     8a6:	6f 93       	push	r22
     8a8:	7f 93       	push	r23
     8aa:	8f 93       	push	r24
     8ac:	9f 93       	push	r25
     8ae:	af 93       	push	r26
     8b0:	bf 93       	push	r27
     8b2:	ef 93       	push	r30
     8b4:	ff 93       	push	r31
     8b6:	0e 94 ef 03 	call	0x7de	; 0x7de <DEBUG_led_toggle>
     8ba:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <contador_20ms.0>
     8be:	8f 5f       	subi	r24, 0xFF	; 255
     8c0:	84 31       	cpi	r24, 0x14	; 20
     8c2:	98 f4       	brcc	.+38     	; 0x8ea <.L3>
     8c4:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <contador_20ms.0>

000008c8 <.L2>:
     8c8:	ff 91       	pop	r31
     8ca:	ef 91       	pop	r30
     8cc:	bf 91       	pop	r27
     8ce:	af 91       	pop	r26
     8d0:	9f 91       	pop	r25
     8d2:	8f 91       	pop	r24
     8d4:	7f 91       	pop	r23
     8d6:	6f 91       	pop	r22
     8d8:	5f 91       	pop	r21
     8da:	4f 91       	pop	r20
     8dc:	3f 91       	pop	r19
     8de:	2f 91       	pop	r18
     8e0:	0f 90       	pop	r0
     8e2:	0f be       	out	0x3f, r0	; 63
     8e4:	0f 90       	pop	r0
     8e6:	1f 90       	pop	r1
     8e8:	18 95       	reti

000008ea <.L3>:
     8ea:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <contador_20ms.0>
     8ee:	81 e0       	ldi	r24, 0x01	; 1
     8f0:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <flag_20ms>
     8f4:	e9 cf       	rjmp	.-46     	; 0x8c8 <.L2>

000008f6 <main>:
     8f6:	00 d0       	rcall	.+0      	; 0x8f8 <L0^A>

000008f8 <L0^A>:
     8f8:	00 d0       	rcall	.+0      	; 0x8fa <L0^A>

000008fa <L0^A>:
     8fa:	00 d0       	rcall	.+0      	; 0x8fc <L0^A>

000008fc <L0^A>:
     8fc:	cd b7       	in	r28, 0x3d	; 61
     8fe:	de b7       	in	r29, 0x3e	; 62
     900:	0e 94 df 01 	call	0x3be	; 0x3be <I2C_init>

00000904 <.L6>:
     904:	0e 94 fa 00 	call	0x1f4	; 0x1f4 <NUN_init>
     908:	05 97       	sbiw	r24, 0x05	; 5
     90a:	e1 f4       	brne	.+56     	; 0x944 <.L7>
     90c:	0e 94 7d 02 	call	0x4fa	; 0x4fa <USART_init>
     910:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <TIMER0_init_1ms>
     914:	84 e1       	ldi	r24, 0x14	; 20
     916:	90 e0       	ldi	r25, 0x00	; 0
     918:	0e 94 bc 03 	call	0x778	; 0x778 <PWM_TIM1_init>
     91c:	0e 94 ed 03 	call	0x7da	; 0x7da <DEBUG_init>
     920:	78 94       	sei

00000922 <.L8>:
     922:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <flag_20ms>
     926:	81 15       	cp	r24, r1
     928:	e1 f3       	breq	.-8      	; 0x922 <.L8>
     92a:	10 92 0a 01 	sts	0x010A, r1	; 0x80010a <flag_20ms>
     92e:	ce 01       	movw	r24, r28
     930:	01 96       	adiw	r24, 0x01	; 1
     932:	0e 94 25 01 	call	0x24a	; 0x24a <NUN_get_raw>
     936:	66 e0       	ldi	r22, 0x06	; 6
     938:	70 e0       	ldi	r23, 0x00	; 0
     93a:	ce 01       	movw	r24, r28
     93c:	01 96       	adiw	r24, 0x01	; 1
     93e:	0e 94 f8 03 	call	0x7f0	; 0x7f0 <procesar_joystick>
     942:	ef cf       	rjmp	.-34     	; 0x922 <.L8>

00000944 <.L7>:
     944:	0e 94 ef 03 	call	0x7de	; 0x7de <DEBUG_led_toggle>
     948:	2f ef       	ldi	r18, 0xFF	; 255
     94a:	81 ee       	ldi	r24, 0xE1	; 225
     94c:	94 e0       	ldi	r25, 0x04	; 4

0000094e <.L1^B1>:
     94e:	21 50       	subi	r18, 0x01	; 1
     950:	80 40       	sbci	r24, 0x00	; 0
     952:	90 40       	sbci	r25, 0x00	; 0
     954:	e1 f7       	brne	.-8      	; 0x94e <.L1^B1>
     956:	00 c0       	rjmp	.+0      	; 0x958 <L0^A>

00000958 <L0^A>:
     958:	00 00       	nop
     95a:	d4 cf       	rjmp	.-88     	; 0x904 <.L6>

0000095c <__udivmodhi4>:
     95c:	aa 1b       	sub	r26, r26

0000095e <.Loc.1>:
     95e:	bb 1b       	sub	r27, r27

00000960 <.Loc.2>:
     960:	51 e1       	ldi	r21, 0x11	; 17

00000962 <.Loc.3>:
     962:	07 c0       	rjmp	.+14     	; 0x972 <__udivmodhi4_ep>

00000964 <__udivmodhi4_loop>:
     964:	aa 1f       	adc	r26, r26

00000966 <.Loc.5>:
     966:	bb 1f       	adc	r27, r27

00000968 <.Loc.6>:
     968:	a6 17       	cp	r26, r22

0000096a <.Loc.7>:
     96a:	b7 07       	cpc	r27, r23

0000096c <.Loc.8>:
     96c:	10 f0       	brcs	.+4      	; 0x972 <__udivmodhi4_ep>

0000096e <.Loc.9>:
     96e:	a6 1b       	sub	r26, r22

00000970 <.Loc.10>:
     970:	b7 0b       	sbc	r27, r23

00000972 <__udivmodhi4_ep>:
     972:	88 1f       	adc	r24, r24

00000974 <.Loc.12>:
     974:	99 1f       	adc	r25, r25

00000976 <.Loc.13>:
     976:	5a 95       	dec	r21

00000978 <.Loc.14>:
     978:	a9 f7       	brne	.-22     	; 0x964 <__udivmodhi4_loop>

0000097a <.Loc.15>:
     97a:	80 95       	com	r24

0000097c <.Loc.16>:
     97c:	90 95       	com	r25

0000097e <.Loc.17>:
     97e:	bc 01       	movw	r22, r24

00000980 <.Loc.18>:
     980:	cd 01       	movw	r24, r26

00000982 <.Loc.19>:
     982:	08 95       	ret

00000984 <__subsf3>:
     984:	50 58       	subi	r21, 0x80	; 128

00000986 <__addsf3>:
     986:	bb 27       	eor	r27, r27
     988:	aa 27       	eor	r26, r26
     98a:	0e 94 da 04 	call	0x9b4	; 0x9b4 <__addsf3x>
     98e:	0c 94 24 06 	jmp	0xc48	; 0xc48 <__fp_round>

00000992 <.L0^B1>:
     992:	0e 94 16 06 	call	0xc2c	; 0xc2c <__fp_pscA>
     996:	38 f0       	brcs	.+14     	; 0x9a6 <.L_nan>
     998:	0e 94 1d 06 	call	0xc3a	; 0xc3a <__fp_pscB>
     99c:	20 f0       	brcs	.+8      	; 0x9a6 <.L_nan>
     99e:	39 f4       	brne	.+14     	; 0x9ae <.L_inf>
     9a0:	9f 3f       	cpi	r25, 0xFF	; 255
     9a2:	19 f4       	brne	.+6      	; 0x9aa <.L_infB>
     9a4:	26 f4       	brtc	.+8      	; 0x9ae <.L_inf>

000009a6 <.L_nan>:
     9a6:	0c 94 13 06 	jmp	0xc26	; 0xc26 <__fp_nan>

000009aa <.L_infB>:
     9aa:	0e f4       	brtc	.+2      	; 0x9ae <.L_inf>
     9ac:	e0 95       	com	r30

000009ae <.L_inf>:
     9ae:	e7 fb       	bst	r30, 7
     9b0:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__fp_inf>

000009b4 <__addsf3x>:
     9b4:	e9 2f       	mov	r30, r25
     9b6:	0e 94 35 06 	call	0xc6a	; 0xc6a <__fp_split3>
     9ba:	58 f3       	brcs	.-42     	; 0x992 <.L0^B1>
     9bc:	ba 17       	cp	r27, r26
     9be:	62 07       	cpc	r22, r18
     9c0:	73 07       	cpc	r23, r19
     9c2:	84 07       	cpc	r24, r20
     9c4:	95 07       	cpc	r25, r21
     9c6:	20 f0       	brcs	.+8      	; 0x9d0 <.L2^B1>
     9c8:	79 f4       	brne	.+30     	; 0x9e8 <.L4^B1>
     9ca:	a6 f5       	brtc	.+104    	; 0xa34 <.L_add>
     9cc:	0c 94 57 06 	jmp	0xcae	; 0xcae <__fp_zero>

000009d0 <.L2^B1>:
     9d0:	0e f4       	brtc	.+2      	; 0x9d4 <.L3^B1>
     9d2:	e0 95       	com	r30

000009d4 <.L3^B1>:
     9d4:	0b 2e       	mov	r0, r27
     9d6:	ba 2f       	mov	r27, r26
     9d8:	a0 2d       	mov	r26, r0
     9da:	0b 01       	movw	r0, r22
     9dc:	b9 01       	movw	r22, r18
     9de:	90 01       	movw	r18, r0
     9e0:	0c 01       	movw	r0, r24
     9e2:	ca 01       	movw	r24, r20
     9e4:	a0 01       	movw	r20, r0
     9e6:	11 24       	eor	r1, r1

000009e8 <.L4^B1>:
     9e8:	ff 27       	eor	r31, r31
     9ea:	59 1b       	sub	r21, r25

000009ec <.L5^B1>:
     9ec:	99 f0       	breq	.+38     	; 0xa14 <.L7^B1>
     9ee:	59 3f       	cpi	r21, 0xF9	; 249
     9f0:	50 f4       	brcc	.+20     	; 0xa06 <.L6^B1>
     9f2:	50 3e       	cpi	r21, 0xE0	; 224
     9f4:	68 f1       	brcs	.+90     	; 0xa50 <.L_ret>
     9f6:	1a 16       	cp	r1, r26
     9f8:	f0 40       	sbci	r31, 0x00	; 0
     9fa:	a2 2f       	mov	r26, r18
     9fc:	23 2f       	mov	r18, r19
     9fe:	34 2f       	mov	r19, r20
     a00:	44 27       	eor	r20, r20
     a02:	58 5f       	subi	r21, 0xF8	; 248
     a04:	f3 cf       	rjmp	.-26     	; 0x9ec <.L5^B1>

00000a06 <.L6^B1>:
     a06:	46 95       	lsr	r20
     a08:	37 95       	ror	r19
     a0a:	27 95       	ror	r18
     a0c:	a7 95       	ror	r26
     a0e:	f0 40       	sbci	r31, 0x00	; 0
     a10:	53 95       	inc	r21
     a12:	c9 f7       	brne	.-14     	; 0xa06 <.L6^B1>

00000a14 <.L7^B1>:
     a14:	7e f4       	brtc	.+30     	; 0xa34 <.L_add>
     a16:	1f 16       	cp	r1, r31
     a18:	ba 0b       	sbc	r27, r26
     a1a:	62 0b       	sbc	r22, r18
     a1c:	73 0b       	sbc	r23, r19
     a1e:	84 0b       	sbc	r24, r20
     a20:	ba f0       	brmi	.+46     	; 0xa50 <.L_ret>

00000a22 <.L8^B1>:
     a22:	91 50       	subi	r25, 0x01	; 1
     a24:	a1 f0       	breq	.+40     	; 0xa4e <.L9^B1>
     a26:	ff 0f       	add	r31, r31
     a28:	bb 1f       	adc	r27, r27
     a2a:	66 1f       	adc	r22, r22
     a2c:	77 1f       	adc	r23, r23
     a2e:	88 1f       	adc	r24, r24
     a30:	c2 f7       	brpl	.-16     	; 0xa22 <.L8^B1>
     a32:	0e c0       	rjmp	.+28     	; 0xa50 <.L_ret>

00000a34 <.L_add>:
     a34:	ba 0f       	add	r27, r26
     a36:	62 1f       	adc	r22, r18
     a38:	73 1f       	adc	r23, r19
     a3a:	84 1f       	adc	r24, r20
     a3c:	48 f4       	brcc	.+18     	; 0xa50 <.L_ret>
     a3e:	87 95       	ror	r24
     a40:	77 95       	ror	r23
     a42:	67 95       	ror	r22
     a44:	b7 95       	ror	r27
     a46:	f7 95       	ror	r31
     a48:	9e 3f       	cpi	r25, 0xFE	; 254
     a4a:	08 f0       	brcs	.+2      	; 0xa4e <.L9^B1>
     a4c:	b0 cf       	rjmp	.-160    	; 0x9ae <.L_inf>

00000a4e <.L9^B1>:
     a4e:	93 95       	inc	r25

00000a50 <.L_ret>:
     a50:	88 0f       	add	r24, r24
     a52:	08 f0       	brcs	.+2      	; 0xa56 <.L1^B1>
     a54:	99 27       	eor	r25, r25

00000a56 <.L1^B1>:
     a56:	ee 0f       	add	r30, r30
     a58:	97 95       	ror	r25
     a5a:	87 95       	ror	r24
     a5c:	08 95       	ret

00000a5e <__divsf3>:
     a5e:	0e 94 43 05 	call	0xa86	; 0xa86 <__divsf3x>
     a62:	0c 94 24 06 	jmp	0xc48	; 0xc48 <__fp_round>

00000a66 <.L0^B1>:
     a66:	0e 94 1d 06 	call	0xc3a	; 0xc3a <__fp_pscB>
     a6a:	58 f0       	brcs	.+22     	; 0xa82 <.L_nan>
     a6c:	0e 94 16 06 	call	0xc2c	; 0xc2c <__fp_pscA>
     a70:	40 f0       	brcs	.+16     	; 0xa82 <.L_nan>
     a72:	29 f4       	brne	.+10     	; 0xa7e <.L_zr>
     a74:	5f 3f       	cpi	r21, 0xFF	; 255
     a76:	29 f0       	breq	.+10     	; 0xa82 <.L_nan>

00000a78 <.L_inf>:
     a78:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__fp_inf>

00000a7c <.L1^B1>:
     a7c:	51 11       	cpse	r21, r1

00000a7e <.L_zr>:
     a7e:	0c 94 58 06 	jmp	0xcb0	; 0xcb0 <__fp_szero>

00000a82 <.L_nan>:
     a82:	0c 94 13 06 	jmp	0xc26	; 0xc26 <__fp_nan>

00000a86 <__divsf3x>:
     a86:	0e 94 35 06 	call	0xc6a	; 0xc6a <__fp_split3>
     a8a:	68 f3       	brcs	.-38     	; 0xa66 <.L0^B1>

00000a8c <__divsf3_pse>:
     a8c:	99 23       	and	r25, r25
     a8e:	b1 f3       	breq	.-20     	; 0xa7c <.L1^B1>
     a90:	55 23       	and	r21, r21
     a92:	91 f3       	breq	.-28     	; 0xa78 <.L_inf>
     a94:	95 1b       	sub	r25, r21
     a96:	55 0b       	sbc	r21, r21
     a98:	bb 27       	eor	r27, r27
     a9a:	aa 27       	eor	r26, r26

00000a9c <.L2^B1>:
     a9c:	62 17       	cp	r22, r18
     a9e:	73 07       	cpc	r23, r19
     aa0:	84 07       	cpc	r24, r20
     aa2:	38 f0       	brcs	.+14     	; 0xab2 <.L3^B1>
     aa4:	9f 5f       	subi	r25, 0xFF	; 255
     aa6:	5f 4f       	sbci	r21, 0xFF	; 255
     aa8:	22 0f       	add	r18, r18
     aaa:	33 1f       	adc	r19, r19
     aac:	44 1f       	adc	r20, r20
     aae:	aa 1f       	adc	r26, r26
     ab0:	a9 f3       	breq	.-22     	; 0xa9c <.L2^B1>

00000ab2 <.L3^B1>:
     ab2:	35 d0       	rcall	.+106    	; 0xb1e <.L_div>
     ab4:	0e 2e       	mov	r0, r30
     ab6:	3a f0       	brmi	.+14     	; 0xac6 <.L5^B1>

00000ab8 <.L4^B1>:
     ab8:	e0 e8       	ldi	r30, 0x80	; 128
     aba:	32 d0       	rcall	.+100    	; 0xb20 <.L_div1>
     abc:	91 50       	subi	r25, 0x01	; 1
     abe:	50 40       	sbci	r21, 0x00	; 0
     ac0:	e6 95       	lsr	r30
     ac2:	00 1c       	adc	r0, r0
     ac4:	ca f7       	brpl	.-14     	; 0xab8 <.L4^B1>

00000ac6 <.L5^B1>:
     ac6:	2b d0       	rcall	.+86     	; 0xb1e <.L_div>
     ac8:	fe 2f       	mov	r31, r30
     aca:	29 d0       	rcall	.+82     	; 0xb1e <.L_div>
     acc:	66 0f       	add	r22, r22
     ace:	77 1f       	adc	r23, r23
     ad0:	88 1f       	adc	r24, r24
     ad2:	bb 1f       	adc	r27, r27
     ad4:	26 17       	cp	r18, r22
     ad6:	37 07       	cpc	r19, r23
     ad8:	48 07       	cpc	r20, r24
     ada:	ab 07       	cpc	r26, r27
     adc:	b0 e8       	ldi	r27, 0x80	; 128
     ade:	09 f0       	breq	.+2      	; 0xae2 <.L4^B2>
     ae0:	bb 0b       	sbc	r27, r27

00000ae2 <.L4^B2>:
     ae2:	80 2d       	mov	r24, r0
     ae4:	bf 01       	movw	r22, r30
     ae6:	ff 27       	eor	r31, r31
     ae8:	93 58       	subi	r25, 0x83	; 131
     aea:	5f 4f       	sbci	r21, 0xFF	; 255
     aec:	3a f0       	brmi	.+14     	; 0xafc <.L13^B1>
     aee:	9e 3f       	cpi	r25, 0xFE	; 254
     af0:	51 05       	cpc	r21, r1
     af2:	78 f0       	brcs	.+30     	; 0xb12 <.L15^B1>
     af4:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__fp_inf>

00000af8 <.L12^B1>:
     af8:	0c 94 58 06 	jmp	0xcb0	; 0xcb0 <__fp_szero>

00000afc <.L13^B1>:
     afc:	5f 3f       	cpi	r21, 0xFF	; 255
     afe:	e4 f3       	brlt	.-8      	; 0xaf8 <.L12^B1>
     b00:	98 3e       	cpi	r25, 0xE8	; 232
     b02:	d4 f3       	brlt	.-12     	; 0xaf8 <.L12^B1>

00000b04 <.L14^B1>:
     b04:	86 95       	lsr	r24
     b06:	77 95       	ror	r23
     b08:	67 95       	ror	r22
     b0a:	b7 95       	ror	r27
     b0c:	f7 95       	ror	r31
     b0e:	9f 5f       	subi	r25, 0xFF	; 255
     b10:	c9 f7       	brne	.-14     	; 0xb04 <.L14^B1>

00000b12 <.L15^B1>:
     b12:	88 0f       	add	r24, r24
     b14:	91 1d       	adc	r25, r1
     b16:	96 95       	lsr	r25
     b18:	87 95       	ror	r24
     b1a:	97 f9       	bld	r25, 7
     b1c:	08 95       	ret

00000b1e <.L_div>:
     b1e:	e1 e0       	ldi	r30, 0x01	; 1

00000b20 <.L_div1>:
     b20:	66 0f       	add	r22, r22
     b22:	77 1f       	adc	r23, r23
     b24:	88 1f       	adc	r24, r24
     b26:	bb 1f       	adc	r27, r27
     b28:	62 17       	cp	r22, r18
     b2a:	73 07       	cpc	r23, r19
     b2c:	84 07       	cpc	r24, r20
     b2e:	ba 07       	cpc	r27, r26
     b30:	20 f0       	brcs	.+8      	; 0xb3a <.L2^B2>
     b32:	62 1b       	sub	r22, r18
     b34:	73 0b       	sbc	r23, r19
     b36:	84 0b       	sbc	r24, r20
     b38:	ba 0b       	sbc	r27, r26

00000b3a <.L2^B2>:
     b3a:	ee 1f       	adc	r30, r30
     b3c:	88 f7       	brcc	.-30     	; 0xb20 <.L_div1>
     b3e:	e0 95       	com	r30
     b40:	08 95       	ret

00000b42 <__fixunssfsi>:
     b42:	0e 94 3d 06 	call	0xc7a	; 0xc7a <__fp_splitA>
     b46:	88 f0       	brcs	.+34     	; 0xb6a <.L_err>
     b48:	9f 57       	subi	r25, 0x7F	; 127
     b4a:	98 f0       	brcs	.+38     	; 0xb72 <.L_zr>
     b4c:	b9 2f       	mov	r27, r25
     b4e:	99 27       	eor	r25, r25
     b50:	b7 51       	subi	r27, 0x17	; 23
     b52:	b0 f0       	brcs	.+44     	; 0xb80 <.L4^B1>
     b54:	e1 f0       	breq	.+56     	; 0xb8e <.L_sign>

00000b56 <.L1^B1>:
     b56:	66 0f       	add	r22, r22
     b58:	77 1f       	adc	r23, r23
     b5a:	88 1f       	adc	r24, r24
     b5c:	99 1f       	adc	r25, r25
     b5e:	1a f0       	brmi	.+6      	; 0xb66 <.L2^B1>
     b60:	ba 95       	dec	r27
     b62:	c9 f7       	brne	.-14     	; 0xb56 <.L1^B1>
     b64:	14 c0       	rjmp	.+40     	; 0xb8e <.L_sign>

00000b66 <.L2^B1>:
     b66:	b1 30       	cpi	r27, 0x01	; 1
     b68:	91 f0       	breq	.+36     	; 0xb8e <.L_sign>

00000b6a <.L_err>:
     b6a:	0e 94 57 06 	call	0xcae	; 0xcae <__fp_zero>
     b6e:	b1 e0       	ldi	r27, 0x01	; 1
     b70:	08 95       	ret

00000b72 <.L_zr>:
     b72:	0c 94 57 06 	jmp	0xcae	; 0xcae <__fp_zero>

00000b76 <.L3^B1>:
     b76:	67 2f       	mov	r22, r23
     b78:	78 2f       	mov	r23, r24
     b7a:	88 27       	eor	r24, r24
     b7c:	b8 5f       	subi	r27, 0xF8	; 248
     b7e:	39 f0       	breq	.+14     	; 0xb8e <.L_sign>

00000b80 <.L4^B1>:
     b80:	b9 3f       	cpi	r27, 0xF9	; 249
     b82:	cc f3       	brlt	.-14     	; 0xb76 <.L3^B1>

00000b84 <.L5^B1>:
     b84:	86 95       	lsr	r24
     b86:	77 95       	ror	r23
     b88:	67 95       	ror	r22
     b8a:	b3 95       	inc	r27
     b8c:	d9 f7       	brne	.-10     	; 0xb84 <.L5^B1>

00000b8e <.L_sign>:
     b8e:	3e f4       	brtc	.+14     	; 0xb9e <.L6^B1>
     b90:	90 95       	com	r25
     b92:	80 95       	com	r24
     b94:	70 95       	com	r23
     b96:	61 95       	neg	r22
     b98:	7f 4f       	sbci	r23, 0xFF	; 255
     b9a:	8f 4f       	sbci	r24, 0xFF	; 255
     b9c:	9f 4f       	sbci	r25, 0xFF	; 255

00000b9e <.L6^B1>:
     b9e:	08 95       	ret

00000ba0 <__floatunsisf>:
     ba0:	e8 94       	clt
     ba2:	09 c0       	rjmp	.+18     	; 0xbb6 <.L1^B1>

00000ba4 <__floatsisf>:
     ba4:	97 fb       	bst	r25, 7
     ba6:	3e f4       	brtc	.+14     	; 0xbb6 <.L1^B1>
     ba8:	90 95       	com	r25
     baa:	80 95       	com	r24
     bac:	70 95       	com	r23
     bae:	61 95       	neg	r22
     bb0:	7f 4f       	sbci	r23, 0xFF	; 255
     bb2:	8f 4f       	sbci	r24, 0xFF	; 255
     bb4:	9f 4f       	sbci	r25, 0xFF	; 255

00000bb6 <.L1^B1>:
     bb6:	99 23       	and	r25, r25
     bb8:	a9 f0       	breq	.+42     	; 0xbe4 <.L4^B1>
     bba:	f9 2f       	mov	r31, r25
     bbc:	96 e9       	ldi	r25, 0x96	; 150
     bbe:	bb 27       	eor	r27, r27

00000bc0 <.L2^B1>:
     bc0:	93 95       	inc	r25
     bc2:	f6 95       	lsr	r31
     bc4:	87 95       	ror	r24
     bc6:	77 95       	ror	r23
     bc8:	67 95       	ror	r22
     bca:	b7 95       	ror	r27
     bcc:	f1 11       	cpse	r31, r1
     bce:	f8 cf       	rjmp	.-16     	; 0xbc0 <.L2^B1>
     bd0:	fa f4       	brpl	.+62     	; 0xc10 <.L_pack>
     bd2:	bb 0f       	add	r27, r27
     bd4:	11 f4       	brne	.+4      	; 0xbda <.L3^B1>
     bd6:	60 ff       	sbrs	r22, 0
     bd8:	1b c0       	rjmp	.+54     	; 0xc10 <.L_pack>

00000bda <.L3^B1>:
     bda:	6f 5f       	subi	r22, 0xFF	; 255
     bdc:	7f 4f       	sbci	r23, 0xFF	; 255
     bde:	8f 4f       	sbci	r24, 0xFF	; 255
     be0:	9f 4f       	sbci	r25, 0xFF	; 255
     be2:	16 c0       	rjmp	.+44     	; 0xc10 <.L_pack>

00000be4 <.L4^B1>:
     be4:	88 23       	and	r24, r24
     be6:	11 f0       	breq	.+4      	; 0xbec <.L5^B1>
     be8:	96 e9       	ldi	r25, 0x96	; 150
     bea:	11 c0       	rjmp	.+34     	; 0xc0e <.L8^B1>

00000bec <.L5^B1>:
     bec:	77 23       	and	r23, r23
     bee:	21 f0       	breq	.+8      	; 0xbf8 <.L6^B1>
     bf0:	9e e8       	ldi	r25, 0x8E	; 142
     bf2:	87 2f       	mov	r24, r23
     bf4:	76 2f       	mov	r23, r22
     bf6:	05 c0       	rjmp	.+10     	; 0xc02 <.L7^B1>

00000bf8 <.L6^B1>:
     bf8:	66 23       	and	r22, r22
     bfa:	71 f0       	breq	.+28     	; 0xc18 <.L9^B1>
     bfc:	96 e8       	ldi	r25, 0x86	; 134
     bfe:	86 2f       	mov	r24, r22
     c00:	70 e0       	ldi	r23, 0x00	; 0

00000c02 <.L7^B1>:
     c02:	60 e0       	ldi	r22, 0x00	; 0
     c04:	2a f0       	brmi	.+10     	; 0xc10 <.L_pack>

00000c06 <.L10^B1>:
     c06:	9a 95       	dec	r25
     c08:	66 0f       	add	r22, r22
     c0a:	77 1f       	adc	r23, r23
     c0c:	88 1f       	adc	r24, r24

00000c0e <.L8^B1>:
     c0e:	da f7       	brpl	.-10     	; 0xc06 <.L10^B1>

00000c10 <.L_pack>:
     c10:	88 0f       	add	r24, r24
     c12:	96 95       	lsr	r25
     c14:	87 95       	ror	r24
     c16:	97 f9       	bld	r25, 7

00000c18 <.L9^B1>:
     c18:	08 95       	ret

00000c1a <__fp_inf>:
     c1a:	97 f9       	bld	r25, 7
     c1c:	9f 67       	ori	r25, 0x7F	; 127
     c1e:	80 e8       	ldi	r24, 0x80	; 128
     c20:	70 e0       	ldi	r23, 0x00	; 0
     c22:	60 e0       	ldi	r22, 0x00	; 0
     c24:	08 95       	ret

00000c26 <__fp_nan>:
     c26:	9f ef       	ldi	r25, 0xFF	; 255
     c28:	80 ec       	ldi	r24, 0xC0	; 192
     c2a:	08 95       	ret

00000c2c <__fp_pscA>:
     c2c:	00 24       	eor	r0, r0
     c2e:	0a 94       	dec	r0
     c30:	16 16       	cp	r1, r22
     c32:	17 06       	cpc	r1, r23
     c34:	18 06       	cpc	r1, r24
     c36:	09 06       	cpc	r0, r25
     c38:	08 95       	ret

00000c3a <__fp_pscB>:
     c3a:	00 24       	eor	r0, r0
     c3c:	0a 94       	dec	r0
     c3e:	12 16       	cp	r1, r18
     c40:	13 06       	cpc	r1, r19
     c42:	14 06       	cpc	r1, r20
     c44:	05 06       	cpc	r0, r21
     c46:	08 95       	ret

00000c48 <__fp_round>:
     c48:	09 2e       	mov	r0, r25
     c4a:	03 94       	inc	r0
     c4c:	00 0c       	add	r0, r0
     c4e:	11 f4       	brne	.+4      	; 0xc54 <.L1^B1>
     c50:	88 23       	and	r24, r24
     c52:	52 f0       	brmi	.+20     	; 0xc68 <.L3^B1>

00000c54 <.L1^B1>:
     c54:	bb 0f       	add	r27, r27
     c56:	40 f4       	brcc	.+16     	; 0xc68 <.L3^B1>
     c58:	bf 2b       	or	r27, r31
     c5a:	11 f4       	brne	.+4      	; 0xc60 <.L2^B1>
     c5c:	60 ff       	sbrs	r22, 0
     c5e:	04 c0       	rjmp	.+8      	; 0xc68 <.L3^B1>

00000c60 <.L2^B1>:
     c60:	6f 5f       	subi	r22, 0xFF	; 255
     c62:	7f 4f       	sbci	r23, 0xFF	; 255
     c64:	8f 4f       	sbci	r24, 0xFF	; 255
     c66:	9f 4f       	sbci	r25, 0xFF	; 255

00000c68 <.L3^B1>:
     c68:	08 95       	ret

00000c6a <__fp_split3>:
     c6a:	57 fd       	sbrc	r21, 7
     c6c:	90 58       	subi	r25, 0x80	; 128
     c6e:	44 0f       	add	r20, r20
     c70:	55 1f       	adc	r21, r21
     c72:	59 f0       	breq	.+22     	; 0xc8a <.L4^B1>
     c74:	5f 3f       	cpi	r21, 0xFF	; 255
     c76:	71 f0       	breq	.+28     	; 0xc94 <.L5^B1>

00000c78 <.L1^B1>:
     c78:	47 95       	ror	r20

00000c7a <__fp_splitA>:
     c7a:	88 0f       	add	r24, r24
     c7c:	97 fb       	bst	r25, 7
     c7e:	99 1f       	adc	r25, r25
     c80:	61 f0       	breq	.+24     	; 0xc9a <.L6^B1>
     c82:	9f 3f       	cpi	r25, 0xFF	; 255
     c84:	79 f0       	breq	.+30     	; 0xca4 <.L7^B1>

00000c86 <.L3^B1>:
     c86:	87 95       	ror	r24
     c88:	08 95       	ret

00000c8a <.L4^B1>:
     c8a:	12 16       	cp	r1, r18
     c8c:	13 06       	cpc	r1, r19
     c8e:	14 06       	cpc	r1, r20
     c90:	55 1f       	adc	r21, r21
     c92:	f2 cf       	rjmp	.-28     	; 0xc78 <.L1^B1>

00000c94 <.L5^B1>:
     c94:	46 95       	lsr	r20
     c96:	f1 df       	rcall	.-30     	; 0xc7a <__fp_splitA>
     c98:	08 c0       	rjmp	.+16     	; 0xcaa <.L8^B1>

00000c9a <.L6^B1>:
     c9a:	16 16       	cp	r1, r22
     c9c:	17 06       	cpc	r1, r23
     c9e:	18 06       	cpc	r1, r24
     ca0:	99 1f       	adc	r25, r25
     ca2:	f1 cf       	rjmp	.-30     	; 0xc86 <.L3^B1>

00000ca4 <.L7^B1>:
     ca4:	86 95       	lsr	r24
     ca6:	71 05       	cpc	r23, r1
     ca8:	61 05       	cpc	r22, r1

00000caa <.L8^B1>:
     caa:	08 94       	sec
     cac:	08 95       	ret

00000cae <__fp_zero>:
     cae:	e8 94       	clt

00000cb0 <__fp_szero>:
     cb0:	bb 27       	eor	r27, r27
     cb2:	66 27       	eor	r22, r22
     cb4:	77 27       	eor	r23, r23
     cb6:	cb 01       	movw	r24, r22
     cb8:	97 f9       	bld	r25, 7
     cba:	08 95       	ret

00000cbc <__mulsf3>:
     cbc:	0e 94 71 06 	call	0xce2	; 0xce2 <__mulsf3x>
     cc0:	0c 94 24 06 	jmp	0xc48	; 0xc48 <__fp_round>

00000cc4 <.L0^B1>:
     cc4:	0e 94 16 06 	call	0xc2c	; 0xc2c <__fp_pscA>
     cc8:	38 f0       	brcs	.+14     	; 0xcd8 <.L1^B1>
     cca:	0e 94 1d 06 	call	0xc3a	; 0xc3a <__fp_pscB>
     cce:	20 f0       	brcs	.+8      	; 0xcd8 <.L1^B1>
     cd0:	95 23       	and	r25, r21
     cd2:	11 f0       	breq	.+4      	; 0xcd8 <.L1^B1>
     cd4:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__fp_inf>

00000cd8 <.L1^B1>:
     cd8:	0c 94 13 06 	jmp	0xc26	; 0xc26 <__fp_nan>

00000cdc <.L2^B1>:
     cdc:	11 24       	eor	r1, r1
     cde:	0c 94 58 06 	jmp	0xcb0	; 0xcb0 <__fp_szero>

00000ce2 <__mulsf3x>:
     ce2:	0e 94 35 06 	call	0xc6a	; 0xc6a <__fp_split3>
     ce6:	70 f3       	brcs	.-36     	; 0xcc4 <.L0^B1>

00000ce8 <__mulsf3_pse>:
     ce8:	95 9f       	mul	r25, r21
     cea:	c1 f3       	breq	.-16     	; 0xcdc <.L2^B1>
     cec:	95 0f       	add	r25, r21
     cee:	50 e0       	ldi	r21, 0x00	; 0
     cf0:	55 1f       	adc	r21, r21
     cf2:	62 9f       	mul	r22, r18
     cf4:	f0 01       	movw	r30, r0
     cf6:	72 9f       	mul	r23, r18
     cf8:	bb 27       	eor	r27, r27
     cfa:	f0 0d       	add	r31, r0
     cfc:	b1 1d       	adc	r27, r1
     cfe:	63 9f       	mul	r22, r19
     d00:	aa 27       	eor	r26, r26
     d02:	f0 0d       	add	r31, r0
     d04:	b1 1d       	adc	r27, r1
     d06:	aa 1f       	adc	r26, r26
     d08:	64 9f       	mul	r22, r20
     d0a:	66 27       	eor	r22, r22
     d0c:	b0 0d       	add	r27, r0
     d0e:	a1 1d       	adc	r26, r1
     d10:	66 1f       	adc	r22, r22
     d12:	82 9f       	mul	r24, r18
     d14:	22 27       	eor	r18, r18
     d16:	b0 0d       	add	r27, r0
     d18:	a1 1d       	adc	r26, r1
     d1a:	62 1f       	adc	r22, r18
     d1c:	73 9f       	mul	r23, r19
     d1e:	b0 0d       	add	r27, r0
     d20:	a1 1d       	adc	r26, r1
     d22:	62 1f       	adc	r22, r18
     d24:	83 9f       	mul	r24, r19
     d26:	a0 0d       	add	r26, r0
     d28:	61 1d       	adc	r22, r1
     d2a:	22 1f       	adc	r18, r18
     d2c:	74 9f       	mul	r23, r20
     d2e:	33 27       	eor	r19, r19
     d30:	a0 0d       	add	r26, r0
     d32:	61 1d       	adc	r22, r1
     d34:	23 1f       	adc	r18, r19
     d36:	84 9f       	mul	r24, r20
     d38:	60 0d       	add	r22, r0
     d3a:	21 1d       	adc	r18, r1
     d3c:	82 2f       	mov	r24, r18
     d3e:	76 2f       	mov	r23, r22
     d40:	6a 2f       	mov	r22, r26
     d42:	11 24       	eor	r1, r1
     d44:	9f 57       	subi	r25, 0x7F	; 127
     d46:	50 40       	sbci	r21, 0x00	; 0
     d48:	9a f0       	brmi	.+38     	; 0xd70 <.L13^B1>
     d4a:	f1 f0       	breq	.+60     	; 0xd88 <.L15^B1>

00000d4c <.L10^B1>:
     d4c:	88 23       	and	r24, r24
     d4e:	4a f0       	brmi	.+18     	; 0xd62 <.L11^B1>
     d50:	ee 0f       	add	r30, r30
     d52:	ff 1f       	adc	r31, r31
     d54:	bb 1f       	adc	r27, r27
     d56:	66 1f       	adc	r22, r22
     d58:	77 1f       	adc	r23, r23
     d5a:	88 1f       	adc	r24, r24
     d5c:	91 50       	subi	r25, 0x01	; 1
     d5e:	50 40       	sbci	r21, 0x00	; 0
     d60:	a9 f7       	brne	.-22     	; 0xd4c <.L10^B1>

00000d62 <.L11^B1>:
     d62:	9e 3f       	cpi	r25, 0xFE	; 254
     d64:	51 05       	cpc	r21, r1
     d66:	80 f0       	brcs	.+32     	; 0xd88 <.L15^B1>
     d68:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__fp_inf>

00000d6c <.L12^B1>:
     d6c:	0c 94 58 06 	jmp	0xcb0	; 0xcb0 <__fp_szero>

00000d70 <.L13^B1>:
     d70:	5f 3f       	cpi	r21, 0xFF	; 255
     d72:	e4 f3       	brlt	.-8      	; 0xd6c <.L12^B1>
     d74:	98 3e       	cpi	r25, 0xE8	; 232
     d76:	d4 f3       	brlt	.-12     	; 0xd6c <.L12^B1>

00000d78 <.L14^B1>:
     d78:	86 95       	lsr	r24
     d7a:	77 95       	ror	r23
     d7c:	67 95       	ror	r22
     d7e:	b7 95       	ror	r27
     d80:	f7 95       	ror	r31
     d82:	e7 95       	ror	r30
     d84:	9f 5f       	subi	r25, 0xFF	; 255
     d86:	c1 f7       	brne	.-16     	; 0xd78 <.L14^B1>

00000d88 <.L15^B1>:
     d88:	fe 2b       	or	r31, r30
     d8a:	88 0f       	add	r24, r24
     d8c:	91 1d       	adc	r25, r1
     d8e:	96 95       	lsr	r25
     d90:	87 95       	ror	r24
     d92:	97 f9       	bld	r25, 7
     d94:	08 95       	ret

00000d96 <sprintf>:
     d96:	ae e0       	ldi	r26, 0x0E	; 14
     d98:	b0 e0       	ldi	r27, 0x00	; 0
     d9a:	e1 ed       	ldi	r30, 0xD1	; 209
     d9c:	f6 e0       	ldi	r31, 0x06	; 6
     d9e:	0c 94 9c 09 	jmp	0x1338	; 0x1338 <.Loc.16>

00000da2 <.L1^B1>:
     da2:	86 e0       	ldi	r24, 0x06	; 6
     da4:	8c 83       	std	Y+4, r24	; 0x04
     da6:	2b 89       	ldd	r18, Y+19	; 0x13
     da8:	3c 89       	ldd	r19, Y+20	; 0x14
     daa:	29 83       	std	Y+1, r18	; 0x01
     dac:	3a 83       	std	Y+2, r19	; 0x02
     dae:	8f ef       	ldi	r24, 0xFF	; 255
     db0:	9f e7       	ldi	r25, 0x7F	; 127
     db2:	8d 83       	std	Y+5, r24	; 0x05
     db4:	9e 83       	std	Y+6, r25	; 0x06
     db6:	ae 01       	movw	r20, r28
     db8:	49 5e       	subi	r20, 0xE9	; 233
     dba:	5f 4f       	sbci	r21, 0xFF	; 255
     dbc:	6d 89       	ldd	r22, Y+21	; 0x15
     dbe:	7e 89       	ldd	r23, Y+22	; 0x16
     dc0:	ce 01       	movw	r24, r28
     dc2:	01 96       	adiw	r24, 0x01	; 1
     dc4:	0e 94 ef 06 	call	0xdde	; 0xdde <vfprintf>
     dc8:	ef 81       	ldd	r30, Y+7	; 0x07
     dca:	f8 85       	ldd	r31, Y+8	; 0x08
     dcc:	2b 89       	ldd	r18, Y+19	; 0x13
     dce:	3c 89       	ldd	r19, Y+20	; 0x14
     dd0:	e2 0f       	add	r30, r18
     dd2:	f3 1f       	adc	r31, r19
     dd4:	10 82       	st	Z, r1
     dd6:	2e 96       	adiw	r28, 0x0e	; 14
     dd8:	e2 e0       	ldi	r30, 0x02	; 2
     dda:	0c 94 b8 09 	jmp	0x1370	; 0x1370 <.Loc.16>

00000dde <vfprintf>:
     dde:	ab e0       	ldi	r26, 0x0B	; 11
     de0:	b0 e0       	ldi	r27, 0x00	; 0
     de2:	e5 ef       	ldi	r30, 0xF5	; 245
     de4:	f6 e0       	ldi	r31, 0x06	; 6
     de6:	0c 94 8f 09 	jmp	0x131e	; 0x131e <.Loc.3>

00000dea <.L1^B1>:
     dea:	6c 01       	movw	r12, r24
     dec:	7b 01       	movw	r14, r22
     dee:	8a 01       	movw	r16, r20
     df0:	fc 01       	movw	r30, r24
     df2:	16 82       	std	Z+6, r1	; 0x06
     df4:	17 82       	std	Z+7, r1	; 0x07
     df6:	83 81       	ldd	r24, Z+3	; 0x03
     df8:	81 ff       	sbrs	r24, 1
     dfa:	df c1       	rjmp	.+958    	; 0x11ba <.L80>
     dfc:	3a e0       	ldi	r19, 0x0A	; 10
     dfe:	53 2e       	mov	r5, r19

00000e00 <.L3>:
     e00:	f6 01       	movw	r30, r12
     e02:	23 81       	ldd	r18, Z+3	; 0x03
     e04:	f7 01       	movw	r30, r14
     e06:	23 fd       	sbrc	r18, 3
     e08:	85 91       	lpm	r24, Z+
     e0a:	23 ff       	sbrs	r18, 3
     e0c:	81 91       	ld	r24, Z+
     e0e:	7f 01       	movw	r14, r30
     e10:	81 15       	cp	r24, r1
     e12:	09 f4       	brne	.+2      	; 0xe16 <L0^A+0x2>

00000e14 <L0^A>:
     e14:	37 c1       	rjmp	.+622    	; 0x1084 <.L4>
     e16:	85 32       	cpi	r24, 0x25	; 37
     e18:	39 f4       	brne	.+14     	; 0xe28 <.L5>
     e1a:	23 fd       	sbrc	r18, 3
     e1c:	95 91       	lpm	r25, Z+
     e1e:	23 ff       	sbrs	r18, 3
     e20:	91 91       	ld	r25, Z+
     e22:	7f 01       	movw	r14, r30
     e24:	95 32       	cpi	r25, 0x25	; 37
     e26:	29 f4       	brne	.+10     	; 0xe32 <.L81>

00000e28 <.L5>:
     e28:	b6 01       	movw	r22, r12
     e2a:	90 e0       	ldi	r25, 0x00	; 0
     e2c:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
     e30:	e7 cf       	rjmp	.-50     	; 0xe00 <.L3>

00000e32 <.L81>:
     e32:	30 e0       	ldi	r19, 0x00	; 0
     e34:	91 2c       	mov	r9, r1
     e36:	61 2c       	mov	r6, r1
     e38:	71 2c       	mov	r7, r1

00000e3a <.L6>:
     e3a:	f0 e2       	ldi	r31, 0x20	; 32
     e3c:	7f 16       	cp	r7, r31
     e3e:	40 f5       	brcc	.+80     	; 0xe90 <.L8>
     e40:	9b 32       	cpi	r25, 0x2B	; 43
     e42:	d9 f0       	breq	.+54     	; 0xe7a <.L9>
     e44:	58 f4       	brcc	.+22     	; 0xe5c <.L10>
     e46:	90 32       	cpi	r25, 0x20	; 32
     e48:	d1 f0       	breq	.+52     	; 0xe7e <.L11>
     e4a:	93 32       	cpi	r25, 0x23	; 35
     e4c:	f1 f0       	breq	.+60     	; 0xe8a <.L12>

00000e4e <.L13>:
     e4e:	9e 32       	cpi	r25, 0x2E	; 46
     e50:	91 f5       	brne	.+100    	; 0xeb6 <.L19>
     e52:	76 fc       	sbrc	r7, 6
     e54:	17 c1       	rjmp	.+558    	; 0x1084 <.L4>
     e56:	68 94       	set
     e58:	76 f8       	bld	r7, 6
     e5a:	06 c0       	rjmp	.+12     	; 0xe68 <.L16>

00000e5c <.L10>:
     e5c:	9d 32       	cpi	r25, 0x2D	; 45
     e5e:	91 f0       	breq	.+36     	; 0xe84 <.L14>
     e60:	90 33       	cpi	r25, 0x30	; 48
     e62:	c1 f4       	brne	.+48     	; 0xe94 <.L15>
     e64:	68 94       	set
     e66:	70 f8       	bld	r7, 0

00000e68 <.L16>:
     e68:	f7 01       	movw	r30, r14
     e6a:	23 fd       	sbrc	r18, 3
     e6c:	95 91       	lpm	r25, Z+
     e6e:	23 ff       	sbrs	r18, 3
     e70:	91 91       	ld	r25, Z+
     e72:	7f 01       	movw	r14, r30
     e74:	91 11       	cpse	r25, r1
     e76:	e1 cf       	rjmp	.-62     	; 0xe3a <.L6>
     e78:	28 c0       	rjmp	.+80     	; 0xeca <.L17>

00000e7a <.L9>:
     e7a:	68 94       	set
     e7c:	71 f8       	bld	r7, 1

00000e7e <.L11>:
     e7e:	68 94       	set
     e80:	72 f8       	bld	r7, 2
     e82:	f2 cf       	rjmp	.-28     	; 0xe68 <.L16>

00000e84 <.L14>:
     e84:	68 94       	set
     e86:	73 f8       	bld	r7, 3
     e88:	ef cf       	rjmp	.-34     	; 0xe68 <.L16>

00000e8a <.L12>:
     e8a:	68 94       	set
     e8c:	74 f8       	bld	r7, 4
     e8e:	ec cf       	rjmp	.-40     	; 0xe68 <.L16>

00000e90 <.L8>:
     e90:	77 fc       	sbrc	r7, 7
     e92:	1b c0       	rjmp	.+54     	; 0xeca <.L17>

00000e94 <.L15>:
     e94:	80 ed       	ldi	r24, 0xD0	; 208
     e96:	89 0f       	add	r24, r25
     e98:	8a 30       	cpi	r24, 0x0A	; 10
     e9a:	c8 f6       	brcc	.-78     	; 0xe4e <.L13>
     e9c:	76 fe       	sbrs	r7, 6
     e9e:	05 c0       	rjmp	.+10     	; 0xeaa <.L18>
     ea0:	95 9c       	mul	r9, r5
     ea2:	80 0d       	add	r24, r0
     ea4:	11 24       	eor	r1, r1
     ea6:	98 2e       	mov	r9, r24
     ea8:	df cf       	rjmp	.-66     	; 0xe68 <.L16>

00000eaa <.L18>:
     eaa:	65 9c       	mul	r6, r5
     eac:	80 0d       	add	r24, r0
     eae:	11 24       	eor	r1, r1
     eb0:	68 2e       	mov	r6, r24
     eb2:	7f 2a       	or	r7, r31
     eb4:	d9 cf       	rjmp	.-78     	; 0xe68 <.L16>

00000eb6 <.L19>:
     eb6:	9c 36       	cpi	r25, 0x6C	; 108
     eb8:	19 f4       	brne	.+6      	; 0xec0 <.L20>
     eba:	68 94       	set
     ebc:	77 f8       	bld	r7, 7
     ebe:	d4 cf       	rjmp	.-88     	; 0xe68 <.L16>

00000ec0 <.L20>:
     ec0:	9c 34       	cpi	r25, 0x4C	; 76
     ec2:	09 f4       	brne	.+2      	; 0xec6 <L0^A+0x2>

00000ec4 <L0^A>:
     ec4:	45 c0       	rjmp	.+138    	; 0xf50 <.L82>
     ec6:	98 36       	cpi	r25, 0x68	; 104
     ec8:	79 f2       	breq	.-98     	; 0xe68 <.L16>

00000eca <.L17>:
     eca:	89 2f       	mov	r24, r25
     ecc:	8f 7d       	andi	r24, 0xDF	; 223
     ece:	85 54       	subi	r24, 0x45	; 69
     ed0:	83 30       	cpi	r24, 0x03	; 3
     ed2:	08 f4       	brcc	.+2      	; 0xed6 <L0^A+0x2>

00000ed4 <L0^A>:
     ed4:	3f c0       	rjmp	.+126    	; 0xf54 <.L21>
     ed6:	93 36       	cpi	r25, 0x63	; 99
     ed8:	09 f4       	brne	.+2      	; 0xedc <L0^A+0x2>

00000eda <L0^A>:
     eda:	61 c0       	rjmp	.+194    	; 0xf9e <.L22>
     edc:	93 37       	cpi	r25, 0x73	; 115
     ede:	09 f4       	brne	.+2      	; 0xee2 <L0^A+0x2>

00000ee0 <L0^A>:
     ee0:	6b c0       	rjmp	.+214    	; 0xfb8 <.L23>
     ee2:	93 35       	cpi	r25, 0x53	; 83
     ee4:	09 f4       	brne	.+2      	; 0xee8 <L0^A+0x2>

00000ee6 <L0^A>:
     ee6:	77 c0       	rjmp	.+238    	; 0xfd6 <.L24>
     ee8:	94 36       	cpi	r25, 0x64	; 100
     eea:	19 f0       	breq	.+6      	; 0xef2 <.L39>
     eec:	99 36       	cpi	r25, 0x69	; 105
     eee:	09 f0       	breq	.+2      	; 0xef2 <.L39>

00000ef0 <L0^A>:
     ef0:	a4 c0       	rjmp	.+328    	; 0x103a <.L40>

00000ef2 <.L39>:
     ef2:	f8 01       	movw	r30, r16
     ef4:	77 fe       	sbrs	r7, 7
     ef6:	9a c0       	rjmp	.+308    	; 0x102c <.L41>
     ef8:	61 91       	ld	r22, Z+
     efa:	71 91       	ld	r23, Z+
     efc:	81 91       	ld	r24, Z+
     efe:	91 91       	ld	r25, Z+

00000f00 <.L126>:
     f00:	8f 01       	movw	r16, r30
     f02:	27 2d       	mov	r18, r7
     f04:	2f 76       	andi	r18, 0x6F	; 111
     f06:	82 2e       	mov	r8, r18
     f08:	97 ff       	sbrs	r25, 7
     f0a:	04 c0       	rjmp	.+8      	; 0xf14 <.L43>
     f0c:	0e 94 84 09 	call	0x1308	; 0x1308 <__negsi2>
     f10:	68 94       	set
     f12:	87 f8       	bld	r8, 7

00000f14 <.L43>:
     f14:	2a e0       	ldi	r18, 0x0A	; 10
     f16:	30 e0       	ldi	r19, 0x00	; 0
     f18:	5e 01       	movw	r10, r28
     f1a:	4f ef       	ldi	r20, 0xFF	; 255
     f1c:	a4 1a       	sub	r10, r20
     f1e:	b4 0a       	sbc	r11, r20
     f20:	a5 01       	movw	r20, r10
     f22:	0e 94 26 09 	call	0x124c	; 0x124c <__ultoa_invert>
     f26:	78 2e       	mov	r7, r24
     f28:	7a 18       	sub	r7, r10

00000f2a <.L44>:
     f2a:	86 fe       	sbrs	r8, 6
     f2c:	cf c0       	rjmp	.+414    	; 0x10cc <.L54>
     f2e:	88 2d       	mov	r24, r8
     f30:	8e 7f       	andi	r24, 0xFE	; 254
     f32:	79 14       	cp	r7, r9
     f34:	08 f0       	brcs	.+2      	; 0xf38 <L0^A+0x2>

00000f36 <L0^A>:
     f36:	c9 c0       	rjmp	.+402    	; 0x10ca <.L88>
     f38:	84 fe       	sbrs	r8, 4
     f3a:	1d c1       	rjmp	.+570    	; 0x1176 <.L89>
     f3c:	82 fc       	sbrc	r8, 2
     f3e:	11 c1       	rjmp	.+546    	; 0x1162 <.L90>
     f40:	2e ee       	ldi	r18, 0xEE	; 238
     f42:	82 22       	and	r8, r18
     f44:	b9 2c       	mov	r11, r9

00000f46 <.L55>:
     f46:	88 2d       	mov	r24, r8
     f48:	86 78       	andi	r24, 0x86	; 134
     f4a:	09 f4       	brne	.+2      	; 0xf4e <L0^A+0x2>

00000f4c <L0^A>:
     f4c:	cb c0       	rjmp	.+406    	; 0x10e4 <.L58>
     f4e:	0e c1       	rjmp	.+540    	; 0x116c <.L128>

00000f50 <.L82>:
     f50:	31 e0       	ldi	r19, 0x01	; 1
     f52:	8a cf       	rjmp	.-236    	; 0xe68 <.L16>

00000f54 <.L21>:
     f54:	31 15       	cp	r19, r1
     f56:	01 f1       	breq	.+64     	; 0xf98 <.L26>
     f58:	08 5f       	subi	r16, 0xF8	; 248
     f5a:	1f 4f       	sbci	r17, 0xFF	; 255

00000f5c <.L27>:
     f5c:	8f e3       	ldi	r24, 0x3F	; 63
     f5e:	89 83       	std	Y+1, r24	; 0x01
     f60:	21 e0       	ldi	r18, 0x01	; 1
     f62:	82 2e       	mov	r8, r18
     f64:	91 2c       	mov	r9, r1
     f66:	5e 01       	movw	r10, r28
     f68:	2f ef       	ldi	r18, 0xFF	; 255
     f6a:	a2 1a       	sub	r10, r18
     f6c:	b2 0a       	sbc	r11, r18

00000f6e <.L28>:
     f6e:	e8 94       	clt
     f70:	77 f8       	bld	r7, 7

00000f72 <.L30>:
     f72:	73 fc       	sbrc	r7, 3
     f74:	03 c0       	rjmp	.+6      	; 0xf7c <.L36>

00000f76 <.L32>:
     f76:	86 14       	cp	r8, r6
     f78:	91 04       	cpc	r9, r1
     f7a:	f0 f1       	brcs	.+124    	; 0xff8 <.L34>

00000f7c <.L36>:
     f7c:	81 14       	cp	r8, r1
     f7e:	91 04       	cpc	r9, r1
     f80:	09 f0       	breq	.+2      	; 0xf84 <.L77>

00000f82 <L0^A>:
     f82:	41 c0       	rjmp	.+130    	; 0x1006 <.L37>

00000f84 <.L77>:
     f84:	61 14       	cp	r6, r1
     f86:	09 f4       	brne	.+2      	; 0xf8a <L0^A+0x2>

00000f88 <L0^A>:
     f88:	3b cf       	rjmp	.-394    	; 0xe00 <.L3>
     f8a:	b6 01       	movw	r22, r12
     f8c:	80 e2       	ldi	r24, 0x20	; 32
     f8e:	90 e0       	ldi	r25, 0x00	; 0
     f90:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
     f94:	6a 94       	dec	r6
     f96:	f6 cf       	rjmp	.-20     	; 0xf84 <.L77>

00000f98 <.L26>:
     f98:	0c 5f       	subi	r16, 0xFC	; 252
     f9a:	1f 4f       	sbci	r17, 0xFF	; 255
     f9c:	df cf       	rjmp	.-66     	; 0xf5c <.L27>

00000f9e <.L22>:
     f9e:	f8 01       	movw	r30, r16
     fa0:	80 81       	ld	r24, Z
     fa2:	89 83       	std	Y+1, r24	; 0x01
     fa4:	0e 5f       	subi	r16, 0xFE	; 254
     fa6:	1f 4f       	sbci	r17, 0xFF	; 255
     fa8:	91 e0       	ldi	r25, 0x01	; 1
     faa:	89 2e       	mov	r8, r25
     fac:	91 2c       	mov	r9, r1
     fae:	5e 01       	movw	r10, r28
     fb0:	ff ef       	ldi	r31, 0xFF	; 255
     fb2:	af 1a       	sub	r10, r31
     fb4:	bf 0a       	sbc	r11, r31
     fb6:	db cf       	rjmp	.-74     	; 0xf6e <.L28>

00000fb8 <.L23>:
     fb8:	f8 01       	movw	r30, r16
     fba:	a1 90       	ld	r10, Z+
     fbc:	b1 90       	ld	r11, Z+
     fbe:	8f 01       	movw	r16, r30
     fc0:	69 2d       	mov	r22, r9
     fc2:	70 e0       	ldi	r23, 0x00	; 0
     fc4:	76 fc       	sbrc	r7, 6
     fc6:	02 c0       	rjmp	.+4      	; 0xfcc <.L29>
     fc8:	6f ef       	ldi	r22, 0xFF	; 255
     fca:	7f ef       	ldi	r23, 0xFF	; 255

00000fcc <.L29>:
     fcc:	c5 01       	movw	r24, r10
     fce:	0e 94 eb 08 	call	0x11d6	; 0x11d6 <strnlen>
     fd2:	4c 01       	movw	r8, r24
     fd4:	cc cf       	rjmp	.-104    	; 0xf6e <.L28>

00000fd6 <.L24>:
     fd6:	f8 01       	movw	r30, r16
     fd8:	a1 90       	ld	r10, Z+
     fda:	b1 90       	ld	r11, Z+
     fdc:	8f 01       	movw	r16, r30
     fde:	69 2d       	mov	r22, r9
     fe0:	70 e0       	ldi	r23, 0x00	; 0
     fe2:	76 fc       	sbrc	r7, 6
     fe4:	02 c0       	rjmp	.+4      	; 0xfea <.L31>
     fe6:	6f ef       	ldi	r22, 0xFF	; 255
     fe8:	7f ef       	ldi	r23, 0xFF	; 255

00000fea <.L31>:
     fea:	c5 01       	movw	r24, r10
     fec:	0e 94 e0 08 	call	0x11c0	; 0x11c0 <strnlen_P>
     ff0:	4c 01       	movw	r8, r24
     ff2:	68 94       	set
     ff4:	77 f8       	bld	r7, 7
     ff6:	bd cf       	rjmp	.-134    	; 0xf72 <.L30>

00000ff8 <.L34>:
     ff8:	b6 01       	movw	r22, r12
     ffa:	80 e2       	ldi	r24, 0x20	; 32
     ffc:	90 e0       	ldi	r25, 0x00	; 0
     ffe:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    1002:	6a 94       	dec	r6
    1004:	b8 cf       	rjmp	.-144    	; 0xf76 <.L32>

00001006 <.L37>:
    1006:	f5 01       	movw	r30, r10
    1008:	77 fc       	sbrc	r7, 7
    100a:	85 91       	lpm	r24, Z+
    100c:	77 fe       	sbrs	r7, 7
    100e:	81 91       	ld	r24, Z+
    1010:	5f 01       	movw	r10, r30
    1012:	b6 01       	movw	r22, r12
    1014:	90 e0       	ldi	r25, 0x00	; 0
    1016:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    101a:	81 e0       	ldi	r24, 0x01	; 1
    101c:	61 10       	cpse	r6, r1
    101e:	01 c0       	rjmp	.+2      	; 0x1022 <.L35>
    1020:	80 e0       	ldi	r24, 0x00	; 0

00001022 <.L35>:
    1022:	68 1a       	sub	r6, r24
    1024:	f1 e0       	ldi	r31, 0x01	; 1
    1026:	8f 1a       	sub	r8, r31
    1028:	91 08       	sbc	r9, r1
    102a:	a8 cf       	rjmp	.-176    	; 0xf7c <.L36>

0000102c <.L41>:
    102c:	61 91       	ld	r22, Z+
    102e:	71 91       	ld	r23, Z+
    1030:	87 2f       	mov	r24, r23
    1032:	88 0f       	add	r24, r24
    1034:	88 0b       	sbc	r24, r24
    1036:	98 2f       	mov	r25, r24
    1038:	63 cf       	rjmp	.-314    	; 0xf00 <.L126>

0000103a <.L40>:
    103a:	95 37       	cpi	r25, 0x75	; 117
    103c:	c9 f4       	brne	.+50     	; 0x1070 <.L45>
    103e:	87 2c       	mov	r8, r7
    1040:	e8 94       	clt
    1042:	84 f8       	bld	r8, 4
    1044:	2a e0       	ldi	r18, 0x0A	; 10
    1046:	30 e0       	ldi	r19, 0x00	; 0

00001048 <.L46>:
    1048:	f8 01       	movw	r30, r16
    104a:	87 fe       	sbrs	r8, 7
    104c:	39 c0       	rjmp	.+114    	; 0x10c0 <.L52>
    104e:	61 91       	ld	r22, Z+
    1050:	71 91       	ld	r23, Z+
    1052:	81 91       	ld	r24, Z+
    1054:	91 91       	ld	r25, Z+

00001056 <.L127>:
    1056:	8f 01       	movw	r16, r30
    1058:	5e 01       	movw	r10, r28
    105a:	ff ef       	ldi	r31, 0xFF	; 255
    105c:	af 1a       	sub	r10, r31
    105e:	bf 0a       	sbc	r11, r31
    1060:	a5 01       	movw	r20, r10
    1062:	0e 94 26 09 	call	0x124c	; 0x124c <__ultoa_invert>
    1066:	78 2e       	mov	r7, r24
    1068:	7a 18       	sub	r7, r10
    106a:	e8 94       	clt
    106c:	87 f8       	bld	r8, 7
    106e:	5d cf       	rjmp	.-326    	; 0xf2a <.L44>

00001070 <.L45>:
    1070:	87 2d       	mov	r24, r7
    1072:	89 7f       	andi	r24, 0xF9	; 249
    1074:	88 2e       	mov	r8, r24
    1076:	90 37       	cpi	r25, 0x70	; 112
    1078:	99 f0       	breq	.+38     	; 0x10a0 <.L47>
    107a:	58 f4       	brcc	.+22     	; 0x1092 <.L48>
    107c:	98 35       	cpi	r25, 0x58	; 88
    107e:	a9 f0       	breq	.+42     	; 0x10aa <.L49>
    1080:	9f 36       	cpi	r25, 0x6F	; 111
    1082:	d9 f0       	breq	.+54     	; 0x10ba <.L85>

00001084 <.L4>:
    1084:	f6 01       	movw	r30, r12
    1086:	86 81       	ldd	r24, Z+6	; 0x06
    1088:	97 81       	ldd	r25, Z+7	; 0x07

0000108a <.L1>:
    108a:	2b 96       	adiw	r28, 0x0b	; 11
    108c:	ef e0       	ldi	r30, 0x0F	; 15
    108e:	0c 94 ab 09 	jmp	0x1356	; 0x1356 <.Loc.3>

00001092 <.L48>:
    1092:	98 37       	cpi	r25, 0x78	; 120
    1094:	b9 f7       	brne	.-18     	; 0x1084 <.L4>
    1096:	74 fc       	sbrc	r7, 4
    1098:	05 c0       	rjmp	.+10     	; 0x10a4 <.L51>

0000109a <.L86>:
    109a:	20 e1       	ldi	r18, 0x10	; 16
    109c:	30 e0       	ldi	r19, 0x00	; 0
    109e:	d4 cf       	rjmp	.-88     	; 0x1048 <.L46>

000010a0 <.L47>:
    10a0:	68 94       	set
    10a2:	84 f8       	bld	r8, 4

000010a4 <.L51>:
    10a4:	68 94       	set
    10a6:	82 f8       	bld	r8, 2
    10a8:	f8 cf       	rjmp	.-16     	; 0x109a <.L86>

000010aa <.L49>:
    10aa:	74 fe       	sbrs	r7, 4
    10ac:	03 c0       	rjmp	.+6      	; 0x10b4 <.L87>
    10ae:	e7 2d       	mov	r30, r7
    10b0:	e6 60       	ori	r30, 0x06	; 6
    10b2:	8e 2e       	mov	r8, r30

000010b4 <.L87>:
    10b4:	20 e1       	ldi	r18, 0x10	; 16
    10b6:	32 e0       	ldi	r19, 0x02	; 2
    10b8:	c7 cf       	rjmp	.-114    	; 0x1048 <.L46>

000010ba <.L85>:
    10ba:	28 e0       	ldi	r18, 0x08	; 8
    10bc:	30 e0       	ldi	r19, 0x00	; 0
    10be:	c4 cf       	rjmp	.-120    	; 0x1048 <.L46>

000010c0 <.L52>:
    10c0:	61 91       	ld	r22, Z+
    10c2:	71 91       	ld	r23, Z+
    10c4:	80 e0       	ldi	r24, 0x00	; 0
    10c6:	90 e0       	ldi	r25, 0x00	; 0
    10c8:	c6 cf       	rjmp	.-116    	; 0x1056 <.L127>

000010ca <.L88>:
    10ca:	88 2e       	mov	r8, r24

000010cc <.L54>:
    10cc:	b7 2c       	mov	r11, r7
    10ce:	84 fe       	sbrs	r8, 4
    10d0:	3a cf       	rjmp	.-396    	; 0xf46 <.L55>

000010d2 <.L56>:
    10d2:	fe 01       	movw	r30, r28
    10d4:	e7 0d       	add	r30, r7
    10d6:	f1 1d       	adc	r31, r1
    10d8:	80 81       	ld	r24, Z
    10da:	80 33       	cpi	r24, 0x30	; 48
    10dc:	09 f0       	breq	.+2      	; 0x10e0 <L0^A+0x2>

000010de <L0^A>:
    10de:	44 c0       	rjmp	.+136    	; 0x1168 <.L57>
    10e0:	49 ee       	ldi	r20, 0xE9	; 233
    10e2:	84 22       	and	r8, r20

000010e4 <.L58>:
    10e4:	83 fc       	sbrc	r8, 3
    10e6:	0e c0       	rjmp	.+28     	; 0x1104 <.L60>
    10e8:	80 fe       	sbrs	r8, 0
    10ea:	51 c0       	rjmp	.+162    	; 0x118e <.L92>
    10ec:	97 2c       	mov	r9, r7
    10ee:	b6 14       	cp	r11, r6
    10f0:	18 f4       	brcc	.+6      	; 0x10f8 <.L79>
    10f2:	96 0c       	add	r9, r6
    10f4:	9b 18       	sub	r9, r11
    10f6:	b6 2c       	mov	r11, r6

000010f8 <.L79>:
    10f8:	86 2d       	mov	r24, r6
    10fa:	8b 19       	sub	r24, r11
    10fc:	6b 14       	cp	r6, r11
    10fe:	08 f4       	brcc	.+2      	; 0x1102 <.L65>
    1100:	80 e0       	ldi	r24, 0x00	; 0

00001102 <.L65>:
    1102:	b8 0e       	add	r11, r24

00001104 <.L60>:
    1104:	b6 14       	cp	r11, r6
    1106:	08 f0       	brcs	.+2      	; 0x110a <L0^A+0x2>

00001108 <L0^A>:
    1108:	44 c0       	rjmp	.+136    	; 0x1192 <.L94>
    110a:	6b 18       	sub	r6, r11

0000110c <.L67>:
    110c:	84 fe       	sbrs	r8, 4
    110e:	43 c0       	rjmp	.+134    	; 0x1196 <.L68>
    1110:	b6 01       	movw	r22, r12
    1112:	80 e3       	ldi	r24, 0x30	; 48
    1114:	90 e0       	ldi	r25, 0x00	; 0
    1116:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    111a:	82 fe       	sbrs	r8, 2
    111c:	09 c0       	rjmp	.+18     	; 0x1130 <.L74>
    111e:	88 e5       	ldi	r24, 0x58	; 88
    1120:	90 e0       	ldi	r25, 0x00	; 0
    1122:	81 fc       	sbrc	r8, 1
    1124:	02 c0       	rjmp	.+4      	; 0x112a <.L70>
    1126:	88 e7       	ldi	r24, 0x78	; 120
    1128:	90 e0       	ldi	r25, 0x00	; 0

0000112a <.L70>:
    112a:	b6 01       	movw	r22, r12

0000112c <.L129>:
    112c:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>

00001130 <.L74>:
    1130:	79 14       	cp	r7, r9
    1132:	e0 f1       	brcs	.+120    	; 0x11ac <.L75>
    1134:	5e 01       	movw	r10, r28
    1136:	8f ef       	ldi	r24, 0xFF	; 255
    1138:	a8 1a       	sub	r10, r24
    113a:	b8 0a       	sbc	r11, r24
    113c:	7a 94       	dec	r7
    113e:	82 e0       	ldi	r24, 0x02	; 2
    1140:	88 2e       	mov	r8, r24
    1142:	91 2c       	mov	r9, r1
    1144:	8c 0e       	add	r8, r28
    1146:	9d 1e       	adc	r9, r29
    1148:	87 0c       	add	r8, r7
    114a:	91 1c       	adc	r9, r1

0000114c <.L76>:
    114c:	f4 01       	movw	r30, r8
    114e:	82 91       	ld	r24, -Z
    1150:	4f 01       	movw	r8, r30
    1152:	b6 01       	movw	r22, r12
    1154:	90 e0       	ldi	r25, 0x00	; 0
    1156:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    115a:	8a 14       	cp	r8, r10
    115c:	9b 04       	cpc	r9, r11
    115e:	b1 f7       	brne	.-20     	; 0x114c <.L76>
    1160:	11 cf       	rjmp	.-478    	; 0xf84 <.L77>

00001162 <.L90>:
    1162:	b9 2c       	mov	r11, r9
    1164:	88 2e       	mov	r8, r24
    1166:	b5 cf       	rjmp	.-150    	; 0x10d2 <.L56>

00001168 <.L57>:
    1168:	82 fc       	sbrc	r8, 2
    116a:	02 c0       	rjmp	.+4      	; 0x1170 <.L59>

0000116c <.L128>:
    116c:	b3 94       	inc	r11
    116e:	ba cf       	rjmp	.-140    	; 0x10e4 <.L58>

00001170 <.L59>:
    1170:	b3 94       	inc	r11
    1172:	b3 94       	inc	r11
    1174:	b7 cf       	rjmp	.-146    	; 0x10e4 <.L58>

00001176 <.L89>:
    1176:	b9 2c       	mov	r11, r9
    1178:	88 2e       	mov	r8, r24
    117a:	e5 ce       	rjmp	.-566    	; 0xf46 <.L55>

0000117c <.L63>:
    117c:	b6 01       	movw	r22, r12
    117e:	80 e2       	ldi	r24, 0x20	; 32
    1180:	90 e0       	ldi	r25, 0x00	; 0
    1182:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    1186:	a3 94       	inc	r10

00001188 <.L61>:
    1188:	a6 14       	cp	r10, r6
    118a:	c0 f3       	brcs	.-16     	; 0x117c <.L63>
    118c:	b5 cf       	rjmp	.-150    	; 0x10f8 <.L79>

0000118e <.L92>:
    118e:	ab 2c       	mov	r10, r11
    1190:	fb cf       	rjmp	.-10     	; 0x1188 <.L61>

00001192 <.L94>:
    1192:	61 2c       	mov	r6, r1
    1194:	bb cf       	rjmp	.-138    	; 0x110c <.L67>

00001196 <.L68>:
    1196:	88 2d       	mov	r24, r8
    1198:	86 78       	andi	r24, 0x86	; 134
    119a:	51 f2       	breq	.-108    	; 0x1130 <.L74>
    119c:	80 e2       	ldi	r24, 0x20	; 32
    119e:	81 fc       	sbrc	r8, 1
    11a0:	8b e2       	ldi	r24, 0x2B	; 43
    11a2:	87 fc       	sbrc	r8, 7
    11a4:	8d e2       	ldi	r24, 0x2D	; 45
    11a6:	b6 01       	movw	r22, r12
    11a8:	90 e0       	ldi	r25, 0x00	; 0
    11aa:	c0 cf       	rjmp	.-128    	; 0x112c <.L129>

000011ac <.L75>:
    11ac:	b6 01       	movw	r22, r12
    11ae:	80 e3       	ldi	r24, 0x30	; 48
    11b0:	90 e0       	ldi	r25, 0x00	; 0
    11b2:	0e 94 f6 08 	call	0x11ec	; 0x11ec <fputc>
    11b6:	9a 94       	dec	r9
    11b8:	bb cf       	rjmp	.-138    	; 0x1130 <.L74>

000011ba <.L80>:
    11ba:	8f ef       	ldi	r24, 0xFF	; 255
    11bc:	9f ef       	ldi	r25, 0xFF	; 255
    11be:	65 cf       	rjmp	.-310    	; 0x108a <.L1>

000011c0 <strnlen_P>:
    11c0:	fc 01       	movw	r30, r24

000011c2 <.L_strnlen_P_loop>:
    11c2:	05 90       	lpm	r0, Z+
    11c4:	61 50       	subi	r22, 0x01	; 1
    11c6:	70 40       	sbci	r23, 0x00	; 0
    11c8:	01 10       	cpse	r0, r1
    11ca:	d8 f7       	brcc	.-10     	; 0x11c2 <.L_strnlen_P_loop>
    11cc:	80 95       	com	r24
    11ce:	90 95       	com	r25
    11d0:	8e 0f       	add	r24, r30
    11d2:	9f 1f       	adc	r25, r31
    11d4:	08 95       	ret

000011d6 <strnlen>:
    11d6:	fc 01       	movw	r30, r24

000011d8 <.L_strnlen_loop>:
    11d8:	61 50       	subi	r22, 0x01	; 1
    11da:	70 40       	sbci	r23, 0x00	; 0
    11dc:	01 90       	ld	r0, Z+
    11de:	01 10       	cpse	r0, r1
    11e0:	d8 f7       	brcc	.-10     	; 0x11d8 <.L_strnlen_loop>
    11e2:	80 95       	com	r24
    11e4:	90 95       	com	r25
    11e6:	8e 0f       	add	r24, r30
    11e8:	9f 1f       	adc	r25, r31
    11ea:	08 95       	ret

000011ec <fputc>:
    11ec:	0f 93       	push	r16
    11ee:	1f 93       	push	r17
    11f0:	cf 93       	push	r28
    11f2:	df 93       	push	r29
    11f4:	18 2f       	mov	r17, r24
    11f6:	09 2f       	mov	r16, r25
    11f8:	eb 01       	movw	r28, r22
    11fa:	8b 81       	ldd	r24, Y+3	; 0x03
    11fc:	81 fd       	sbrc	r24, 1
    11fe:	09 c0       	rjmp	.+18     	; 0x1212 <.L2>

00001200 <.L7>:
    1200:	0f ef       	ldi	r16, 0xFF	; 255
    1202:	1f ef       	ldi	r17, 0xFF	; 255

00001204 <.L3>:
    1204:	81 2f       	mov	r24, r17
    1206:	90 2f       	mov	r25, r16
    1208:	df 91       	pop	r29
    120a:	cf 91       	pop	r28
    120c:	1f 91       	pop	r17
    120e:	0f 91       	pop	r16
    1210:	08 95       	ret

00001212 <.L2>:
    1212:	82 ff       	sbrs	r24, 2
    1214:	14 c0       	rjmp	.+40     	; 0x123e <.L4>
    1216:	2e 81       	ldd	r18, Y+6	; 0x06
    1218:	3f 81       	ldd	r19, Y+7	; 0x07
    121a:	8c 81       	ldd	r24, Y+4	; 0x04
    121c:	9d 81       	ldd	r25, Y+5	; 0x05
    121e:	28 17       	cp	r18, r24
    1220:	39 07       	cpc	r19, r25
    1222:	3c f4       	brge	.+14     	; 0x1232 <.L8>
    1224:	e8 81       	ld	r30, Y
    1226:	f9 81       	ldd	r31, Y+1	; 0x01
    1228:	cf 01       	movw	r24, r30
    122a:	01 96       	adiw	r24, 0x01	; 1
    122c:	88 83       	st	Y, r24
    122e:	99 83       	std	Y+1, r25	; 0x01
    1230:	10 83       	st	Z, r17

00001232 <.L8>:
    1232:	8e 81       	ldd	r24, Y+6	; 0x06
    1234:	9f 81       	ldd	r25, Y+7	; 0x07
    1236:	01 96       	adiw	r24, 0x01	; 1
    1238:	8e 83       	std	Y+6, r24	; 0x06
    123a:	9f 83       	std	Y+7, r25	; 0x07
    123c:	e3 cf       	rjmp	.-58     	; 0x1204 <.L3>

0000123e <.L4>:
    123e:	e8 85       	ldd	r30, Y+8	; 0x08
    1240:	f9 85       	ldd	r31, Y+9	; 0x09
    1242:	81 2f       	mov	r24, r17
    1244:	09 95       	icall
    1246:	89 2b       	or	r24, r25
    1248:	a1 f3       	breq	.-24     	; 0x1232 <.L8>
    124a:	da cf       	rjmp	.-76     	; 0x1200 <.L7>

0000124c <__ultoa_invert>:
    124c:	fa 01       	movw	r30, r20
    124e:	aa 27       	eor	r26, r26
    1250:	28 30       	cpi	r18, 0x08	; 8
    1252:	51 f1       	breq	.+84     	; 0x12a8 <.L_oct>
    1254:	20 31       	cpi	r18, 0x10	; 16
    1256:	81 f1       	breq	.+96     	; 0x12b8 <.L_hex>
    1258:	e8 94       	clt

0000125a <.L_dec_loop>:
    125a:	6f 93       	push	r22
    125c:	6e 7f       	andi	r22, 0xFE	; 254
    125e:	6e 5f       	subi	r22, 0xFE	; 254
    1260:	7f 4f       	sbci	r23, 0xFF	; 255
    1262:	8f 4f       	sbci	r24, 0xFF	; 255
    1264:	9f 4f       	sbci	r25, 0xFF	; 255
    1266:	af 4f       	sbci	r26, 0xFF	; 255
    1268:	b1 e0       	ldi	r27, 0x01	; 1
    126a:	3e d0       	rcall	.+124    	; 0x12e8 <.L_div_add>
    126c:	b4 e0       	ldi	r27, 0x04	; 4
    126e:	3c d0       	rcall	.+120    	; 0x12e8 <.L_div_add>
    1270:	67 0f       	add	r22, r23
    1272:	78 1f       	adc	r23, r24
    1274:	89 1f       	adc	r24, r25
    1276:	9a 1f       	adc	r25, r26
    1278:	a1 1d       	adc	r26, r1
    127a:	68 0f       	add	r22, r24
    127c:	79 1f       	adc	r23, r25
    127e:	8a 1f       	adc	r24, r26
    1280:	91 1d       	adc	r25, r1
    1282:	a1 1d       	adc	r26, r1
    1284:	6a 0f       	add	r22, r26
    1286:	71 1d       	adc	r23, r1
    1288:	81 1d       	adc	r24, r1
    128a:	91 1d       	adc	r25, r1
    128c:	a1 1d       	adc	r26, r1
    128e:	20 d0       	rcall	.+64     	; 0x12d0 <.L_lsr_4>
    1290:	09 f4       	brne	.+2      	; 0x1294 <.L1^B1>
    1292:	68 94       	set

00001294 <.L1^B1>:
    1294:	3f 91       	pop	r19
    1296:	2a e0       	ldi	r18, 0x0A	; 10
    1298:	26 9f       	mul	r18, r22
    129a:	11 24       	eor	r1, r1
    129c:	30 19       	sub	r19, r0
    129e:	30 5d       	subi	r19, 0xD0	; 208
    12a0:	31 93       	st	Z+, r19
    12a2:	de f6       	brtc	.-74     	; 0x125a <.L_dec_loop>

000012a4 <.L_eos>:
    12a4:	cf 01       	movw	r24, r30
    12a6:	08 95       	ret

000012a8 <.L_oct>:
    12a8:	46 2f       	mov	r20, r22
    12aa:	47 70       	andi	r20, 0x07	; 7
    12ac:	40 5d       	subi	r20, 0xD0	; 208
    12ae:	41 93       	st	Z+, r20
    12b0:	b3 e0       	ldi	r27, 0x03	; 3
    12b2:	0f d0       	rcall	.+30     	; 0x12d2 <.L_lsr>
    12b4:	c9 f7       	brne	.-14     	; 0x12a8 <.L_oct>
    12b6:	f6 cf       	rjmp	.-20     	; 0x12a4 <.L_eos>

000012b8 <.L_hex>:
    12b8:	46 2f       	mov	r20, r22
    12ba:	4f 70       	andi	r20, 0x0F	; 15
    12bc:	40 5d       	subi	r20, 0xD0	; 208
    12be:	4a 33       	cpi	r20, 0x3A	; 58
    12c0:	18 f0       	brcs	.+6      	; 0x12c8 <.L3^B1>
    12c2:	49 5d       	subi	r20, 0xD9	; 217
    12c4:	31 fd       	sbrc	r19, 1
    12c6:	40 52       	subi	r20, 0x20	; 32

000012c8 <.L3^B1>:
    12c8:	41 93       	st	Z+, r20
    12ca:	02 d0       	rcall	.+4      	; 0x12d0 <.L_lsr_4>
    12cc:	a9 f7       	brne	.-22     	; 0x12b8 <.L_hex>
    12ce:	ea cf       	rjmp	.-44     	; 0x12a4 <.L_eos>

000012d0 <.L_lsr_4>:
    12d0:	b4 e0       	ldi	r27, 0x04	; 4

000012d2 <.L_lsr>:
    12d2:	a6 95       	lsr	r26
    12d4:	97 95       	ror	r25
    12d6:	87 95       	ror	r24
    12d8:	77 95       	ror	r23
    12da:	67 95       	ror	r22
    12dc:	ba 95       	dec	r27
    12de:	c9 f7       	brne	.-14     	; 0x12d2 <.L_lsr>
    12e0:	00 97       	sbiw	r24, 0x00	; 0
    12e2:	61 05       	cpc	r22, r1
    12e4:	71 05       	cpc	r23, r1
    12e6:	08 95       	ret

000012e8 <.L_div_add>:
    12e8:	9b 01       	movw	r18, r22
    12ea:	ac 01       	movw	r20, r24
    12ec:	0a 2e       	mov	r0, r26

000012ee <.L7^B1>:
    12ee:	06 94       	lsr	r0
    12f0:	57 95       	ror	r21
    12f2:	47 95       	ror	r20
    12f4:	37 95       	ror	r19
    12f6:	27 95       	ror	r18
    12f8:	ba 95       	dec	r27
    12fa:	c9 f7       	brne	.-14     	; 0x12ee <.L7^B1>
    12fc:	62 0f       	add	r22, r18
    12fe:	73 1f       	adc	r23, r19
    1300:	84 1f       	adc	r24, r20
    1302:	95 1f       	adc	r25, r21
    1304:	a0 1d       	adc	r26, r0
    1306:	08 95       	ret

00001308 <__negsi2>:
    1308:	90 95       	com	r25
    130a:	80 95       	com	r24
    130c:	70 95       	com	r23
    130e:	61 95       	neg	r22
    1310:	7f 4f       	sbci	r23, 0xFF	; 255
    1312:	8f 4f       	sbci	r24, 0xFF	; 255
    1314:	9f 4f       	sbci	r25, 0xFF	; 255

00001316 <.Loc.1>:
    1316:	08 95       	ret

00001318 <__prologue_saves__>:
    1318:	2f 92       	push	r2

0000131a <.Loc.1>:
    131a:	3f 92       	push	r3

0000131c <.Loc.2>:
    131c:	4f 92       	push	r4

0000131e <.Loc.3>:
    131e:	5f 92       	push	r5

00001320 <.Loc.4>:
    1320:	6f 92       	push	r6

00001322 <.Loc.5>:
    1322:	7f 92       	push	r7

00001324 <.Loc.6>:
    1324:	8f 92       	push	r8

00001326 <.Loc.7>:
    1326:	9f 92       	push	r9

00001328 <.Loc.8>:
    1328:	af 92       	push	r10

0000132a <.Loc.9>:
    132a:	bf 92       	push	r11

0000132c <.Loc.10>:
    132c:	cf 92       	push	r12

0000132e <.Loc.11>:
    132e:	df 92       	push	r13

00001330 <.Loc.12>:
    1330:	ef 92       	push	r14

00001332 <.Loc.13>:
    1332:	ff 92       	push	r15

00001334 <.Loc.14>:
    1334:	0f 93       	push	r16

00001336 <.Loc.15>:
    1336:	1f 93       	push	r17

00001338 <.Loc.16>:
    1338:	cf 93       	push	r28

0000133a <.Loc.17>:
    133a:	df 93       	push	r29

0000133c <.Loc.18>:
    133c:	cd b7       	in	r28, 0x3d	; 61

0000133e <.Loc.19>:
    133e:	de b7       	in	r29, 0x3e	; 62

00001340 <.Loc.20>:
    1340:	ca 1b       	sub	r28, r26

00001342 <.Loc.21>:
    1342:	db 0b       	sbc	r29, r27

00001344 <.Loc.22>:
    1344:	0f b6       	in	r0, 0x3f	; 63

00001346 <.Loc.23>:
    1346:	f8 94       	cli

00001348 <.Loc.24>:
    1348:	de bf       	out	0x3e, r29	; 62

0000134a <.Loc.25>:
    134a:	0f be       	out	0x3f, r0	; 63

0000134c <.Loc.26>:
    134c:	cd bf       	out	0x3d, r28	; 61

0000134e <.Loc.27>:
    134e:	09 94       	ijmp

00001350 <__epilogue_restores__>:
    1350:	2a 88       	ldd	r2, Y+18	; 0x12

00001352 <.Loc.1>:
    1352:	39 88       	ldd	r3, Y+17	; 0x11

00001354 <.Loc.2>:
    1354:	48 88       	ldd	r4, Y+16	; 0x10

00001356 <.Loc.3>:
    1356:	5f 84       	ldd	r5, Y+15	; 0x0f

00001358 <.Loc.4>:
    1358:	6e 84       	ldd	r6, Y+14	; 0x0e

0000135a <.Loc.5>:
    135a:	7d 84       	ldd	r7, Y+13	; 0x0d

0000135c <.Loc.6>:
    135c:	8c 84       	ldd	r8, Y+12	; 0x0c

0000135e <.Loc.7>:
    135e:	9b 84       	ldd	r9, Y+11	; 0x0b

00001360 <.Loc.8>:
    1360:	aa 84       	ldd	r10, Y+10	; 0x0a

00001362 <.Loc.9>:
    1362:	b9 84       	ldd	r11, Y+9	; 0x09

00001364 <.Loc.10>:
    1364:	c8 84       	ldd	r12, Y+8	; 0x08

00001366 <.Loc.11>:
    1366:	df 80       	ldd	r13, Y+7	; 0x07

00001368 <.Loc.12>:
    1368:	ee 80       	ldd	r14, Y+6	; 0x06

0000136a <.Loc.13>:
    136a:	fd 80       	ldd	r15, Y+5	; 0x05

0000136c <.Loc.14>:
    136c:	0c 81       	ldd	r16, Y+4	; 0x04

0000136e <.Loc.15>:
    136e:	1b 81       	ldd	r17, Y+3	; 0x03

00001370 <.Loc.16>:
    1370:	aa 81       	ldd	r26, Y+2	; 0x02

00001372 <.Loc.17>:
    1372:	b9 81       	ldd	r27, Y+1	; 0x01

00001374 <.Loc.18>:
    1374:	ce 0f       	add	r28, r30

00001376 <.Loc.19>:
    1376:	d1 1d       	adc	r29, r1

00001378 <.Loc.20>:
    1378:	0f b6       	in	r0, 0x3f	; 63

0000137a <.Loc.21>:
    137a:	f8 94       	cli

0000137c <.Loc.22>:
    137c:	de bf       	out	0x3e, r29	; 62

0000137e <.Loc.23>:
    137e:	0f be       	out	0x3f, r0	; 63

00001380 <.Loc.24>:
    1380:	cd bf       	out	0x3d, r28	; 61

00001382 <.Loc.25>:
    1382:	ed 01       	movw	r28, r26

00001384 <.Loc.26>:
    1384:	08 95       	ret

00001386 <_exit>:
    1386:	f8 94       	cli

00001388 <__stop_program>:
    1388:	ff cf       	rjmp	.-2      	; 0x1388 <__stop_program>
