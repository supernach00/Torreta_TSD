
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
       4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
       8:	0c 94 92 03 	jmp	0x724	; 0x724 <__vector_2>
       c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      14:	0c 94 85 03 	jmp	0x70a	; 0x70a <__vector_5>
      18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      1c:	0c 94 7b 03 	jmp	0x6f6	; 0x6f6 <__vector_7>
      20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      38:	0c 94 9c 03 	jmp	0x738	; 0x738 <__vector_14>
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
      76:	a0 e0       	ldi	r26, 0x00	; 0
      78:	b1 e0       	ldi	r27, 0x01	; 1
      7a:	e4 e9       	ldi	r30, 0x94	; 148
      7c:	f1 e1       	ldi	r31, 0x11	; 17
      7e:	02 c0       	rjmp	.+4      	; 0x84 <.Lname22+0x1>
      80:	05 90       	lpm	r0, Z+
      82:	0d 92       	st	X+, r0
      84:	a6 30       	cpi	r26, 0x06	; 6
      86:	b1 07       	cpc	r27, r17
      88:	d9 f7       	brne	.-10     	; 0x80 <.Lname21+0x4>
      8a:	0e 94 b1 03 	call	0x762	; 0x762 <main>
      8e:	0c 94 c8 08 	jmp	0x1190	; 0x1190 <_exit>

00000092 <__bad_interrupt>:
      92:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000096 <ADC_init>:
      96:	85 e4       	ldi	r24, 0x45	; 69
      98:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__TEXT_REGION_LENGTH__+0x7f807c>
      9c:	87 e8       	ldi	r24, 0x87	; 135
      9e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
      a2:	82 e0       	ldi	r24, 0x02	; 2
      a4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7f80b0>
      a8:	94 e0       	ldi	r25, 0x04	; 4
      aa:	90 93 b1 00 	sts	0x00B1, r25	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7f80b1>
      ae:	99 ef       	ldi	r25, 0xF9	; 249
      b0:	90 93 b3 00 	sts	0x00B3, r25	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7f80b3>
      b4:	80 93 70 00 	sts	0x0070, r24	; 0x800070 <__TEXT_REGION_LENGTH__+0x7f8070>
      b8:	10 92 b2 00 	sts	0x00B2, r1	; 0x8000b2 <__TEXT_REGION_LENGTH__+0x7f80b2>
      bc:	08 95       	ret

000000be <ADC_get>:
      be:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
      c2:	80 64       	ori	r24, 0x40	; 64
      c4:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>

000000c8 <.L3>:
      c8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
      cc:	84 ff       	sbrs	r24, 4
      ce:	fc cf       	rjmp	.-8      	; 0xc8 <.L3>
      d0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
      d4:	80 61       	ori	r24, 0x10	; 16
      d6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7f807a>
      da:	60 91 78 00 	lds	r22, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7f8078>
      de:	70 91 79 00 	lds	r23, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7f8079>
      e2:	80 e0       	ldi	r24, 0x00	; 0
      e4:	90 e0       	ldi	r25, 0x00	; 0
      e6:	0e 94 e4 04 	call	0x9c8	; 0x9c8 <__floatunsisf>
      ea:	26 ef       	ldi	r18, 0xF6	; 246
      ec:	38 e2       	ldi	r19, 0x28	; 40
      ee:	4c e9       	ldi	r20, 0x9C	; 156
      f0:	50 e4       	ldi	r21, 0x40	; 64
      f2:	0e 94 72 05 	call	0xae4	; 0xae4 <__mulsf3>
      f6:	0e 94 b5 04 	call	0x96a	; 0x96a <__fixunssfsi>
      fa:	cb 01       	movw	r24, r22
      fc:	08 95       	ret

000000fe <ADC_sweep>:
      fe:	ff 92       	push	r15
     100:	0f 93       	push	r16
     102:	1f 93       	push	r17
     104:	cf 93       	push	r28
     106:	df 93       	push	r29
     108:	ec 01       	movw	r28, r24
     10a:	0c e7       	ldi	r16, 0x7C	; 124
     10c:	10 e0       	ldi	r17, 0x00	; 0
     10e:	f8 01       	movw	r30, r16
     110:	10 82       	st	Z, r1
     112:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     116:	9b 83       	std	Y+3, r25	; 0x03
     118:	8a 83       	std	Y+2, r24	; 0x02
     11a:	8f e3       	ldi	r24, 0x3F	; 63
     11c:	9f e1       	ldi	r25, 0x1F	; 31

0000011e <.L1^B1>:
     11e:	01 97       	sbiw	r24, 0x01	; 1
     120:	f1 f7       	brne	.-4      	; 0x11e <.L1^B1>
     122:	00 c0       	rjmp	.+0      	; 0x124 <L0^A>

00000124 <L0^A>:
     124:	00 00       	nop
     126:	ff 24       	eor	r15, r15
     128:	f3 94       	inc	r15
     12a:	f8 01       	movw	r30, r16
     12c:	f0 82       	st	Z, r15
     12e:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     132:	99 83       	std	Y+1, r25	; 0x01
     134:	88 83       	st	Y, r24
     136:	8f e3       	ldi	r24, 0x3F	; 63
     138:	9f e1       	ldi	r25, 0x1F	; 31

0000013a <.L1^B2>:
     13a:	01 97       	sbiw	r24, 0x01	; 1
     13c:	f1 f7       	brne	.-4      	; 0x13a <.L1^B2>
     13e:	00 c0       	rjmp	.+0      	; 0x140 <L0^A>

00000140 <L0^A>:
     140:	00 00       	nop
     142:	82 e0       	ldi	r24, 0x02	; 2
     144:	f8 01       	movw	r30, r16
     146:	80 83       	st	Z, r24
     148:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     14c:	9d 83       	std	Y+5, r25	; 0x05
     14e:	8c 83       	std	Y+4, r24	; 0x04
     150:	8f e3       	ldi	r24, 0x3F	; 63
     152:	9f e1       	ldi	r25, 0x1F	; 31

00000154 <.L1^B3>:
     154:	01 97       	sbiw	r24, 0x01	; 1
     156:	f1 f7       	brne	.-4      	; 0x154 <.L1^B3>
     158:	00 c0       	rjmp	.+0      	; 0x15a <L0^A>

0000015a <L0^A>:
     15a:	00 00       	nop
     15c:	83 e0       	ldi	r24, 0x03	; 3
     15e:	f8 01       	movw	r30, r16
     160:	80 83       	st	Z, r24
     162:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     166:	9f 83       	std	Y+7, r25	; 0x07
     168:	8e 83       	std	Y+6, r24	; 0x06
     16a:	8f e3       	ldi	r24, 0x3F	; 63
     16c:	9f e1       	ldi	r25, 0x1F	; 31

0000016e <.L1^B4>:
     16e:	01 97       	sbiw	r24, 0x01	; 1
     170:	f1 f7       	brne	.-4      	; 0x16e <.L1^B4>
     172:	00 c0       	rjmp	.+0      	; 0x174 <L0^A>

00000174 <L0^A>:
     174:	00 00       	nop
     176:	84 e0       	ldi	r24, 0x04	; 4
     178:	f8 01       	movw	r30, r16
     17a:	80 83       	st	Z, r24
     17c:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     180:	99 87       	std	Y+9, r25	; 0x09
     182:	88 87       	std	Y+8, r24	; 0x08
     184:	8f e3       	ldi	r24, 0x3F	; 63
     186:	9f e1       	ldi	r25, 0x1F	; 31

00000188 <.L1^B5>:
     188:	01 97       	sbiw	r24, 0x01	; 1
     18a:	f1 f7       	brne	.-4      	; 0x188 <.L1^B5>
     18c:	00 c0       	rjmp	.+0      	; 0x18e <L0^A>

0000018e <L0^A>:
     18e:	00 00       	nop
     190:	f8 01       	movw	r30, r16
     192:	f0 82       	st	Z, r15
     194:	0e 94 5f 00 	call	0xbe	; 0xbe <ADC_get>
     198:	9b 87       	std	Y+11, r25	; 0x0b
     19a:	8a 87       	std	Y+10, r24	; 0x0a
     19c:	8f e3       	ldi	r24, 0x3F	; 63
     19e:	9f e1       	ldi	r25, 0x1F	; 31

000001a0 <.L1^B6>:
     1a0:	01 97       	sbiw	r24, 0x01	; 1
     1a2:	f1 f7       	brne	.-4      	; 0x1a0 <.L1^B6>
     1a4:	00 c0       	rjmp	.+0      	; 0x1a6 <L0^A>

000001a6 <L0^A>:
     1a6:	00 00       	nop
     1a8:	df 91       	pop	r29
     1aa:	cf 91       	pop	r28
     1ac:	1f 91       	pop	r17
     1ae:	0f 91       	pop	r16
     1b0:	ff 90       	pop	r15
     1b2:	08 95       	ret

000001b4 <volts_to_D>:
     1b4:	bc 01       	movw	r22, r24
     1b6:	80 e0       	ldi	r24, 0x00	; 0
     1b8:	90 e0       	ldi	r25, 0x00	; 0
     1ba:	0e 94 e4 04 	call	0x9c8	; 0x9c8 <__floatunsisf>
     1be:	20 e0       	ldi	r18, 0x00	; 0
     1c0:	30 e0       	ldi	r19, 0x00	; 0
     1c2:	4a e7       	ldi	r20, 0x7A	; 122
     1c4:	56 e4       	ldi	r21, 0x46	; 70
     1c6:	0e 94 72 05 	call	0xae4	; 0xae4 <__mulsf3>
     1ca:	20 e0       	ldi	r18, 0x00	; 0
     1cc:	30 e4       	ldi	r19, 0x40	; 64
     1ce:	4c e9       	ldi	r20, 0x9C	; 156
     1d0:	55 e4       	ldi	r21, 0x45	; 69
     1d2:	0e 94 43 04 	call	0x886	; 0x886 <__divsf3>
     1d6:	20 e0       	ldi	r18, 0x00	; 0
     1d8:	30 e0       	ldi	r19, 0x00	; 0
     1da:	40 e8       	ldi	r20, 0x80	; 128
     1dc:	5f e3       	ldi	r21, 0x3F	; 63
     1de:	0e 94 d6 03 	call	0x7ac	; 0x7ac <__subsf3>
     1e2:	0e 94 b5 04 	call	0x96a	; 0x96a <__fixunssfsi>
     1e6:	cb 01       	movw	r24, r22
     1e8:	08 95       	ret

000001ea <GPIO_PORTD_IT_init>:
     1ea:	88 30       	cpi	r24, 0x08	; 8
     1ec:	d8 f4       	brcc	.+54     	; 0x224 <.L9>
     1ee:	4a b1       	in	r20, 0x0a	; 10
     1f0:	21 e0       	ldi	r18, 0x01	; 1
     1f2:	30 e0       	ldi	r19, 0x00	; 0
     1f4:	b9 01       	movw	r22, r18
     1f6:	02 c0       	rjmp	.+4      	; 0x1fc <.L2^B1>

000001f8 <.L1^B7>:
     1f8:	66 0f       	add	r22, r22
     1fa:	77 1f       	adc	r23, r23

000001fc <.L2^B1>:
     1fc:	8a 95       	dec	r24
     1fe:	e2 f7       	brpl	.-8      	; 0x1f8 <.L1^B7>
     200:	cb 01       	movw	r24, r22
     202:	96 2f       	mov	r25, r22
     204:	90 95       	com	r25
     206:	94 23       	and	r25, r20
     208:	9a b9       	out	0x0a, r25	; 10
     20a:	9b b1       	in	r25, 0x0b	; 11
     20c:	98 2b       	or	r25, r24
     20e:	9b b9       	out	0x0b, r25	; 11
     210:	90 91 68 00 	lds	r25, 0x0068	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     214:	94 60       	ori	r25, 0x04	; 4
     216:	90 93 68 00 	sts	0x0068, r25	; 0x800068 <__TEXT_REGION_LENGTH__+0x7f8068>
     21a:	90 91 6d 00 	lds	r25, 0x006D	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>
     21e:	89 2b       	or	r24, r25
     220:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7f806d>

00000224 <.L9>:
     224:	80 e0       	ldi	r24, 0x00	; 0
     226:	90 e0       	ldi	r25, 0x00	; 0
     228:	08 95       	ret

0000022a <PWM_TIM1_init>:
     22a:	21 9a       	sbi	0x04, 1	; 4
     22c:	22 9a       	sbi	0x04, 2	; 4
     22e:	22 ea       	ldi	r18, 0xA2	; 162
     230:	20 93 80 00 	sts	0x0080, r18	; 0x800080 <__TEXT_REGION_LENGTH__+0x7f8080>
     234:	2a e1       	ldi	r18, 0x1A	; 26
     236:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__TEXT_REGION_LENGTH__+0x7f8081>
     23a:	40 ed       	ldi	r20, 0xD0	; 208
     23c:	57 e0       	ldi	r21, 0x07	; 7
     23e:	84 9f       	mul	r24, r20
     240:	90 01       	movw	r18, r0
     242:	85 9f       	mul	r24, r21
     244:	30 0d       	add	r19, r0
     246:	94 9f       	mul	r25, r20
     248:	30 0d       	add	r19, r0
     24a:	11 24       	eor	r1, r1
     24c:	21 50       	subi	r18, 0x01	; 1
     24e:	31 09       	sbc	r19, r1
     250:	30 93 87 00 	sts	0x0087, r19	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     254:	20 93 86 00 	sts	0x0086, r18	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     258:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     25c:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     260:	08 95       	ret

00000262 <PWM_set_DC>:
     262:	9c 01       	movw	r18, r24
     264:	40 91 86 00 	lds	r20, 0x0086	; 0x800086 <__TEXT_REGION_LENGTH__+0x7f8086>
     268:	50 91 87 00 	lds	r21, 0x0087	; 0x800087 <__TEXT_REGION_LENGTH__+0x7f8087>
     26c:	42 9f       	mul	r20, r18
     26e:	c0 01       	movw	r24, r0
     270:	43 9f       	mul	r20, r19
     272:	90 0d       	add	r25, r0
     274:	52 9f       	mul	r21, r18
     276:	90 0d       	add	r25, r0
     278:	11 24       	eor	r1, r1
     27a:	64 e6       	ldi	r22, 0x64	; 100
     27c:	70 e0       	ldi	r23, 0x00	; 0
     27e:	0e 94 c2 03 	call	0x784	; 0x784 <__udivmodhi4>
     282:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     286:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
     28a:	08 95       	ret

0000028c <DEBUG_init>:
     28c:	25 9a       	sbi	0x04, 5	; 4
     28e:	08 95       	ret

00000290 <DEBUG_led_toggle>:
     290:	85 b1       	in	r24, 0x05	; 5
     292:	90 e2       	ldi	r25, 0x20	; 32
     294:	89 27       	eor	r24, r25
     296:	85 b9       	out	0x05, r24	; 5
     298:	08 95       	ret

0000029a <USART_init>:
     29a:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
     29e:	87 e6       	ldi	r24, 0x67	; 103
     2a0:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
     2a4:	88 e1       	ldi	r24, 0x18	; 24
     2a6:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
     2aa:	86 e0       	ldi	r24, 0x06	; 6
     2ac:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
     2b0:	08 95       	ret

000002b2 <USART_send>:
     2b2:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     2b6:	95 ff       	sbrs	r25, 5
     2b8:	fc cf       	rjmp	.-8      	; 0x2b2 <USART_send>
     2ba:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     2be:	08 95       	ret

000002c0 <USART_receive>:
     2c0:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
     2c4:	87 ff       	sbrs	r24, 7
     2c6:	fc cf       	rjmp	.-8      	; 0x2c0 <USART_receive>
     2c8:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
     2cc:	08 95       	ret

000002ce <USART_putstring>:
     2ce:	cf 93       	push	r28
     2d0:	df 93       	push	r29
     2d2:	ec 01       	movw	r28, r24

000002d4 <.L10>:
     2d4:	89 91       	ld	r24, Y+
     2d6:	81 11       	cpse	r24, r1
     2d8:	03 c0       	rjmp	.+6      	; 0x2e0 <.L11>
     2da:	df 91       	pop	r29
     2dc:	cf 91       	pop	r28
     2de:	08 95       	ret

000002e0 <.L11>:
     2e0:	0e 94 59 01 	call	0x2b2	; 0x2b2 <USART_send>
     2e4:	f7 cf       	rjmp	.-18     	; 0x2d4 <.L10>

000002e6 <USART_put_uint16>:
     2e6:	0f 93       	push	r16
     2e8:	1f 93       	push	r17
     2ea:	cf 93       	push	r28
     2ec:	df 93       	push	r29
     2ee:	cd b7       	in	r28, 0x3d	; 61
     2f0:	de b7       	in	r29, 0x3e	; 62
     2f2:	2a 97       	sbiw	r28, 0x0a	; 10
     2f4:	0f b6       	in	r0, 0x3f	; 63
     2f6:	f8 94       	cli
     2f8:	de bf       	out	0x3e, r29	; 62
     2fa:	0f be       	out	0x3f, r0	; 63
     2fc:	cd bf       	out	0x3d, r28	; 61
     2fe:	9f 93       	push	r25
     300:	8f 93       	push	r24
     302:	80 e0       	ldi	r24, 0x00	; 0
     304:	91 e0       	ldi	r25, 0x01	; 1
     306:	9f 93       	push	r25
     308:	8f 93       	push	r24
     30a:	8e 01       	movw	r16, r28
     30c:	0f 5f       	subi	r16, 0xFF	; 255
     30e:	1f 4f       	sbci	r17, 0xFF	; 255
     310:	1f 93       	push	r17
     312:	0f 93       	push	r16
     314:	0e 94 df 05 	call	0xbbe	; 0xbbe <sprintf>
     318:	c8 01       	movw	r24, r16
     31a:	0e 94 67 01 	call	0x2ce	; 0x2ce <USART_putstring>
     31e:	83 e0       	ldi	r24, 0x03	; 3
     320:	91 e0       	ldi	r25, 0x01	; 1
     322:	0e 94 67 01 	call	0x2ce	; 0x2ce <USART_putstring>
     326:	2f ef       	ldi	r18, 0xFF	; 255
     328:	89 e6       	ldi	r24, 0x69	; 105
     32a:	98 e1       	ldi	r25, 0x18	; 24

0000032c <.L1^B1>:
     32c:	21 50       	subi	r18, 0x01	; 1
     32e:	80 40       	sbci	r24, 0x00	; 0
     330:	90 40       	sbci	r25, 0x00	; 0
     332:	e1 f7       	brne	.-8      	; 0x32c <.L1^B1>
     334:	00 c0       	rjmp	.+0      	; 0x336 <L0^A>

00000336 <L0^A>:
     336:	00 00       	nop
     338:	0f 90       	pop	r0
     33a:	0f 90       	pop	r0
     33c:	0f 90       	pop	r0
     33e:	0f 90       	pop	r0
     340:	0f 90       	pop	r0
     342:	0f 90       	pop	r0
     344:	2a 96       	adiw	r28, 0x0a	; 10
     346:	0f b6       	in	r0, 0x3f	; 63
     348:	f8 94       	cli
     34a:	de bf       	out	0x3e, r29	; 62
     34c:	0f be       	out	0x3f, r0	; 63
     34e:	cd bf       	out	0x3d, r28	; 61
     350:	df 91       	pop	r29
     352:	cf 91       	pop	r28
     354:	1f 91       	pop	r17
     356:	0f 91       	pop	r16
     358:	08 95       	ret

0000035a <I2C_init>:
     35a:	87 b1       	in	r24, 0x07	; 7
     35c:	8f 7c       	andi	r24, 0xCF	; 207
     35e:	87 b9       	out	0x07, r24	; 7
     360:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     364:	88 e4       	ldi	r24, 0x48	; 72
     366:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     36a:	84 e0       	ldi	r24, 0x04	; 4
     36c:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     370:	86 e0       	ldi	r24, 0x06	; 6
     372:	90 e0       	ldi	r25, 0x00	; 0
     374:	08 95       	ret

00000376 <I2C_start>:
     376:	84 ea       	ldi	r24, 0xA4	; 164
     378:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000037c <.L3>:
     37c:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     380:	87 ff       	sbrs	r24, 7
     382:	fc cf       	rjmp	.-8      	; 0x37c <.L3>
     384:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     388:	88 7f       	andi	r24, 0xF8	; 248
     38a:	88 30       	cpi	r24, 0x08	; 8
     38c:	19 f4       	brne	.+6      	; 0x394 <.L5>
     38e:	86 e0       	ldi	r24, 0x06	; 6
     390:	90 e0       	ldi	r25, 0x00	; 0
     392:	08 95       	ret

00000394 <.L5>:
     394:	81 e0       	ldi	r24, 0x01	; 1
     396:	90 e0       	ldi	r25, 0x00	; 0
     398:	08 95       	ret

0000039a <I2C_connect_address>:
     39a:	9b 01       	movw	r18, r22
     39c:	88 0f       	add	r24, r24
     39e:	86 2b       	or	r24, r22
     3a0:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     3a4:	84 e8       	ldi	r24, 0x84	; 132
     3a6:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003aa <.L8>:
     3aa:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3ae:	87 ff       	sbrs	r24, 7
     3b0:	fc cf       	rjmp	.-8      	; 0x3aa <.L8>
     3b2:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3b6:	88 7f       	andi	r24, 0xF8	; 248
     3b8:	23 2b       	or	r18, r19
     3ba:	29 f4       	brne	.+10     	; 0x3c6 <.L9>
     3bc:	88 31       	cpi	r24, 0x18	; 24
     3be:	41 f4       	brne	.+16     	; 0x3d0 <.L11>

000003c0 <.L14>:
     3c0:	86 e0       	ldi	r24, 0x06	; 6
     3c2:	90 e0       	ldi	r25, 0x00	; 0
     3c4:	08 95       	ret

000003c6 <.L9>:
     3c6:	80 34       	cpi	r24, 0x40	; 64
     3c8:	d9 f3       	breq	.-10     	; 0x3c0 <.L14>
     3ca:	84 e0       	ldi	r24, 0x04	; 4
     3cc:	90 e0       	ldi	r25, 0x00	; 0
     3ce:	08 95       	ret

000003d0 <.L11>:
     3d0:	83 e0       	ldi	r24, 0x03	; 3
     3d2:	90 e0       	ldi	r25, 0x00	; 0
     3d4:	08 95       	ret

000003d6 <I2C_write>:
     3d6:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     3da:	84 e8       	ldi	r24, 0x84	; 132
     3dc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003e0 <.L16>:
     3e0:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3e4:	87 ff       	sbrs	r24, 7
     3e6:	fc cf       	rjmp	.-8      	; 0x3e0 <.L16>
     3e8:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3ec:	88 7f       	andi	r24, 0xF8	; 248
     3ee:	88 32       	cpi	r24, 0x28	; 40
     3f0:	19 f0       	breq	.+6      	; 0x3f8 <.L18>
     3f2:	82 e0       	ldi	r24, 0x02	; 2
     3f4:	90 e0       	ldi	r25, 0x00	; 0
     3f6:	08 95       	ret

000003f8 <.L18>:
     3f8:	86 e0       	ldi	r24, 0x06	; 6
     3fa:	90 e0       	ldi	r25, 0x00	; 0
     3fc:	08 95       	ret

000003fe <I2C_read_ACK>:
     3fe:	84 ec       	ldi	r24, 0xC4	; 196
     400:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000404 <.L21>:
     404:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     408:	87 ff       	sbrs	r24, 7
     40a:	fc cf       	rjmp	.-8      	; 0x404 <.L21>
     40c:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     410:	08 95       	ret

00000412 <I2C_read_NACK>:
     412:	84 e8       	ldi	r24, 0x84	; 132
     414:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000418 <.L24>:
     418:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     41c:	87 ff       	sbrs	r24, 7
     41e:	fc cf       	rjmp	.-8      	; 0x418 <.L24>
     420:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     424:	08 95       	ret

00000426 <I2C_stop>:
     426:	84 e9       	ldi	r24, 0x94	; 148
     428:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     42c:	08 95       	ret

0000042e <SERVO_set_angulo>:
     42e:	9c 01       	movw	r18, r24
     430:	cb 01       	movw	r24, r22
     432:	89 2b       	or	r24, r25
     434:	a1 f0       	breq	.+40     	; 0x45e <.L2>
     436:	61 30       	cpi	r22, 0x01	; 1
     438:	71 05       	cpc	r23, r1
     43a:	09 f5       	brne	.+66     	; 0x47e <.L1>
     43c:	44 e1       	ldi	r20, 0x14	; 20
     43e:	42 9f       	mul	r20, r18
     440:	c0 01       	movw	r24, r0
     442:	43 9f       	mul	r20, r19
     444:	90 0d       	add	r25, r0
     446:	11 24       	eor	r1, r1
     448:	69 e0       	ldi	r22, 0x09	; 9
     44a:	70 e0       	ldi	r23, 0x00	; 0
     44c:	0e 94 c2 03 	call	0x784	; 0x784 <__udivmodhi4>
     450:	69 51       	subi	r22, 0x19	; 25
     452:	7c 4f       	sbci	r23, 0xFC	; 252
     454:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
     458:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
     45c:	08 95       	ret

0000045e <.L2>:
     45e:	44 e1       	ldi	r20, 0x14	; 20
     460:	42 9f       	mul	r20, r18
     462:	c0 01       	movw	r24, r0
     464:	43 9f       	mul	r20, r19
     466:	90 0d       	add	r25, r0
     468:	11 24       	eor	r1, r1
     46a:	69 e0       	ldi	r22, 0x09	; 9
     46c:	70 e0       	ldi	r23, 0x00	; 0
     46e:	0e 94 c2 03 	call	0x784	; 0x784 <__udivmodhi4>
     472:	69 51       	subi	r22, 0x19	; 25
     474:	7c 4f       	sbci	r23, 0xFC	; 252
     476:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     47a:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

0000047e <.L1>:
     47e:	08 95       	ret

00000480 <SERVO_test>:
     480:	ef 92       	push	r14
     482:	ff 92       	push	r15
     484:	0f 93       	push	r16
     486:	1f 93       	push	r17
     488:	cf 93       	push	r28
     48a:	df 93       	push	r29
     48c:	8c 01       	movw	r16, r24
     48e:	d6 2f       	mov	r29, r22
     490:	c7 2f       	mov	r28, r23
     492:	bc 01       	movw	r22, r24
     494:	80 e0       	ldi	r24, 0x00	; 0
     496:	90 e0       	ldi	r25, 0x00	; 0
     498:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     49c:	6d 2f       	mov	r22, r29
     49e:	7c 2f       	mov	r23, r28
     4a0:	80 e0       	ldi	r24, 0x00	; 0
     4a2:	90 e0       	ldi	r25, 0x00	; 0
     4a4:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     4a8:	2f ef       	ldi	r18, 0xFF	; 255
     4aa:	83 ed       	ldi	r24, 0xD3	; 211
     4ac:	90 e3       	ldi	r25, 0x30	; 48

000004ae <.L1^B1>:
     4ae:	21 50       	subi	r18, 0x01	; 1
     4b0:	80 40       	sbci	r24, 0x00	; 0
     4b2:	90 40       	sbci	r25, 0x00	; 0
     4b4:	e1 f7       	brne	.-8      	; 0x4ae <.L1^B1>
     4b6:	00 c0       	rjmp	.+0      	; 0x4b8 <L0^A>

000004b8 <L0^A>:
     4b8:	00 00       	nop
     4ba:	e1 2c       	mov	r14, r1
     4bc:	f1 2c       	mov	r15, r1

000004be <.L5>:
     4be:	b8 01       	movw	r22, r16
     4c0:	c7 01       	movw	r24, r14
     4c2:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     4c6:	6d 2f       	mov	r22, r29
     4c8:	7c 2f       	mov	r23, r28
     4ca:	c7 01       	movw	r24, r14
     4cc:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     4d0:	8f e9       	ldi	r24, 0x9F	; 159
     4d2:	9f e0       	ldi	r25, 0x0F	; 15

000004d4 <.L1^B2>:
     4d4:	01 97       	sbiw	r24, 0x01	; 1
     4d6:	f1 f7       	brne	.-4      	; 0x4d4 <.L1^B2>
     4d8:	00 c0       	rjmp	.+0      	; 0x4da <L0^A>

000004da <L0^A>:
     4da:	00 00       	nop
     4dc:	9f ef       	ldi	r25, 0xFF	; 255
     4de:	e9 1a       	sub	r14, r25
     4e0:	f9 0a       	sbc	r15, r25
     4e2:	29 e0       	ldi	r18, 0x09	; 9
     4e4:	e2 16       	cp	r14, r18
     4e6:	27 e0       	ldi	r18, 0x07	; 7
     4e8:	f2 06       	cpc	r15, r18
     4ea:	49 f7       	brne	.-46     	; 0x4be <.L5>
     4ec:	88 e0       	ldi	r24, 0x08	; 8
     4ee:	e8 2e       	mov	r14, r24
     4f0:	87 e0       	ldi	r24, 0x07	; 7
     4f2:	f8 2e       	mov	r15, r24

000004f4 <.L6>:
     4f4:	b8 01       	movw	r22, r16
     4f6:	c7 01       	movw	r24, r14
     4f8:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     4fc:	6d 2f       	mov	r22, r29
     4fe:	7c 2f       	mov	r23, r28
     500:	c7 01       	movw	r24, r14
     502:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     506:	8f e9       	ldi	r24, 0x9F	; 159
     508:	9f e0       	ldi	r25, 0x0F	; 15

0000050a <.L1^B3>:
     50a:	01 97       	sbiw	r24, 0x01	; 1
     50c:	f1 f7       	brne	.-4      	; 0x50a <.L1^B3>
     50e:	00 c0       	rjmp	.+0      	; 0x510 <L0^A>

00000510 <L0^A>:
     510:	00 00       	nop
     512:	91 e0       	ldi	r25, 0x01	; 1
     514:	e9 1a       	sub	r14, r25
     516:	f1 08       	sbc	r15, r1
     518:	68 f7       	brcc	.-38     	; 0x4f4 <.L6>
     51a:	b8 01       	movw	r22, r16
     51c:	80 e0       	ldi	r24, 0x00	; 0
     51e:	90 e0       	ldi	r25, 0x00	; 0
     520:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     524:	6d 2f       	mov	r22, r29
     526:	7c 2f       	mov	r23, r28
     528:	80 e0       	ldi	r24, 0x00	; 0
     52a:	90 e0       	ldi	r25, 0x00	; 0
     52c:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     530:	b8 01       	movw	r22, r16
     532:	88 e0       	ldi	r24, 0x08	; 8
     534:	97 e0       	ldi	r25, 0x07	; 7
     536:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     53a:	6d 2f       	mov	r22, r29
     53c:	7c 2f       	mov	r23, r28
     53e:	88 e0       	ldi	r24, 0x08	; 8
     540:	97 e0       	ldi	r25, 0x07	; 7
     542:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     546:	8f ef       	ldi	r24, 0xFF	; 255
     548:	93 ed       	ldi	r25, 0xD3	; 211
     54a:	20 e3       	ldi	r18, 0x30	; 48

0000054c <.L1^B4>:
     54c:	81 50       	subi	r24, 0x01	; 1
     54e:	90 40       	sbci	r25, 0x00	; 0
     550:	20 40       	sbci	r18, 0x00	; 0
     552:	e1 f7       	brne	.-8      	; 0x54c <.L1^B4>
     554:	00 c0       	rjmp	.+0      	; 0x556 <L0^A>

00000556 <L0^A>:
     556:	00 00       	nop
     558:	b8 01       	movw	r22, r16
     55a:	80 e0       	ldi	r24, 0x00	; 0
     55c:	90 e0       	ldi	r25, 0x00	; 0
     55e:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     562:	6d 2f       	mov	r22, r29
     564:	7c 2f       	mov	r23, r28
     566:	80 e0       	ldi	r24, 0x00	; 0
     568:	90 e0       	ldi	r25, 0x00	; 0
     56a:	0e 94 17 02 	call	0x42e	; 0x42e <SERVO_set_angulo>
     56e:	8f ef       	ldi	r24, 0xFF	; 255
     570:	93 ed       	ldi	r25, 0xD3	; 211
     572:	20 e3       	ldi	r18, 0x30	; 48

00000574 <.L1^B5>:
     574:	81 50       	subi	r24, 0x01	; 1
     576:	90 40       	sbci	r25, 0x00	; 0
     578:	20 40       	sbci	r18, 0x00	; 0
     57a:	e1 f7       	brne	.-8      	; 0x574 <.L1^B5>
     57c:	00 c0       	rjmp	.+0      	; 0x57e <L0^A>

0000057e <L0^A>:
     57e:	00 00       	nop
     580:	df 91       	pop	r29
     582:	cf 91       	pop	r28
     584:	1f 91       	pop	r17
     586:	0f 91       	pop	r16
     588:	ff 90       	pop	r15
     58a:	ef 90       	pop	r14
     58c:	08 95       	ret

0000058e <VL53L0X_test>:
     58e:	cf 93       	push	r28
     590:	0e 94 ad 01 	call	0x35a	; 0x35a <I2C_init>
     594:	0e 94 bb 01 	call	0x376	; 0x376 <I2C_start>
     598:	60 e0       	ldi	r22, 0x00	; 0
     59a:	70 e0       	ldi	r23, 0x00	; 0
     59c:	89 e2       	ldi	r24, 0x29	; 41
     59e:	0e 94 cd 01 	call	0x39a	; 0x39a <I2C_connect_address>
     5a2:	80 ec       	ldi	r24, 0xC0	; 192
     5a4:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <I2C_write>
     5a8:	0e 94 13 02 	call	0x426	; 0x426 <I2C_stop>
     5ac:	0e 94 bb 01 	call	0x376	; 0x376 <I2C_start>
     5b0:	61 e0       	ldi	r22, 0x01	; 1
     5b2:	70 e0       	ldi	r23, 0x00	; 0
     5b4:	89 e2       	ldi	r24, 0x29	; 41
     5b6:	0e 94 cd 01 	call	0x39a	; 0x39a <I2C_connect_address>
     5ba:	0e 94 09 02 	call	0x412	; 0x412 <I2C_read_NACK>
     5be:	c8 2f       	mov	r28, r24
     5c0:	0e 94 13 02 	call	0x426	; 0x426 <I2C_stop>
     5c4:	81 e0       	ldi	r24, 0x01	; 1
     5c6:	ce 3e       	cpi	r28, 0xEE	; 238
     5c8:	09 f0       	breq	.+2      	; 0x5cc <.L2>
     5ca:	80 e0       	ldi	r24, 0x00	; 0

000005cc <.L2>:
     5cc:	cf 91       	pop	r28
     5ce:	08 95       	ret

000005d0 <NUN_get_raw>:
     5d0:	ef 92       	push	r14
     5d2:	ff 92       	push	r15
     5d4:	0f 93       	push	r16
     5d6:	1f 93       	push	r17
     5d8:	cf 93       	push	r28
     5da:	df 93       	push	r29
     5dc:	ec 01       	movw	r28, r24
     5de:	0e 94 bb 01 	call	0x376	; 0x376 <I2C_start>
     5e2:	60 e0       	ldi	r22, 0x00	; 0
     5e4:	70 e0       	ldi	r23, 0x00	; 0
     5e6:	82 e5       	ldi	r24, 0x52	; 82
     5e8:	0e 94 cd 01 	call	0x39a	; 0x39a <I2C_connect_address>
     5ec:	80 e0       	ldi	r24, 0x00	; 0
     5ee:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <I2C_write>
     5f2:	0e 94 13 02 	call	0x426	; 0x426 <I2C_stop>
     5f6:	8f e9       	ldi	r24, 0x9F	; 159
     5f8:	9f e0       	ldi	r25, 0x0F	; 15

000005fa <.L1^B1>:
     5fa:	01 97       	sbiw	r24, 0x01	; 1
     5fc:	f1 f7       	brne	.-4      	; 0x5fa <.L1^B1>
     5fe:	00 c0       	rjmp	.+0      	; 0x600 <L0^A>

00000600 <L0^A>:
     600:	00 00       	nop
     602:	0e 94 bb 01 	call	0x376	; 0x376 <I2C_start>
     606:	61 e0       	ldi	r22, 0x01	; 1
     608:	70 e0       	ldi	r23, 0x00	; 0
     60a:	82 e5       	ldi	r24, 0x52	; 82
     60c:	0e 94 cd 01 	call	0x39a	; 0x39a <I2C_connect_address>
     610:	8e 01       	movw	r16, r28
     612:	7e 01       	movw	r14, r28
     614:	95 e0       	ldi	r25, 0x05	; 5
     616:	e9 0e       	add	r14, r25
     618:	f1 1c       	adc	r15, r1

0000061a <.L2>:
     61a:	0e 94 ff 01 	call	0x3fe	; 0x3fe <I2C_read_ACK>
     61e:	f8 01       	movw	r30, r16
     620:	81 93       	st	Z+, r24
     622:	8f 01       	movw	r16, r30
     624:	ee 15       	cp	r30, r14
     626:	ff 05       	cpc	r31, r15
     628:	c1 f7       	brne	.-16     	; 0x61a <.L2>
     62a:	0e 94 09 02 	call	0x412	; 0x412 <I2C_read_NACK>
     62e:	8d 83       	std	Y+5, r24	; 0x05
     630:	df 91       	pop	r29
     632:	cf 91       	pop	r28
     634:	1f 91       	pop	r17
     636:	0f 91       	pop	r16
     638:	ff 90       	pop	r15
     63a:	ef 90       	pop	r14
     63c:	0c 94 13 02 	jmp	0x426	; 0x426 <I2C_stop>

00000640 <NUN_init>:
     640:	cf 93       	push	r28
     642:	df 93       	push	r29
     644:	00 d0       	rcall	.+0      	; 0x646 <L0^A>

00000646 <L0^A>:
     646:	00 d0       	rcall	.+0      	; 0x648 <L0^A>

00000648 <L0^A>:
     648:	00 d0       	rcall	.+0      	; 0x64a <L0^A>

0000064a <L0^A>:
     64a:	cd b7       	in	r28, 0x3d	; 61
     64c:	de b7       	in	r29, 0x3e	; 62
     64e:	0e 94 ad 01 	call	0x35a	; 0x35a <I2C_init>
     652:	0e 94 bb 01 	call	0x376	; 0x376 <I2C_start>
     656:	60 e0       	ldi	r22, 0x00	; 0
     658:	70 e0       	ldi	r23, 0x00	; 0
     65a:	82 e5       	ldi	r24, 0x52	; 82
     65c:	0e 94 cd 01 	call	0x39a	; 0x39a <I2C_connect_address>
     660:	80 e4       	ldi	r24, 0x40	; 64
     662:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <I2C_write>
     666:	80 e0       	ldi	r24, 0x00	; 0
     668:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <I2C_write>
     66c:	0e 94 13 02 	call	0x426	; 0x426 <I2C_stop>
     670:	ce 01       	movw	r24, r28
     672:	01 96       	adiw	r24, 0x01	; 1
     674:	0e 94 e8 02 	call	0x5d0	; 0x5d0 <NUN_get_raw>
     678:	83 e0       	ldi	r24, 0x03	; 3
     67a:	90 e0       	ldi	r25, 0x00	; 0
     67c:	0f 90       	pop	r0
     67e:	0f 90       	pop	r0
     680:	0f 90       	pop	r0
     682:	0f 90       	pop	r0
     684:	0f 90       	pop	r0
     686:	0f 90       	pop	r0
     688:	df 91       	pop	r29
     68a:	cf 91       	pop	r28
     68c:	08 95       	ret

0000068e <NUN_get_joystick>:
     68e:	0f 93       	push	r16
     690:	1f 93       	push	r17
     692:	cf 93       	push	r28
     694:	df 93       	push	r29
     696:	00 d0       	rcall	.+0      	; 0x698 <L0^A>

00000698 <L0^A>:
     698:	00 d0       	rcall	.+0      	; 0x69a <L0^A>

0000069a <L0^A>:
     69a:	00 d0       	rcall	.+0      	; 0x69c <L0^A>

0000069c <L0^A>:
     69c:	cd b7       	in	r28, 0x3d	; 61
     69e:	de b7       	in	r29, 0x3e	; 62
     6a0:	8c 01       	movw	r16, r24
     6a2:	ce 01       	movw	r24, r28
     6a4:	01 96       	adiw	r24, 0x01	; 1
     6a6:	0e 94 e8 02 	call	0x5d0	; 0x5d0 <NUN_get_raw>
     6aa:	89 81       	ldd	r24, Y+1	; 0x01
     6ac:	f8 01       	movw	r30, r16
     6ae:	80 83       	st	Z, r24
     6b0:	8a 81       	ldd	r24, Y+2	; 0x02
     6b2:	81 83       	std	Z+1, r24	; 0x01
     6b4:	0f 90       	pop	r0
     6b6:	0f 90       	pop	r0
     6b8:	0f 90       	pop	r0
     6ba:	0f 90       	pop	r0
     6bc:	0f 90       	pop	r0
     6be:	0f 90       	pop	r0
     6c0:	df 91       	pop	r29
     6c2:	cf 91       	pop	r28
     6c4:	1f 91       	pop	r17
     6c6:	0f 91       	pop	r16
     6c8:	08 95       	ret

000006ca <NUN_get_buttons>:
     6ca:	cf 93       	push	r28
     6cc:	df 93       	push	r29
     6ce:	00 d0       	rcall	.+0      	; 0x6d0 <L0^A>

000006d0 <L0^A>:
     6d0:	00 d0       	rcall	.+0      	; 0x6d2 <L0^A>

000006d2 <L0^A>:
     6d2:	00 d0       	rcall	.+0      	; 0x6d4 <L0^A>

000006d4 <L0^A>:
     6d4:	cd b7       	in	r28, 0x3d	; 61
     6d6:	de b7       	in	r29, 0x3e	; 62
     6d8:	ce 01       	movw	r24, r28
     6da:	01 96       	adiw	r24, 0x01	; 1
     6dc:	0e 94 e8 02 	call	0x5d0	; 0x5d0 <NUN_get_raw>
     6e0:	8e 81       	ldd	r24, Y+6	; 0x06
     6e2:	83 70       	andi	r24, 0x03	; 3
     6e4:	0f 90       	pop	r0
     6e6:	0f 90       	pop	r0
     6e8:	0f 90       	pop	r0
     6ea:	0f 90       	pop	r0
     6ec:	0f 90       	pop	r0
     6ee:	0f 90       	pop	r0
     6f0:	df 91       	pop	r29
     6f2:	cf 91       	pop	r28
     6f4:	08 95       	ret

000006f6 <__vector_7>:
     6f6:	1f 92       	push	r1
     6f8:	0f 92       	push	r0
     6fa:	0f b6       	in	r0, 0x3f	; 63
     6fc:	0f 92       	push	r0
     6fe:	11 24       	eor	r1, r1
     700:	0f 90       	pop	r0
     702:	0f be       	out	0x3f, r0	; 63
     704:	0f 90       	pop	r0
     706:	1f 90       	pop	r1
     708:	18 95       	reti

0000070a <__vector_5>:
     70a:	1f 92       	push	r1
     70c:	0f 92       	push	r0
     70e:	0f b6       	in	r0, 0x3f	; 63
     710:	0f 92       	push	r0
     712:	11 24       	eor	r1, r1
     714:	8f 93       	push	r24
     716:	89 b1       	in	r24, 0x09	; 9
     718:	8f 91       	pop	r24
     71a:	0f 90       	pop	r0
     71c:	0f be       	out	0x3f, r0	; 63
     71e:	0f 90       	pop	r0
     720:	1f 90       	pop	r1
     722:	18 95       	reti

00000724 <__vector_2>:
     724:	1f 92       	push	r1
     726:	0f 92       	push	r0
     728:	0f b6       	in	r0, 0x3f	; 63
     72a:	0f 92       	push	r0
     72c:	11 24       	eor	r1, r1
     72e:	0f 90       	pop	r0
     730:	0f be       	out	0x3f, r0	; 63
     732:	0f 90       	pop	r0
     734:	1f 90       	pop	r1
     736:	18 95       	reti

00000738 <__vector_14>:
     738:	1f 92       	push	r1
     73a:	0f 92       	push	r0
     73c:	0f b6       	in	r0, 0x3f	; 63
     73e:	0f 92       	push	r0
     740:	11 24       	eor	r1, r1
     742:	0f 90       	pop	r0
     744:	0f be       	out	0x3f, r0	; 63
     746:	0f 90       	pop	r0
     748:	1f 90       	pop	r1
     74a:	18 95       	reti

0000074c <Error_Handler>:
     74c:	88 e1       	ldi	r24, 0x18	; 24
     74e:	98 e0       	ldi	r25, 0x08	; 8
     750:	0f b6       	in	r0, 0x3f	; 63
     752:	f8 94       	cli
     754:	a8 95       	wdr
     756:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     75a:	0f be       	out	0x3f, r0	; 63
     75c:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

00000760 <.L2>:
     760:	ff cf       	rjmp	.-2      	; 0x760 <.L2>

00000762 <main>:
     762:	0e 94 20 03 	call	0x640	; 0x640 <NUN_init>
     766:	78 94       	sei
     768:	0e 94 46 01 	call	0x28c	; 0x28c <DEBUG_init>

0000076c <.L6>:
     76c:	0e 94 48 01 	call	0x290	; 0x290 <DEBUG_led_toggle>
     770:	2f ef       	ldi	r18, 0xFF	; 255
     772:	83 ed       	ldi	r24, 0xD3	; 211
     774:	90 e3       	ldi	r25, 0x30	; 48

00000776 <.L1^B1>:
     776:	21 50       	subi	r18, 0x01	; 1
     778:	80 40       	sbci	r24, 0x00	; 0
     77a:	90 40       	sbci	r25, 0x00	; 0
     77c:	e1 f7       	brne	.-8      	; 0x776 <.L1^B1>
     77e:	00 c0       	rjmp	.+0      	; 0x780 <L0^A>

00000780 <L0^A>:
     780:	00 00       	nop
     782:	f4 cf       	rjmp	.-24     	; 0x76c <.L6>

00000784 <__udivmodhi4>:
     784:	aa 1b       	sub	r26, r26
     786:	bb 1b       	sub	r27, r27
     788:	51 e1       	ldi	r21, 0x11	; 17
     78a:	07 c0       	rjmp	.+14     	; 0x79a <__udivmodhi4_ep>

0000078c <__udivmodhi4_loop>:
     78c:	aa 1f       	adc	r26, r26
     78e:	bb 1f       	adc	r27, r27
     790:	a6 17       	cp	r26, r22
     792:	b7 07       	cpc	r27, r23
     794:	10 f0       	brcs	.+4      	; 0x79a <__udivmodhi4_ep>
     796:	a6 1b       	sub	r26, r22
     798:	b7 0b       	sbc	r27, r23

0000079a <__udivmodhi4_ep>:
     79a:	88 1f       	adc	r24, r24
     79c:	99 1f       	adc	r25, r25
     79e:	5a 95       	dec	r21
     7a0:	a9 f7       	brne	.-22     	; 0x78c <__udivmodhi4_loop>
     7a2:	80 95       	com	r24
     7a4:	90 95       	com	r25
     7a6:	bc 01       	movw	r22, r24
     7a8:	cd 01       	movw	r24, r26
     7aa:	08 95       	ret

000007ac <__subsf3>:
     7ac:	50 58       	subi	r21, 0x80	; 128

000007ae <__addsf3>:
     7ae:	bb 27       	eor	r27, r27
     7b0:	aa 27       	eor	r26, r26
     7b2:	0e 94 ee 03 	call	0x7dc	; 0x7dc <__addsf3x>
     7b6:	0c 94 38 05 	jmp	0xa70	; 0xa70 <__fp_round>

000007ba <.L0^B1>:
     7ba:	0e 94 2a 05 	call	0xa54	; 0xa54 <__fp_pscA>
     7be:	38 f0       	brcs	.+14     	; 0x7ce <.L_nan>
     7c0:	0e 94 31 05 	call	0xa62	; 0xa62 <__fp_pscB>
     7c4:	20 f0       	brcs	.+8      	; 0x7ce <.L_nan>
     7c6:	39 f4       	brne	.+14     	; 0x7d6 <.L_inf>
     7c8:	9f 3f       	cpi	r25, 0xFF	; 255
     7ca:	19 f4       	brne	.+6      	; 0x7d2 <.L_infB>
     7cc:	26 f4       	brtc	.+8      	; 0x7d6 <.L_inf>

000007ce <.L_nan>:
     7ce:	0c 94 27 05 	jmp	0xa4e	; 0xa4e <__fp_nan>

000007d2 <.L_infB>:
     7d2:	0e f4       	brtc	.+2      	; 0x7d6 <.L_inf>
     7d4:	e0 95       	com	r30

000007d6 <.L_inf>:
     7d6:	e7 fb       	bst	r30, 7
     7d8:	0c 94 21 05 	jmp	0xa42	; 0xa42 <__fp_inf>

000007dc <__addsf3x>:
     7dc:	e9 2f       	mov	r30, r25
     7de:	0e 94 49 05 	call	0xa92	; 0xa92 <__fp_split3>
     7e2:	58 f3       	brcs	.-42     	; 0x7ba <.L0^B1>
     7e4:	ba 17       	cp	r27, r26
     7e6:	62 07       	cpc	r22, r18
     7e8:	73 07       	cpc	r23, r19
     7ea:	84 07       	cpc	r24, r20
     7ec:	95 07       	cpc	r25, r21
     7ee:	20 f0       	brcs	.+8      	; 0x7f8 <.L2^B1>
     7f0:	79 f4       	brne	.+30     	; 0x810 <.L4^B1>
     7f2:	a6 f5       	brtc	.+104    	; 0x85c <.L_add>
     7f4:	0c 94 6b 05 	jmp	0xad6	; 0xad6 <__fp_zero>

000007f8 <.L2^B1>:
     7f8:	0e f4       	brtc	.+2      	; 0x7fc <.L3^B1>
     7fa:	e0 95       	com	r30

000007fc <.L3^B1>:
     7fc:	0b 2e       	mov	r0, r27
     7fe:	ba 2f       	mov	r27, r26
     800:	a0 2d       	mov	r26, r0
     802:	0b 01       	movw	r0, r22
     804:	b9 01       	movw	r22, r18
     806:	90 01       	movw	r18, r0
     808:	0c 01       	movw	r0, r24
     80a:	ca 01       	movw	r24, r20
     80c:	a0 01       	movw	r20, r0
     80e:	11 24       	eor	r1, r1

00000810 <.L4^B1>:
     810:	ff 27       	eor	r31, r31
     812:	59 1b       	sub	r21, r25

00000814 <.L5^B1>:
     814:	99 f0       	breq	.+38     	; 0x83c <.L7^B1>
     816:	59 3f       	cpi	r21, 0xF9	; 249
     818:	50 f4       	brcc	.+20     	; 0x82e <.L6^B1>
     81a:	50 3e       	cpi	r21, 0xE0	; 224
     81c:	68 f1       	brcs	.+90     	; 0x878 <.L_ret>
     81e:	1a 16       	cp	r1, r26
     820:	f0 40       	sbci	r31, 0x00	; 0
     822:	a2 2f       	mov	r26, r18
     824:	23 2f       	mov	r18, r19
     826:	34 2f       	mov	r19, r20
     828:	44 27       	eor	r20, r20
     82a:	58 5f       	subi	r21, 0xF8	; 248
     82c:	f3 cf       	rjmp	.-26     	; 0x814 <.L5^B1>

0000082e <.L6^B1>:
     82e:	46 95       	lsr	r20
     830:	37 95       	ror	r19
     832:	27 95       	ror	r18
     834:	a7 95       	ror	r26
     836:	f0 40       	sbci	r31, 0x00	; 0
     838:	53 95       	inc	r21
     83a:	c9 f7       	brne	.-14     	; 0x82e <.L6^B1>

0000083c <.L7^B1>:
     83c:	7e f4       	brtc	.+30     	; 0x85c <.L_add>
     83e:	1f 16       	cp	r1, r31
     840:	ba 0b       	sbc	r27, r26
     842:	62 0b       	sbc	r22, r18
     844:	73 0b       	sbc	r23, r19
     846:	84 0b       	sbc	r24, r20
     848:	ba f0       	brmi	.+46     	; 0x878 <.L_ret>

0000084a <.L8^B1>:
     84a:	91 50       	subi	r25, 0x01	; 1
     84c:	a1 f0       	breq	.+40     	; 0x876 <.L9^B1>
     84e:	ff 0f       	add	r31, r31
     850:	bb 1f       	adc	r27, r27
     852:	66 1f       	adc	r22, r22
     854:	77 1f       	adc	r23, r23
     856:	88 1f       	adc	r24, r24
     858:	c2 f7       	brpl	.-16     	; 0x84a <.L8^B1>
     85a:	0e c0       	rjmp	.+28     	; 0x878 <.L_ret>

0000085c <.L_add>:
     85c:	ba 0f       	add	r27, r26
     85e:	62 1f       	adc	r22, r18
     860:	73 1f       	adc	r23, r19
     862:	84 1f       	adc	r24, r20
     864:	48 f4       	brcc	.+18     	; 0x878 <.L_ret>
     866:	87 95       	ror	r24
     868:	77 95       	ror	r23
     86a:	67 95       	ror	r22
     86c:	b7 95       	ror	r27
     86e:	f7 95       	ror	r31
     870:	9e 3f       	cpi	r25, 0xFE	; 254
     872:	08 f0       	brcs	.+2      	; 0x876 <.L9^B1>
     874:	b0 cf       	rjmp	.-160    	; 0x7d6 <.L_inf>

00000876 <.L9^B1>:
     876:	93 95       	inc	r25

00000878 <.L_ret>:
     878:	88 0f       	add	r24, r24
     87a:	08 f0       	brcs	.+2      	; 0x87e <.L1^B1>
     87c:	99 27       	eor	r25, r25

0000087e <.L1^B1>:
     87e:	ee 0f       	add	r30, r30
     880:	97 95       	ror	r25
     882:	87 95       	ror	r24
     884:	08 95       	ret

00000886 <__divsf3>:
     886:	0e 94 57 04 	call	0x8ae	; 0x8ae <__divsf3x>
     88a:	0c 94 38 05 	jmp	0xa70	; 0xa70 <__fp_round>

0000088e <.L0^B1>:
     88e:	0e 94 31 05 	call	0xa62	; 0xa62 <__fp_pscB>
     892:	58 f0       	brcs	.+22     	; 0x8aa <.L_nan>
     894:	0e 94 2a 05 	call	0xa54	; 0xa54 <__fp_pscA>
     898:	40 f0       	brcs	.+16     	; 0x8aa <.L_nan>
     89a:	29 f4       	brne	.+10     	; 0x8a6 <.L_zr>
     89c:	5f 3f       	cpi	r21, 0xFF	; 255
     89e:	29 f0       	breq	.+10     	; 0x8aa <.L_nan>

000008a0 <.L_inf>:
     8a0:	0c 94 21 05 	jmp	0xa42	; 0xa42 <__fp_inf>

000008a4 <.L1^B1>:
     8a4:	51 11       	cpse	r21, r1

000008a6 <.L_zr>:
     8a6:	0c 94 6c 05 	jmp	0xad8	; 0xad8 <__fp_szero>

000008aa <.L_nan>:
     8aa:	0c 94 27 05 	jmp	0xa4e	; 0xa4e <__fp_nan>

000008ae <__divsf3x>:
     8ae:	0e 94 49 05 	call	0xa92	; 0xa92 <__fp_split3>
     8b2:	68 f3       	brcs	.-38     	; 0x88e <.L0^B1>

000008b4 <__divsf3_pse>:
     8b4:	99 23       	and	r25, r25
     8b6:	b1 f3       	breq	.-20     	; 0x8a4 <.L1^B1>
     8b8:	55 23       	and	r21, r21
     8ba:	91 f3       	breq	.-28     	; 0x8a0 <.L_inf>
     8bc:	95 1b       	sub	r25, r21
     8be:	55 0b       	sbc	r21, r21
     8c0:	bb 27       	eor	r27, r27
     8c2:	aa 27       	eor	r26, r26

000008c4 <.L2^B1>:
     8c4:	62 17       	cp	r22, r18
     8c6:	73 07       	cpc	r23, r19
     8c8:	84 07       	cpc	r24, r20
     8ca:	38 f0       	brcs	.+14     	; 0x8da <.L3^B1>
     8cc:	9f 5f       	subi	r25, 0xFF	; 255
     8ce:	5f 4f       	sbci	r21, 0xFF	; 255
     8d0:	22 0f       	add	r18, r18
     8d2:	33 1f       	adc	r19, r19
     8d4:	44 1f       	adc	r20, r20
     8d6:	aa 1f       	adc	r26, r26
     8d8:	a9 f3       	breq	.-22     	; 0x8c4 <.L2^B1>

000008da <.L3^B1>:
     8da:	35 d0       	rcall	.+106    	; 0x946 <.L_div>
     8dc:	0e 2e       	mov	r0, r30
     8de:	3a f0       	brmi	.+14     	; 0x8ee <.L5^B1>

000008e0 <.L4^B1>:
     8e0:	e0 e8       	ldi	r30, 0x80	; 128
     8e2:	32 d0       	rcall	.+100    	; 0x948 <.L_div1>
     8e4:	91 50       	subi	r25, 0x01	; 1
     8e6:	50 40       	sbci	r21, 0x00	; 0
     8e8:	e6 95       	lsr	r30
     8ea:	00 1c       	adc	r0, r0
     8ec:	ca f7       	brpl	.-14     	; 0x8e0 <.L4^B1>

000008ee <.L5^B1>:
     8ee:	2b d0       	rcall	.+86     	; 0x946 <.L_div>
     8f0:	fe 2f       	mov	r31, r30
     8f2:	29 d0       	rcall	.+82     	; 0x946 <.L_div>
     8f4:	66 0f       	add	r22, r22
     8f6:	77 1f       	adc	r23, r23
     8f8:	88 1f       	adc	r24, r24
     8fa:	bb 1f       	adc	r27, r27
     8fc:	26 17       	cp	r18, r22
     8fe:	37 07       	cpc	r19, r23
     900:	48 07       	cpc	r20, r24
     902:	ab 07       	cpc	r26, r27
     904:	b0 e8       	ldi	r27, 0x80	; 128
     906:	09 f0       	breq	.+2      	; 0x90a <.L4^B2>
     908:	bb 0b       	sbc	r27, r27

0000090a <.L4^B2>:
     90a:	80 2d       	mov	r24, r0
     90c:	bf 01       	movw	r22, r30
     90e:	ff 27       	eor	r31, r31
     910:	93 58       	subi	r25, 0x83	; 131
     912:	5f 4f       	sbci	r21, 0xFF	; 255
     914:	3a f0       	brmi	.+14     	; 0x924 <.L13^B1>
     916:	9e 3f       	cpi	r25, 0xFE	; 254
     918:	51 05       	cpc	r21, r1
     91a:	78 f0       	brcs	.+30     	; 0x93a <.L15^B1>
     91c:	0c 94 21 05 	jmp	0xa42	; 0xa42 <__fp_inf>

00000920 <.L12^B1>:
     920:	0c 94 6c 05 	jmp	0xad8	; 0xad8 <__fp_szero>

00000924 <.L13^B1>:
     924:	5f 3f       	cpi	r21, 0xFF	; 255
     926:	e4 f3       	brlt	.-8      	; 0x920 <.L12^B1>
     928:	98 3e       	cpi	r25, 0xE8	; 232
     92a:	d4 f3       	brlt	.-12     	; 0x920 <.L12^B1>

0000092c <.L14^B1>:
     92c:	86 95       	lsr	r24
     92e:	77 95       	ror	r23
     930:	67 95       	ror	r22
     932:	b7 95       	ror	r27
     934:	f7 95       	ror	r31
     936:	9f 5f       	subi	r25, 0xFF	; 255
     938:	c9 f7       	brne	.-14     	; 0x92c <.L14^B1>

0000093a <.L15^B1>:
     93a:	88 0f       	add	r24, r24
     93c:	91 1d       	adc	r25, r1
     93e:	96 95       	lsr	r25
     940:	87 95       	ror	r24
     942:	97 f9       	bld	r25, 7
     944:	08 95       	ret

00000946 <.L_div>:
     946:	e1 e0       	ldi	r30, 0x01	; 1

00000948 <.L_div1>:
     948:	66 0f       	add	r22, r22
     94a:	77 1f       	adc	r23, r23
     94c:	88 1f       	adc	r24, r24
     94e:	bb 1f       	adc	r27, r27
     950:	62 17       	cp	r22, r18
     952:	73 07       	cpc	r23, r19
     954:	84 07       	cpc	r24, r20
     956:	ba 07       	cpc	r27, r26
     958:	20 f0       	brcs	.+8      	; 0x962 <.L2^B2>
     95a:	62 1b       	sub	r22, r18
     95c:	73 0b       	sbc	r23, r19
     95e:	84 0b       	sbc	r24, r20
     960:	ba 0b       	sbc	r27, r26

00000962 <.L2^B2>:
     962:	ee 1f       	adc	r30, r30
     964:	88 f7       	brcc	.-30     	; 0x948 <.L_div1>
     966:	e0 95       	com	r30
     968:	08 95       	ret

0000096a <__fixunssfsi>:
     96a:	0e 94 51 05 	call	0xaa2	; 0xaa2 <__fp_splitA>
     96e:	88 f0       	brcs	.+34     	; 0x992 <.L_err>
     970:	9f 57       	subi	r25, 0x7F	; 127
     972:	98 f0       	brcs	.+38     	; 0x99a <.L_zr>
     974:	b9 2f       	mov	r27, r25
     976:	99 27       	eor	r25, r25
     978:	b7 51       	subi	r27, 0x17	; 23
     97a:	b0 f0       	brcs	.+44     	; 0x9a8 <.L4^B1>
     97c:	e1 f0       	breq	.+56     	; 0x9b6 <.L_sign>

0000097e <.L1^B1>:
     97e:	66 0f       	add	r22, r22
     980:	77 1f       	adc	r23, r23
     982:	88 1f       	adc	r24, r24
     984:	99 1f       	adc	r25, r25
     986:	1a f0       	brmi	.+6      	; 0x98e <.L2^B1>
     988:	ba 95       	dec	r27
     98a:	c9 f7       	brne	.-14     	; 0x97e <.L1^B1>
     98c:	14 c0       	rjmp	.+40     	; 0x9b6 <.L_sign>

0000098e <.L2^B1>:
     98e:	b1 30       	cpi	r27, 0x01	; 1
     990:	91 f0       	breq	.+36     	; 0x9b6 <.L_sign>

00000992 <.L_err>:
     992:	0e 94 6b 05 	call	0xad6	; 0xad6 <__fp_zero>
     996:	b1 e0       	ldi	r27, 0x01	; 1
     998:	08 95       	ret

0000099a <.L_zr>:
     99a:	0c 94 6b 05 	jmp	0xad6	; 0xad6 <__fp_zero>

0000099e <.L3^B1>:
     99e:	67 2f       	mov	r22, r23
     9a0:	78 2f       	mov	r23, r24
     9a2:	88 27       	eor	r24, r24
     9a4:	b8 5f       	subi	r27, 0xF8	; 248
     9a6:	39 f0       	breq	.+14     	; 0x9b6 <.L_sign>

000009a8 <.L4^B1>:
     9a8:	b9 3f       	cpi	r27, 0xF9	; 249
     9aa:	cc f3       	brlt	.-14     	; 0x99e <.L3^B1>

000009ac <.L5^B1>:
     9ac:	86 95       	lsr	r24
     9ae:	77 95       	ror	r23
     9b0:	67 95       	ror	r22
     9b2:	b3 95       	inc	r27
     9b4:	d9 f7       	brne	.-10     	; 0x9ac <.L5^B1>

000009b6 <.L_sign>:
     9b6:	3e f4       	brtc	.+14     	; 0x9c6 <.L6^B1>
     9b8:	90 95       	com	r25
     9ba:	80 95       	com	r24
     9bc:	70 95       	com	r23
     9be:	61 95       	neg	r22
     9c0:	7f 4f       	sbci	r23, 0xFF	; 255
     9c2:	8f 4f       	sbci	r24, 0xFF	; 255
     9c4:	9f 4f       	sbci	r25, 0xFF	; 255

000009c6 <.L6^B1>:
     9c6:	08 95       	ret

000009c8 <__floatunsisf>:
     9c8:	e8 94       	clt
     9ca:	09 c0       	rjmp	.+18     	; 0x9de <.L1^B1>

000009cc <__floatsisf>:
     9cc:	97 fb       	bst	r25, 7
     9ce:	3e f4       	brtc	.+14     	; 0x9de <.L1^B1>
     9d0:	90 95       	com	r25
     9d2:	80 95       	com	r24
     9d4:	70 95       	com	r23
     9d6:	61 95       	neg	r22
     9d8:	7f 4f       	sbci	r23, 0xFF	; 255
     9da:	8f 4f       	sbci	r24, 0xFF	; 255
     9dc:	9f 4f       	sbci	r25, 0xFF	; 255

000009de <.L1^B1>:
     9de:	99 23       	and	r25, r25
     9e0:	a9 f0       	breq	.+42     	; 0xa0c <.L4^B1>
     9e2:	f9 2f       	mov	r31, r25
     9e4:	96 e9       	ldi	r25, 0x96	; 150
     9e6:	bb 27       	eor	r27, r27

000009e8 <.L2^B1>:
     9e8:	93 95       	inc	r25
     9ea:	f6 95       	lsr	r31
     9ec:	87 95       	ror	r24
     9ee:	77 95       	ror	r23
     9f0:	67 95       	ror	r22
     9f2:	b7 95       	ror	r27
     9f4:	f1 11       	cpse	r31, r1
     9f6:	f8 cf       	rjmp	.-16     	; 0x9e8 <.L2^B1>
     9f8:	fa f4       	brpl	.+62     	; 0xa38 <.L_pack>
     9fa:	bb 0f       	add	r27, r27
     9fc:	11 f4       	brne	.+4      	; 0xa02 <.L3^B1>
     9fe:	60 ff       	sbrs	r22, 0
     a00:	1b c0       	rjmp	.+54     	; 0xa38 <.L_pack>

00000a02 <.L3^B1>:
     a02:	6f 5f       	subi	r22, 0xFF	; 255
     a04:	7f 4f       	sbci	r23, 0xFF	; 255
     a06:	8f 4f       	sbci	r24, 0xFF	; 255
     a08:	9f 4f       	sbci	r25, 0xFF	; 255
     a0a:	16 c0       	rjmp	.+44     	; 0xa38 <.L_pack>

00000a0c <.L4^B1>:
     a0c:	88 23       	and	r24, r24
     a0e:	11 f0       	breq	.+4      	; 0xa14 <.L5^B1>
     a10:	96 e9       	ldi	r25, 0x96	; 150
     a12:	11 c0       	rjmp	.+34     	; 0xa36 <.L8^B1>

00000a14 <.L5^B1>:
     a14:	77 23       	and	r23, r23
     a16:	21 f0       	breq	.+8      	; 0xa20 <.L6^B1>
     a18:	9e e8       	ldi	r25, 0x8E	; 142
     a1a:	87 2f       	mov	r24, r23
     a1c:	76 2f       	mov	r23, r22
     a1e:	05 c0       	rjmp	.+10     	; 0xa2a <.L7^B1>

00000a20 <.L6^B1>:
     a20:	66 23       	and	r22, r22
     a22:	71 f0       	breq	.+28     	; 0xa40 <.L9^B1>
     a24:	96 e8       	ldi	r25, 0x86	; 134
     a26:	86 2f       	mov	r24, r22
     a28:	70 e0       	ldi	r23, 0x00	; 0

00000a2a <.L7^B1>:
     a2a:	60 e0       	ldi	r22, 0x00	; 0
     a2c:	2a f0       	brmi	.+10     	; 0xa38 <.L_pack>

00000a2e <.L10^B1>:
     a2e:	9a 95       	dec	r25
     a30:	66 0f       	add	r22, r22
     a32:	77 1f       	adc	r23, r23
     a34:	88 1f       	adc	r24, r24

00000a36 <.L8^B1>:
     a36:	da f7       	brpl	.-10     	; 0xa2e <.L10^B1>

00000a38 <.L_pack>:
     a38:	88 0f       	add	r24, r24
     a3a:	96 95       	lsr	r25
     a3c:	87 95       	ror	r24
     a3e:	97 f9       	bld	r25, 7

00000a40 <.L9^B1>:
     a40:	08 95       	ret

00000a42 <__fp_inf>:
     a42:	97 f9       	bld	r25, 7
     a44:	9f 67       	ori	r25, 0x7F	; 127
     a46:	80 e8       	ldi	r24, 0x80	; 128
     a48:	70 e0       	ldi	r23, 0x00	; 0
     a4a:	60 e0       	ldi	r22, 0x00	; 0
     a4c:	08 95       	ret

00000a4e <__fp_nan>:
     a4e:	9f ef       	ldi	r25, 0xFF	; 255
     a50:	80 ec       	ldi	r24, 0xC0	; 192
     a52:	08 95       	ret

00000a54 <__fp_pscA>:
     a54:	00 24       	eor	r0, r0
     a56:	0a 94       	dec	r0
     a58:	16 16       	cp	r1, r22
     a5a:	17 06       	cpc	r1, r23
     a5c:	18 06       	cpc	r1, r24
     a5e:	09 06       	cpc	r0, r25
     a60:	08 95       	ret

00000a62 <__fp_pscB>:
     a62:	00 24       	eor	r0, r0
     a64:	0a 94       	dec	r0
     a66:	12 16       	cp	r1, r18
     a68:	13 06       	cpc	r1, r19
     a6a:	14 06       	cpc	r1, r20
     a6c:	05 06       	cpc	r0, r21
     a6e:	08 95       	ret

00000a70 <__fp_round>:
     a70:	09 2e       	mov	r0, r25
     a72:	03 94       	inc	r0
     a74:	00 0c       	add	r0, r0
     a76:	11 f4       	brne	.+4      	; 0xa7c <.L1^B1>
     a78:	88 23       	and	r24, r24
     a7a:	52 f0       	brmi	.+20     	; 0xa90 <.L3^B1>

00000a7c <.L1^B1>:
     a7c:	bb 0f       	add	r27, r27
     a7e:	40 f4       	brcc	.+16     	; 0xa90 <.L3^B1>
     a80:	bf 2b       	or	r27, r31
     a82:	11 f4       	brne	.+4      	; 0xa88 <.L2^B1>
     a84:	60 ff       	sbrs	r22, 0
     a86:	04 c0       	rjmp	.+8      	; 0xa90 <.L3^B1>

00000a88 <.L2^B1>:
     a88:	6f 5f       	subi	r22, 0xFF	; 255
     a8a:	7f 4f       	sbci	r23, 0xFF	; 255
     a8c:	8f 4f       	sbci	r24, 0xFF	; 255
     a8e:	9f 4f       	sbci	r25, 0xFF	; 255

00000a90 <.L3^B1>:
     a90:	08 95       	ret

00000a92 <__fp_split3>:
     a92:	57 fd       	sbrc	r21, 7
     a94:	90 58       	subi	r25, 0x80	; 128
     a96:	44 0f       	add	r20, r20
     a98:	55 1f       	adc	r21, r21
     a9a:	59 f0       	breq	.+22     	; 0xab2 <.L4^B1>
     a9c:	5f 3f       	cpi	r21, 0xFF	; 255
     a9e:	71 f0       	breq	.+28     	; 0xabc <.L5^B1>

00000aa0 <.L1^B1>:
     aa0:	47 95       	ror	r20

00000aa2 <__fp_splitA>:
     aa2:	88 0f       	add	r24, r24
     aa4:	97 fb       	bst	r25, 7
     aa6:	99 1f       	adc	r25, r25
     aa8:	61 f0       	breq	.+24     	; 0xac2 <.L6^B1>
     aaa:	9f 3f       	cpi	r25, 0xFF	; 255
     aac:	79 f0       	breq	.+30     	; 0xacc <.L7^B1>

00000aae <.L3^B1>:
     aae:	87 95       	ror	r24
     ab0:	08 95       	ret

00000ab2 <.L4^B1>:
     ab2:	12 16       	cp	r1, r18
     ab4:	13 06       	cpc	r1, r19
     ab6:	14 06       	cpc	r1, r20
     ab8:	55 1f       	adc	r21, r21
     aba:	f2 cf       	rjmp	.-28     	; 0xaa0 <.L1^B1>

00000abc <.L5^B1>:
     abc:	46 95       	lsr	r20
     abe:	f1 df       	rcall	.-30     	; 0xaa2 <__fp_splitA>
     ac0:	08 c0       	rjmp	.+16     	; 0xad2 <.L8^B1>

00000ac2 <.L6^B1>:
     ac2:	16 16       	cp	r1, r22
     ac4:	17 06       	cpc	r1, r23
     ac6:	18 06       	cpc	r1, r24
     ac8:	99 1f       	adc	r25, r25
     aca:	f1 cf       	rjmp	.-30     	; 0xaae <.L3^B1>

00000acc <.L7^B1>:
     acc:	86 95       	lsr	r24
     ace:	71 05       	cpc	r23, r1
     ad0:	61 05       	cpc	r22, r1

00000ad2 <.L8^B1>:
     ad2:	08 94       	sec
     ad4:	08 95       	ret

00000ad6 <__fp_zero>:
     ad6:	e8 94       	clt

00000ad8 <__fp_szero>:
     ad8:	bb 27       	eor	r27, r27
     ada:	66 27       	eor	r22, r22
     adc:	77 27       	eor	r23, r23
     ade:	cb 01       	movw	r24, r22
     ae0:	97 f9       	bld	r25, 7
     ae2:	08 95       	ret

00000ae4 <__mulsf3>:
     ae4:	0e 94 85 05 	call	0xb0a	; 0xb0a <__mulsf3x>
     ae8:	0c 94 38 05 	jmp	0xa70	; 0xa70 <__fp_round>

00000aec <.L0^B1>:
     aec:	0e 94 2a 05 	call	0xa54	; 0xa54 <__fp_pscA>
     af0:	38 f0       	brcs	.+14     	; 0xb00 <.L1^B1>
     af2:	0e 94 31 05 	call	0xa62	; 0xa62 <__fp_pscB>
     af6:	20 f0       	brcs	.+8      	; 0xb00 <.L1^B1>
     af8:	95 23       	and	r25, r21
     afa:	11 f0       	breq	.+4      	; 0xb00 <.L1^B1>
     afc:	0c 94 21 05 	jmp	0xa42	; 0xa42 <__fp_inf>

00000b00 <.L1^B1>:
     b00:	0c 94 27 05 	jmp	0xa4e	; 0xa4e <__fp_nan>

00000b04 <.L2^B1>:
     b04:	11 24       	eor	r1, r1
     b06:	0c 94 6c 05 	jmp	0xad8	; 0xad8 <__fp_szero>

00000b0a <__mulsf3x>:
     b0a:	0e 94 49 05 	call	0xa92	; 0xa92 <__fp_split3>
     b0e:	70 f3       	brcs	.-36     	; 0xaec <.L0^B1>

00000b10 <__mulsf3_pse>:
     b10:	95 9f       	mul	r25, r21
     b12:	c1 f3       	breq	.-16     	; 0xb04 <.L2^B1>
     b14:	95 0f       	add	r25, r21
     b16:	50 e0       	ldi	r21, 0x00	; 0
     b18:	55 1f       	adc	r21, r21
     b1a:	62 9f       	mul	r22, r18
     b1c:	f0 01       	movw	r30, r0
     b1e:	72 9f       	mul	r23, r18
     b20:	bb 27       	eor	r27, r27
     b22:	f0 0d       	add	r31, r0
     b24:	b1 1d       	adc	r27, r1
     b26:	63 9f       	mul	r22, r19
     b28:	aa 27       	eor	r26, r26
     b2a:	f0 0d       	add	r31, r0
     b2c:	b1 1d       	adc	r27, r1
     b2e:	aa 1f       	adc	r26, r26
     b30:	64 9f       	mul	r22, r20
     b32:	66 27       	eor	r22, r22
     b34:	b0 0d       	add	r27, r0
     b36:	a1 1d       	adc	r26, r1
     b38:	66 1f       	adc	r22, r22
     b3a:	82 9f       	mul	r24, r18
     b3c:	22 27       	eor	r18, r18
     b3e:	b0 0d       	add	r27, r0
     b40:	a1 1d       	adc	r26, r1
     b42:	62 1f       	adc	r22, r18
     b44:	73 9f       	mul	r23, r19
     b46:	b0 0d       	add	r27, r0
     b48:	a1 1d       	adc	r26, r1
     b4a:	62 1f       	adc	r22, r18
     b4c:	83 9f       	mul	r24, r19
     b4e:	a0 0d       	add	r26, r0
     b50:	61 1d       	adc	r22, r1
     b52:	22 1f       	adc	r18, r18
     b54:	74 9f       	mul	r23, r20
     b56:	33 27       	eor	r19, r19
     b58:	a0 0d       	add	r26, r0
     b5a:	61 1d       	adc	r22, r1
     b5c:	23 1f       	adc	r18, r19
     b5e:	84 9f       	mul	r24, r20
     b60:	60 0d       	add	r22, r0
     b62:	21 1d       	adc	r18, r1
     b64:	82 2f       	mov	r24, r18
     b66:	76 2f       	mov	r23, r22
     b68:	6a 2f       	mov	r22, r26
     b6a:	11 24       	eor	r1, r1
     b6c:	9f 57       	subi	r25, 0x7F	; 127
     b6e:	50 40       	sbci	r21, 0x00	; 0
     b70:	9a f0       	brmi	.+38     	; 0xb98 <.L13^B1>
     b72:	f1 f0       	breq	.+60     	; 0xbb0 <.L15^B1>

00000b74 <.L10^B1>:
     b74:	88 23       	and	r24, r24
     b76:	4a f0       	brmi	.+18     	; 0xb8a <.L11^B1>
     b78:	ee 0f       	add	r30, r30
     b7a:	ff 1f       	adc	r31, r31
     b7c:	bb 1f       	adc	r27, r27
     b7e:	66 1f       	adc	r22, r22
     b80:	77 1f       	adc	r23, r23
     b82:	88 1f       	adc	r24, r24
     b84:	91 50       	subi	r25, 0x01	; 1
     b86:	50 40       	sbci	r21, 0x00	; 0
     b88:	a9 f7       	brne	.-22     	; 0xb74 <.L10^B1>

00000b8a <.L11^B1>:
     b8a:	9e 3f       	cpi	r25, 0xFE	; 254
     b8c:	51 05       	cpc	r21, r1
     b8e:	80 f0       	brcs	.+32     	; 0xbb0 <.L15^B1>
     b90:	0c 94 21 05 	jmp	0xa42	; 0xa42 <__fp_inf>

00000b94 <.L12^B1>:
     b94:	0c 94 6c 05 	jmp	0xad8	; 0xad8 <__fp_szero>

00000b98 <.L13^B1>:
     b98:	5f 3f       	cpi	r21, 0xFF	; 255
     b9a:	e4 f3       	brlt	.-8      	; 0xb94 <.L12^B1>
     b9c:	98 3e       	cpi	r25, 0xE8	; 232
     b9e:	d4 f3       	brlt	.-12     	; 0xb94 <.L12^B1>

00000ba0 <.L14^B1>:
     ba0:	86 95       	lsr	r24
     ba2:	77 95       	ror	r23
     ba4:	67 95       	ror	r22
     ba6:	b7 95       	ror	r27
     ba8:	f7 95       	ror	r31
     baa:	e7 95       	ror	r30
     bac:	9f 5f       	subi	r25, 0xFF	; 255
     bae:	c1 f7       	brne	.-16     	; 0xba0 <.L14^B1>

00000bb0 <.L15^B1>:
     bb0:	fe 2b       	or	r31, r30
     bb2:	88 0f       	add	r24, r24
     bb4:	91 1d       	adc	r25, r1
     bb6:	96 95       	lsr	r25
     bb8:	87 95       	ror	r24
     bba:	97 f9       	bld	r25, 7
     bbc:	08 95       	ret

00000bbe <sprintf>:
     bbe:	ae e0       	ldi	r26, 0x0E	; 14
     bc0:	b0 e0       	ldi	r27, 0x00	; 0
     bc2:	e5 ee       	ldi	r30, 0xE5	; 229
     bc4:	f5 e0       	ldi	r31, 0x05	; 5
     bc6:	0c 94 9f 08 	jmp	0x113e	; 0x113e <__prologue_saves__+0x1c>

00000bca <.L1^B1>:
     bca:	0d 89       	ldd	r16, Y+21	; 0x15
     bcc:	1e 89       	ldd	r17, Y+22	; 0x16
     bce:	86 e0       	ldi	r24, 0x06	; 6
     bd0:	8c 83       	std	Y+4, r24	; 0x04
     bd2:	1a 83       	std	Y+2, r17	; 0x02
     bd4:	09 83       	std	Y+1, r16	; 0x01
     bd6:	8f ef       	ldi	r24, 0xFF	; 255
     bd8:	9f e7       	ldi	r25, 0x7F	; 127
     bda:	9e 83       	std	Y+6, r25	; 0x06
     bdc:	8d 83       	std	Y+5, r24	; 0x05
     bde:	ae 01       	movw	r20, r28
     be0:	47 5e       	subi	r20, 0xE7	; 231
     be2:	5f 4f       	sbci	r21, 0xFF	; 255
     be4:	6f 89       	ldd	r22, Y+23	; 0x17
     be6:	78 8d       	ldd	r23, Y+24	; 0x18
     be8:	ce 01       	movw	r24, r28
     bea:	01 96       	adiw	r24, 0x01	; 1
     bec:	0e 94 02 06 	call	0xc04	; 0xc04 <vfprintf>
     bf0:	2f 81       	ldd	r18, Y+7	; 0x07
     bf2:	38 85       	ldd	r19, Y+8	; 0x08
     bf4:	02 0f       	add	r16, r18
     bf6:	13 1f       	adc	r17, r19
     bf8:	f8 01       	movw	r30, r16
     bfa:	10 82       	st	Z, r1
     bfc:	2e 96       	adiw	r28, 0x0e	; 14
     bfe:	e4 e0       	ldi	r30, 0x04	; 4
     c00:	0c 94 bb 08 	jmp	0x1176	; 0x1176 <__epilogue_restores__+0x1c>

00000c04 <vfprintf>:
     c04:	ab e0       	ldi	r26, 0x0B	; 11
     c06:	b0 e0       	ldi	r27, 0x00	; 0
     c08:	e8 e0       	ldi	r30, 0x08	; 8
     c0a:	f6 e0       	ldi	r31, 0x06	; 6
     c0c:	0c 94 94 08 	jmp	0x1128	; 0x1128 <__prologue_saves__+0x6>

00000c10 <.L1^B1>:
     c10:	6c 01       	movw	r12, r24
     c12:	7b 01       	movw	r14, r22
     c14:	8a 01       	movw	r16, r20
     c16:	fc 01       	movw	r30, r24
     c18:	17 82       	std	Z+7, r1	; 0x07
     c1a:	16 82       	std	Z+6, r1	; 0x06
     c1c:	83 81       	ldd	r24, Z+3	; 0x03
     c1e:	81 ff       	sbrs	r24, 1
     c20:	d9 c1       	rjmp	.+946    	; 0xfd4 <.L81>
     c22:	9a e0       	ldi	r25, 0x0A	; 10
     c24:	59 2e       	mov	r5, r25

00000c26 <.L3>:
     c26:	f6 01       	movw	r30, r12
     c28:	23 81       	ldd	r18, Z+3	; 0x03
     c2a:	f7 01       	movw	r30, r14
     c2c:	23 fd       	sbrc	r18, 3
     c2e:	85 91       	lpm	r24, Z+
     c30:	23 ff       	sbrs	r18, 3
     c32:	81 91       	ld	r24, Z+
     c34:	7f 01       	movw	r14, r30
     c36:	81 15       	cp	r24, r1
     c38:	09 f4       	brne	.+2      	; 0xc3c <L0^A+0x2>

00000c3a <L0^A>:
     c3a:	1f c1       	rjmp	.+574    	; 0xe7a <.L4>
     c3c:	85 32       	cpi	r24, 0x25	; 37
     c3e:	39 f4       	brne	.+14     	; 0xc4e <.L5>
     c40:	23 fd       	sbrc	r18, 3
     c42:	95 91       	lpm	r25, Z+
     c44:	23 ff       	sbrs	r18, 3
     c46:	91 91       	ld	r25, Z+
     c48:	7f 01       	movw	r14, r30
     c4a:	95 32       	cpi	r25, 0x25	; 37
     c4c:	29 f4       	brne	.+10     	; 0xc58 <.L82>

00000c4e <.L5>:
     c4e:	b6 01       	movw	r22, r12
     c50:	90 e0       	ldi	r25, 0x00	; 0
     c52:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     c56:	e7 cf       	rjmp	.-50     	; 0xc26 <.L3>

00000c58 <.L82>:
     c58:	30 e0       	ldi	r19, 0x00	; 0
     c5a:	91 2c       	mov	r9, r1
     c5c:	61 2c       	mov	r6, r1
     c5e:	71 2c       	mov	r7, r1

00000c60 <.L6>:
     c60:	f0 e2       	ldi	r31, 0x20	; 32
     c62:	7f 16       	cp	r7, r31
     c64:	40 f5       	brcc	.+80     	; 0xcb6 <.L8>
     c66:	9b 32       	cpi	r25, 0x2B	; 43
     c68:	d9 f0       	breq	.+54     	; 0xca0 <.L9>
     c6a:	58 f4       	brcc	.+22     	; 0xc82 <.L10>
     c6c:	90 32       	cpi	r25, 0x20	; 32
     c6e:	d1 f0       	breq	.+52     	; 0xca4 <.L11>
     c70:	93 32       	cpi	r25, 0x23	; 35
     c72:	f1 f0       	breq	.+60     	; 0xcb0 <.L12>

00000c74 <.L13>:
     c74:	9e 32       	cpi	r25, 0x2E	; 46
     c76:	99 f5       	brne	.+102    	; 0xcde <.L19>
     c78:	76 fc       	sbrc	r7, 6
     c7a:	ff c0       	rjmp	.+510    	; 0xe7a <.L4>
     c7c:	68 94       	set
     c7e:	76 f8       	bld	r7, 6
     c80:	06 c0       	rjmp	.+12     	; 0xc8e <.L16>

00000c82 <.L10>:
     c82:	9d 32       	cpi	r25, 0x2D	; 45
     c84:	91 f0       	breq	.+36     	; 0xcaa <.L14>
     c86:	90 33       	cpi	r25, 0x30	; 48
     c88:	c1 f4       	brne	.+48     	; 0xcba <.L15>
     c8a:	68 94       	set
     c8c:	70 f8       	bld	r7, 0

00000c8e <.L16>:
     c8e:	f7 01       	movw	r30, r14
     c90:	23 fd       	sbrc	r18, 3
     c92:	95 91       	lpm	r25, Z+
     c94:	23 ff       	sbrs	r18, 3
     c96:	91 91       	ld	r25, Z+
     c98:	7f 01       	movw	r14, r30
     c9a:	91 11       	cpse	r25, r1
     c9c:	e1 cf       	rjmp	.-62     	; 0xc60 <.L6>
     c9e:	29 c0       	rjmp	.+82     	; 0xcf2 <.L17>

00000ca0 <.L9>:
     ca0:	68 94       	set
     ca2:	71 f8       	bld	r7, 1

00000ca4 <.L11>:
     ca4:	68 94       	set
     ca6:	72 f8       	bld	r7, 2
     ca8:	f2 cf       	rjmp	.-28     	; 0xc8e <.L16>

00000caa <.L14>:
     caa:	68 94       	set
     cac:	73 f8       	bld	r7, 3
     cae:	ef cf       	rjmp	.-34     	; 0xc8e <.L16>

00000cb0 <.L12>:
     cb0:	68 94       	set
     cb2:	74 f8       	bld	r7, 4
     cb4:	ec cf       	rjmp	.-40     	; 0xc8e <.L16>

00000cb6 <.L8>:
     cb6:	77 fc       	sbrc	r7, 7
     cb8:	1c c0       	rjmp	.+56     	; 0xcf2 <.L17>

00000cba <.L15>:
     cba:	80 ed       	ldi	r24, 0xD0	; 208
     cbc:	89 0f       	add	r24, r25
     cbe:	8a 30       	cpi	r24, 0x0A	; 10
     cc0:	c8 f6       	brcc	.-78     	; 0xc74 <.L13>
     cc2:	76 fe       	sbrs	r7, 6
     cc4:	05 c0       	rjmp	.+10     	; 0xcd0 <.L18>
     cc6:	95 9c       	mul	r9, r5
     cc8:	80 0d       	add	r24, r0
     cca:	11 24       	eor	r1, r1
     ccc:	98 2e       	mov	r9, r24
     cce:	df cf       	rjmp	.-66     	; 0xc8e <.L16>

00000cd0 <.L18>:
     cd0:	65 9c       	mul	r6, r5
     cd2:	80 0d       	add	r24, r0
     cd4:	11 24       	eor	r1, r1
     cd6:	68 2e       	mov	r6, r24
     cd8:	68 94       	set
     cda:	75 f8       	bld	r7, 5
     cdc:	d8 cf       	rjmp	.-80     	; 0xc8e <.L16>

00000cde <.L19>:
     cde:	9c 36       	cpi	r25, 0x6C	; 108
     ce0:	19 f4       	brne	.+6      	; 0xce8 <.L20>
     ce2:	68 94       	set
     ce4:	77 f8       	bld	r7, 7
     ce6:	d3 cf       	rjmp	.-90     	; 0xc8e <.L16>

00000ce8 <.L20>:
     ce8:	9c 34       	cpi	r25, 0x4C	; 76
     cea:	09 f4       	brne	.+2      	; 0xcee <L0^A+0x2>

00000cec <L0^A>:
     cec:	4b c0       	rjmp	.+150    	; 0xd84 <.L83>
     cee:	98 36       	cpi	r25, 0x68	; 104
     cf0:	71 f2       	breq	.-100    	; 0xc8e <.L16>

00000cf2 <.L17>:
     cf2:	89 2f       	mov	r24, r25
     cf4:	8f 7d       	andi	r24, 0xDF	; 223
     cf6:	85 54       	subi	r24, 0x45	; 69
     cf8:	83 30       	cpi	r24, 0x03	; 3
     cfa:	08 f4       	brcc	.+2      	; 0xcfe <L0^A+0x2>

00000cfc <L0^A>:
     cfc:	45 c0       	rjmp	.+138    	; 0xd88 <.L21>
     cfe:	93 36       	cpi	r25, 0x63	; 99
     d00:	09 f4       	brne	.+2      	; 0xd04 <L0^A+0x2>

00000d02 <L0^A>:
     d02:	66 c0       	rjmp	.+204    	; 0xdd0 <.L22>
     d04:	93 37       	cpi	r25, 0x73	; 115
     d06:	09 f4       	brne	.+2      	; 0xd0a <L0^A+0x2>

00000d08 <L0^A>:
     d08:	69 c0       	rjmp	.+210    	; 0xddc <.L23>
     d0a:	93 35       	cpi	r25, 0x53	; 83
     d0c:	09 f4       	brne	.+2      	; 0xd10 <L0^A+0x2>

00000d0e <L0^A>:
     d0e:	75 c0       	rjmp	.+234    	; 0xdfa <.L24>
     d10:	94 36       	cpi	r25, 0x64	; 100
     d12:	19 f0       	breq	.+6      	; 0xd1a <.L39>
     d14:	99 36       	cpi	r25, 0x69	; 105
     d16:	09 f0       	breq	.+2      	; 0xd1a <.L39>

00000d18 <L0^A>:
     d18:	9f c0       	rjmp	.+318    	; 0xe58 <.L40>

00000d1a <.L39>:
     d1a:	f8 01       	movw	r30, r16
     d1c:	77 fe       	sbrs	r7, 7
     d1e:	95 c0       	rjmp	.+298    	; 0xe4a <.L41>
     d20:	61 91       	ld	r22, Z+
     d22:	71 91       	ld	r23, Z+
     d24:	81 91       	ld	r24, Z+
     d26:	91 91       	ld	r25, Z+

00000d28 <.L128>:
     d28:	8f 01       	movw	r16, r30
     d2a:	27 2d       	mov	r18, r7
     d2c:	2f 76       	andi	r18, 0x6F	; 111
     d2e:	82 2e       	mov	r8, r18
     d30:	97 ff       	sbrs	r25, 7
     d32:	09 c0       	rjmp	.+18     	; 0xd46 <.L43>
     d34:	90 95       	com	r25
     d36:	80 95       	com	r24
     d38:	70 95       	com	r23
     d3a:	61 95       	neg	r22
     d3c:	7f 4f       	sbci	r23, 0xFF	; 255
     d3e:	8f 4f       	sbci	r24, 0xFF	; 255
     d40:	9f 4f       	sbci	r25, 0xFF	; 255
     d42:	68 94       	set
     d44:	87 f8       	bld	r8, 7

00000d46 <.L43>:
     d46:	2a e0       	ldi	r18, 0x0A	; 10
     d48:	30 e0       	ldi	r19, 0x00	; 0
     d4a:	ae 01       	movw	r20, r28
     d4c:	4f 5f       	subi	r20, 0xFF	; 255
     d4e:	5f 4f       	sbci	r21, 0xFF	; 255
     d50:	5a 01       	movw	r10, r20
     d52:	0e 94 33 08 	call	0x1066	; 0x1066 <__ultoa_invert>
     d56:	8a 19       	sub	r24, r10
     d58:	a8 2e       	mov	r10, r24

00000d5a <.L44>:
     d5a:	86 fe       	sbrs	r8, 6
     d5c:	c4 c0       	rjmp	.+392    	; 0xee6 <.L54>
     d5e:	88 2d       	mov	r24, r8
     d60:	8e 7f       	andi	r24, 0xFE	; 254
     d62:	a9 14       	cp	r10, r9
     d64:	08 f0       	brcs	.+2      	; 0xd68 <L0^A+0x2>

00000d66 <L0^A>:
     d66:	be c0       	rjmp	.+380    	; 0xee4 <.L89>
     d68:	84 fe       	sbrs	r8, 4
     d6a:	11 c1       	rjmp	.+546    	; 0xf8e <.L90>
     d6c:	82 fc       	sbrc	r8, 2
     d6e:	05 c1       	rjmp	.+522    	; 0xf7a <.L91>
     d70:	f8 2d       	mov	r31, r8
     d72:	fe 7e       	andi	r31, 0xEE	; 238
     d74:	8f 2e       	mov	r8, r31
     d76:	b9 2c       	mov	r11, r9

00000d78 <.L55>:
     d78:	88 2d       	mov	r24, r8
     d7a:	86 78       	andi	r24, 0x86	; 134
     d7c:	81 15       	cp	r24, r1
     d7e:	09 f4       	brne	.+2      	; 0xd82 <L0^A+0x2>

00000d80 <L0^A>:
     d80:	bf c0       	rjmp	.+382    	; 0xf00 <.L58>
     d82:	00 c1       	rjmp	.+512    	; 0xf84 <.L130>

00000d84 <.L83>:
     d84:	31 e0       	ldi	r19, 0x01	; 1
     d86:	83 cf       	rjmp	.-250    	; 0xc8e <.L16>

00000d88 <.L21>:
     d88:	31 15       	cp	r19, r1
     d8a:	f9 f0       	breq	.+62     	; 0xdca <.L26>
     d8c:	08 5f       	subi	r16, 0xF8	; 248
     d8e:	1f 4f       	sbci	r17, 0xFF	; 255

00000d90 <.L27>:
     d90:	8f e3       	ldi	r24, 0x3F	; 63
     d92:	89 83       	std	Y+1, r24	; 0x01

00000d94 <.L127>:
     d94:	88 24       	eor	r8, r8
     d96:	83 94       	inc	r8
     d98:	91 2c       	mov	r9, r1
     d9a:	ae 01       	movw	r20, r28
     d9c:	4f 5f       	subi	r20, 0xFF	; 255
     d9e:	5f 4f       	sbci	r21, 0xFF	; 255
     da0:	5a 01       	movw	r10, r20

00000da2 <.L28>:
     da2:	e8 94       	clt
     da4:	77 f8       	bld	r7, 7

00000da6 <.L30>:
     da6:	73 fc       	sbrc	r7, 3
     da8:	03 c0       	rjmp	.+6      	; 0xdb0 <.L33>

00000daa <.L32>:
     daa:	86 14       	cp	r8, r6
     dac:	91 04       	cpc	r9, r1
     dae:	b0 f1       	brcs	.+108    	; 0xe1c <.L34>

00000db0 <.L33>:
     db0:	81 14       	cp	r8, r1
     db2:	91 04       	cpc	r9, r1
     db4:	d1 f5       	brne	.+116    	; 0xe2a <.L37>

00000db6 <.L38>:
     db6:	61 14       	cp	r6, r1
     db8:	09 f4       	brne	.+2      	; 0xdbc <L0^A+0x2>

00000dba <L0^A>:
     dba:	35 cf       	rjmp	.-406    	; 0xc26 <.L3>
     dbc:	b6 01       	movw	r22, r12
     dbe:	80 e2       	ldi	r24, 0x20	; 32
     dc0:	90 e0       	ldi	r25, 0x00	; 0
     dc2:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     dc6:	6a 94       	dec	r6
     dc8:	f6 cf       	rjmp	.-20     	; 0xdb6 <.L38>

00000dca <.L26>:
     dca:	0c 5f       	subi	r16, 0xFC	; 252
     dcc:	1f 4f       	sbci	r17, 0xFF	; 255
     dce:	e0 cf       	rjmp	.-64     	; 0xd90 <.L27>

00000dd0 <.L22>:
     dd0:	f8 01       	movw	r30, r16
     dd2:	80 81       	ld	r24, Z
     dd4:	89 83       	std	Y+1, r24	; 0x01
     dd6:	0e 5f       	subi	r16, 0xFE	; 254
     dd8:	1f 4f       	sbci	r17, 0xFF	; 255
     dda:	dc cf       	rjmp	.-72     	; 0xd94 <.L127>

00000ddc <.L23>:
     ddc:	f8 01       	movw	r30, r16
     dde:	a1 90       	ld	r10, Z+
     de0:	b1 90       	ld	r11, Z+
     de2:	8f 01       	movw	r16, r30
     de4:	69 2d       	mov	r22, r9
     de6:	70 e0       	ldi	r23, 0x00	; 0
     de8:	76 fc       	sbrc	r7, 6
     dea:	02 c0       	rjmp	.+4      	; 0xdf0 <.L29>
     dec:	6f ef       	ldi	r22, 0xFF	; 255
     dee:	7f ef       	ldi	r23, 0xFF	; 255

00000df0 <.L29>:
     df0:	c5 01       	movw	r24, r10
     df2:	0e 94 f8 07 	call	0xff0	; 0xff0 <strnlen>
     df6:	4c 01       	movw	r8, r24
     df8:	d4 cf       	rjmp	.-88     	; 0xda2 <.L28>

00000dfa <.L24>:
     dfa:	f8 01       	movw	r30, r16
     dfc:	a1 90       	ld	r10, Z+
     dfe:	b1 90       	ld	r11, Z+
     e00:	8f 01       	movw	r16, r30
     e02:	69 2d       	mov	r22, r9
     e04:	70 e0       	ldi	r23, 0x00	; 0
     e06:	76 fc       	sbrc	r7, 6
     e08:	02 c0       	rjmp	.+4      	; 0xe0e <.L31>
     e0a:	6f ef       	ldi	r22, 0xFF	; 255
     e0c:	7f ef       	ldi	r23, 0xFF	; 255

00000e0e <.L31>:
     e0e:	c5 01       	movw	r24, r10
     e10:	0e 94 ed 07 	call	0xfda	; 0xfda <strnlen_P>
     e14:	4c 01       	movw	r8, r24
     e16:	68 94       	set
     e18:	77 f8       	bld	r7, 7
     e1a:	c5 cf       	rjmp	.-118    	; 0xda6 <.L30>

00000e1c <.L34>:
     e1c:	b6 01       	movw	r22, r12
     e1e:	80 e2       	ldi	r24, 0x20	; 32
     e20:	90 e0       	ldi	r25, 0x00	; 0
     e22:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     e26:	6a 94       	dec	r6
     e28:	c0 cf       	rjmp	.-128    	; 0xdaa <.L32>

00000e2a <.L37>:
     e2a:	f5 01       	movw	r30, r10
     e2c:	77 fc       	sbrc	r7, 7
     e2e:	85 91       	lpm	r24, Z+
     e30:	77 fe       	sbrs	r7, 7
     e32:	81 91       	ld	r24, Z+
     e34:	5f 01       	movw	r10, r30
     e36:	b6 01       	movw	r22, r12
     e38:	90 e0       	ldi	r25, 0x00	; 0
     e3a:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     e3e:	61 10       	cpse	r6, r1
     e40:	6a 94       	dec	r6
     e42:	f1 e0       	ldi	r31, 0x01	; 1
     e44:	8f 1a       	sub	r8, r31
     e46:	91 08       	sbc	r9, r1
     e48:	b3 cf       	rjmp	.-154    	; 0xdb0 <.L33>

00000e4a <.L41>:
     e4a:	61 91       	ld	r22, Z+
     e4c:	71 91       	ld	r23, Z+
     e4e:	07 2e       	mov	r0, r23
     e50:	00 0c       	add	r0, r0
     e52:	88 0b       	sbc	r24, r24
     e54:	99 0b       	sbc	r25, r25
     e56:	68 cf       	rjmp	.-304    	; 0xd28 <.L128>

00000e58 <.L40>:
     e58:	87 2c       	mov	r8, r7
     e5a:	e8 94       	clt
     e5c:	84 f8       	bld	r8, 4
     e5e:	2a e0       	ldi	r18, 0x0A	; 10
     e60:	30 e0       	ldi	r19, 0x00	; 0
     e62:	95 37       	cpi	r25, 0x75	; 117
     e64:	39 f1       	breq	.+78     	; 0xeb4 <.L46>
     e66:	57 2d       	mov	r21, r7
     e68:	59 7f       	andi	r21, 0xF9	; 249
     e6a:	85 2e       	mov	r8, r21
     e6c:	90 37       	cpi	r25, 0x70	; 112
     e6e:	99 f0       	breq	.+38     	; 0xe96 <.L47>
     e70:	58 f4       	brcc	.+22     	; 0xe88 <.L48>
     e72:	98 35       	cpi	r25, 0x58	; 88
     e74:	a9 f0       	breq	.+42     	; 0xea0 <.L49>
     e76:	9f 36       	cpi	r25, 0x6F	; 111
     e78:	d9 f0       	breq	.+54     	; 0xeb0 <.L86>

00000e7a <.L4>:
     e7a:	f6 01       	movw	r30, r12
     e7c:	86 81       	ldd	r24, Z+6	; 0x06
     e7e:	97 81       	ldd	r25, Z+7	; 0x07

00000e80 <.L1>:
     e80:	2b 96       	adiw	r28, 0x0b	; 11
     e82:	ef e0       	ldi	r30, 0x0F	; 15
     e84:	0c 94 b0 08 	jmp	0x1160	; 0x1160 <__epilogue_restores__+0x6>

00000e88 <.L48>:
     e88:	98 37       	cpi	r25, 0x78	; 120
     e8a:	b9 f7       	brne	.-18     	; 0xe7a <.L4>
     e8c:	74 fc       	sbrc	r7, 4
     e8e:	05 c0       	rjmp	.+10     	; 0xe9a <.L51>

00000e90 <.L87>:
     e90:	20 e1       	ldi	r18, 0x10	; 16
     e92:	30 e0       	ldi	r19, 0x00	; 0
     e94:	0f c0       	rjmp	.+30     	; 0xeb4 <.L46>

00000e96 <.L47>:
     e96:	68 94       	set
     e98:	84 f8       	bld	r8, 4

00000e9a <.L51>:
     e9a:	68 94       	set
     e9c:	82 f8       	bld	r8, 2
     e9e:	f8 cf       	rjmp	.-16     	; 0xe90 <.L87>

00000ea0 <.L49>:
     ea0:	74 fe       	sbrs	r7, 4
     ea2:	03 c0       	rjmp	.+6      	; 0xeaa <.L88>
     ea4:	87 2d       	mov	r24, r7
     ea6:	86 60       	ori	r24, 0x06	; 6
     ea8:	88 2e       	mov	r8, r24

00000eaa <.L88>:
     eaa:	20 e1       	ldi	r18, 0x10	; 16
     eac:	32 e0       	ldi	r19, 0x02	; 2
     eae:	02 c0       	rjmp	.+4      	; 0xeb4 <.L46>

00000eb0 <.L86>:
     eb0:	28 e0       	ldi	r18, 0x08	; 8
     eb2:	30 e0       	ldi	r19, 0x00	; 0

00000eb4 <.L46>:
     eb4:	f8 01       	movw	r30, r16
     eb6:	87 fe       	sbrs	r8, 7
     eb8:	10 c0       	rjmp	.+32     	; 0xeda <.L52>
     eba:	61 91       	ld	r22, Z+
     ebc:	71 91       	ld	r23, Z+
     ebe:	81 91       	ld	r24, Z+
     ec0:	91 91       	ld	r25, Z+

00000ec2 <.L129>:
     ec2:	8f 01       	movw	r16, r30
     ec4:	fe 01       	movw	r30, r28
     ec6:	31 96       	adiw	r30, 0x01	; 1
     ec8:	5f 01       	movw	r10, r30
     eca:	af 01       	movw	r20, r30
     ecc:	0e 94 33 08 	call	0x1066	; 0x1066 <__ultoa_invert>
     ed0:	8a 19       	sub	r24, r10
     ed2:	a8 2e       	mov	r10, r24
     ed4:	e8 94       	clt
     ed6:	87 f8       	bld	r8, 7
     ed8:	40 cf       	rjmp	.-384    	; 0xd5a <.L44>

00000eda <.L52>:
     eda:	61 91       	ld	r22, Z+
     edc:	71 91       	ld	r23, Z+
     ede:	80 e0       	ldi	r24, 0x00	; 0
     ee0:	90 e0       	ldi	r25, 0x00	; 0
     ee2:	ef cf       	rjmp	.-34     	; 0xec2 <.L129>

00000ee4 <.L89>:
     ee4:	88 2e       	mov	r8, r24

00000ee6 <.L54>:
     ee6:	ba 2c       	mov	r11, r10
     ee8:	84 fe       	sbrs	r8, 4
     eea:	46 cf       	rjmp	.-372    	; 0xd78 <.L55>

00000eec <.L56>:
     eec:	fe 01       	movw	r30, r28
     eee:	ea 0d       	add	r30, r10
     ef0:	f1 1d       	adc	r31, r1
     ef2:	80 81       	ld	r24, Z
     ef4:	80 33       	cpi	r24, 0x30	; 48
     ef6:	09 f0       	breq	.+2      	; 0xefa <L0^A+0x2>

00000ef8 <L0^A>:
     ef8:	43 c0       	rjmp	.+134    	; 0xf80 <.L57>
     efa:	28 2d       	mov	r18, r8
     efc:	29 7e       	andi	r18, 0xE9	; 233
     efe:	82 2e       	mov	r8, r18

00000f00 <.L58>:
     f00:	83 fc       	sbrc	r8, 3
     f02:	0e c0       	rjmp	.+28     	; 0xf20 <.L60>
     f04:	80 fe       	sbrs	r8, 0
     f06:	4f c0       	rjmp	.+158    	; 0xfa6 <.L93>
     f08:	9a 2c       	mov	r9, r10
     f0a:	b6 14       	cp	r11, r6
     f0c:	18 f4       	brcc	.+6      	; 0xf14 <.L80>
     f0e:	96 0c       	add	r9, r6
     f10:	9b 18       	sub	r9, r11
     f12:	b6 2c       	mov	r11, r6

00000f14 <.L80>:
     f14:	86 2d       	mov	r24, r6
     f16:	8b 19       	sub	r24, r11
     f18:	6b 14       	cp	r6, r11
     f1a:	08 f4       	brcc	.+2      	; 0xf1e <.L65>
     f1c:	80 e0       	ldi	r24, 0x00	; 0

00000f1e <.L65>:
     f1e:	b8 0e       	add	r11, r24

00000f20 <.L60>:
     f20:	b6 14       	cp	r11, r6
     f22:	08 f0       	brcs	.+2      	; 0xf26 <L0^A+0x2>

00000f24 <L0^A>:
     f24:	42 c0       	rjmp	.+132    	; 0xfaa <.L95>
     f26:	6b 18       	sub	r6, r11

00000f28 <.L67>:
     f28:	84 fe       	sbrs	r8, 4
     f2a:	41 c0       	rjmp	.+130    	; 0xfae <.L68>
     f2c:	b6 01       	movw	r22, r12
     f2e:	80 e3       	ldi	r24, 0x30	; 48
     f30:	90 e0       	ldi	r25, 0x00	; 0
     f32:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     f36:	82 fe       	sbrs	r8, 2
     f38:	09 c0       	rjmp	.+18     	; 0xf4c <.L75>
     f3a:	88 e5       	ldi	r24, 0x58	; 88
     f3c:	90 e0       	ldi	r25, 0x00	; 0
     f3e:	81 fc       	sbrc	r8, 1
     f40:	02 c0       	rjmp	.+4      	; 0xf46 <.L71>
     f42:	88 e7       	ldi	r24, 0x78	; 120
     f44:	90 e0       	ldi	r25, 0x00	; 0

00000f46 <.L71>:
     f46:	b6 01       	movw	r22, r12

00000f48 <.L131>:
     f48:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>

00000f4c <.L75>:
     f4c:	a9 14       	cp	r10, r9
     f4e:	d8 f1       	brcs	.+118    	; 0xfc6 <.L76>
     f50:	aa 94       	dec	r10
     f52:	b1 2c       	mov	r11, r1
     f54:	4f ef       	ldi	r20, 0xFF	; 255
     f56:	a4 1a       	sub	r10, r20
     f58:	b4 0a       	sbc	r11, r20
     f5a:	ce 01       	movw	r24, r28
     f5c:	01 96       	adiw	r24, 0x01	; 1
     f5e:	4c 01       	movw	r8, r24
     f60:	a8 0e       	add	r10, r24
     f62:	b9 1e       	adc	r11, r25

00000f64 <.L77>:
     f64:	f5 01       	movw	r30, r10
     f66:	82 91       	ld	r24, -Z
     f68:	5f 01       	movw	r10, r30
     f6a:	b6 01       	movw	r22, r12
     f6c:	90 e0       	ldi	r25, 0x00	; 0
     f6e:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     f72:	8a 14       	cp	r8, r10
     f74:	9b 04       	cpc	r9, r11
     f76:	b1 f7       	brne	.-20     	; 0xf64 <.L77>
     f78:	1e cf       	rjmp	.-452    	; 0xdb6 <.L38>

00000f7a <.L91>:
     f7a:	b9 2c       	mov	r11, r9
     f7c:	88 2e       	mov	r8, r24
     f7e:	b6 cf       	rjmp	.-148    	; 0xeec <.L56>

00000f80 <.L57>:
     f80:	82 fc       	sbrc	r8, 2
     f82:	02 c0       	rjmp	.+4      	; 0xf88 <.L59>

00000f84 <.L130>:
     f84:	b3 94       	inc	r11
     f86:	bc cf       	rjmp	.-136    	; 0xf00 <.L58>

00000f88 <.L59>:
     f88:	b3 94       	inc	r11
     f8a:	b3 94       	inc	r11
     f8c:	b9 cf       	rjmp	.-142    	; 0xf00 <.L58>

00000f8e <.L90>:
     f8e:	b9 2c       	mov	r11, r9
     f90:	88 2e       	mov	r8, r24
     f92:	f2 ce       	rjmp	.-540    	; 0xd78 <.L55>

00000f94 <.L63>:
     f94:	b6 01       	movw	r22, r12
     f96:	80 e2       	ldi	r24, 0x20	; 32
     f98:	90 e0       	ldi	r25, 0x00	; 0
     f9a:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     f9e:	73 94       	inc	r7

00000fa0 <.L61>:
     fa0:	76 14       	cp	r7, r6
     fa2:	c0 f3       	brcs	.-16     	; 0xf94 <.L63>
     fa4:	b7 cf       	rjmp	.-146    	; 0xf14 <.L80>

00000fa6 <.L93>:
     fa6:	7b 2c       	mov	r7, r11
     fa8:	fb cf       	rjmp	.-10     	; 0xfa0 <.L61>

00000faa <.L95>:
     faa:	61 2c       	mov	r6, r1
     fac:	bd cf       	rjmp	.-134    	; 0xf28 <.L67>

00000fae <.L68>:
     fae:	88 2d       	mov	r24, r8
     fb0:	86 78       	andi	r24, 0x86	; 134
     fb2:	81 15       	cp	r24, r1
     fb4:	59 f2       	breq	.-106    	; 0xf4c <.L75>
     fb6:	80 e2       	ldi	r24, 0x20	; 32
     fb8:	81 fc       	sbrc	r8, 1
     fba:	8b e2       	ldi	r24, 0x2B	; 43
     fbc:	87 fc       	sbrc	r8, 7
     fbe:	8d e2       	ldi	r24, 0x2D	; 45
     fc0:	b6 01       	movw	r22, r12
     fc2:	90 e0       	ldi	r25, 0x00	; 0
     fc4:	c1 cf       	rjmp	.-126    	; 0xf48 <.L131>

00000fc6 <.L76>:
     fc6:	b6 01       	movw	r22, r12
     fc8:	80 e3       	ldi	r24, 0x30	; 48
     fca:	90 e0       	ldi	r25, 0x00	; 0
     fcc:	0e 94 03 08 	call	0x1006	; 0x1006 <fputc>
     fd0:	9a 94       	dec	r9
     fd2:	bc cf       	rjmp	.-136    	; 0xf4c <.L75>

00000fd4 <.L81>:
     fd4:	8f ef       	ldi	r24, 0xFF	; 255
     fd6:	9f ef       	ldi	r25, 0xFF	; 255
     fd8:	53 cf       	rjmp	.-346    	; 0xe80 <.L1>

00000fda <strnlen_P>:
     fda:	fc 01       	movw	r30, r24

00000fdc <.L_strnlen_P_loop>:
     fdc:	05 90       	lpm	r0, Z+
     fde:	61 50       	subi	r22, 0x01	; 1
     fe0:	70 40       	sbci	r23, 0x00	; 0
     fe2:	01 10       	cpse	r0, r1
     fe4:	d8 f7       	brcc	.-10     	; 0xfdc <.L_strnlen_P_loop>
     fe6:	80 95       	com	r24
     fe8:	90 95       	com	r25
     fea:	8e 0f       	add	r24, r30
     fec:	9f 1f       	adc	r25, r31
     fee:	08 95       	ret

00000ff0 <strnlen>:
     ff0:	fc 01       	movw	r30, r24

00000ff2 <.L_strnlen_loop>:
     ff2:	61 50       	subi	r22, 0x01	; 1
     ff4:	70 40       	sbci	r23, 0x00	; 0
     ff6:	01 90       	ld	r0, Z+
     ff8:	01 10       	cpse	r0, r1
     ffa:	d8 f7       	brcc	.-10     	; 0xff2 <.L_strnlen_loop>
     ffc:	80 95       	com	r24
     ffe:	90 95       	com	r25
    1000:	8e 0f       	add	r24, r30
    1002:	9f 1f       	adc	r25, r31
    1004:	08 95       	ret

00001006 <fputc>:
    1006:	0f 93       	push	r16
    1008:	1f 93       	push	r17
    100a:	cf 93       	push	r28
    100c:	df 93       	push	r29
    100e:	18 2f       	mov	r17, r24
    1010:	09 2f       	mov	r16, r25
    1012:	eb 01       	movw	r28, r22
    1014:	8b 81       	ldd	r24, Y+3	; 0x03
    1016:	81 fd       	sbrc	r24, 1
    1018:	09 c0       	rjmp	.+18     	; 0x102c <.L2>

0000101a <.L7>:
    101a:	1f ef       	ldi	r17, 0xFF	; 255
    101c:	0f ef       	ldi	r16, 0xFF	; 255

0000101e <.L3>:
    101e:	81 2f       	mov	r24, r17
    1020:	90 2f       	mov	r25, r16
    1022:	df 91       	pop	r29
    1024:	cf 91       	pop	r28
    1026:	1f 91       	pop	r17
    1028:	0f 91       	pop	r16
    102a:	08 95       	ret

0000102c <.L2>:
    102c:	82 ff       	sbrs	r24, 2
    102e:	14 c0       	rjmp	.+40     	; 0x1058 <.L4>
    1030:	2e 81       	ldd	r18, Y+6	; 0x06
    1032:	3f 81       	ldd	r19, Y+7	; 0x07
    1034:	8c 81       	ldd	r24, Y+4	; 0x04
    1036:	9d 81       	ldd	r25, Y+5	; 0x05
    1038:	28 17       	cp	r18, r24
    103a:	39 07       	cpc	r19, r25
    103c:	3c f4       	brge	.+14     	; 0x104c <.L8>
    103e:	e8 81       	ld	r30, Y
    1040:	f9 81       	ldd	r31, Y+1	; 0x01
    1042:	cf 01       	movw	r24, r30
    1044:	01 96       	adiw	r24, 0x01	; 1
    1046:	99 83       	std	Y+1, r25	; 0x01
    1048:	88 83       	st	Y, r24
    104a:	10 83       	st	Z, r17

0000104c <.L8>:
    104c:	8e 81       	ldd	r24, Y+6	; 0x06
    104e:	9f 81       	ldd	r25, Y+7	; 0x07
    1050:	01 96       	adiw	r24, 0x01	; 1
    1052:	9f 83       	std	Y+7, r25	; 0x07
    1054:	8e 83       	std	Y+6, r24	; 0x06
    1056:	e3 cf       	rjmp	.-58     	; 0x101e <.L3>

00001058 <.L4>:
    1058:	e8 85       	ldd	r30, Y+8	; 0x08
    105a:	f9 85       	ldd	r31, Y+9	; 0x09
    105c:	81 2f       	mov	r24, r17
    105e:	09 95       	icall
    1060:	89 2b       	or	r24, r25
    1062:	a1 f3       	breq	.-24     	; 0x104c <.L8>
    1064:	da cf       	rjmp	.-76     	; 0x101a <.L7>

00001066 <__ultoa_invert>:
    1066:	fa 01       	movw	r30, r20
    1068:	aa 27       	eor	r26, r26
    106a:	28 30       	cpi	r18, 0x08	; 8
    106c:	51 f1       	breq	.+84     	; 0x10c2 <.L_oct>
    106e:	20 31       	cpi	r18, 0x10	; 16
    1070:	81 f1       	breq	.+96     	; 0x10d2 <.L_hex>
    1072:	e8 94       	clt

00001074 <.L_dec_loop>:
    1074:	6f 93       	push	r22
    1076:	6e 7f       	andi	r22, 0xFE	; 254
    1078:	6e 5f       	subi	r22, 0xFE	; 254
    107a:	7f 4f       	sbci	r23, 0xFF	; 255
    107c:	8f 4f       	sbci	r24, 0xFF	; 255
    107e:	9f 4f       	sbci	r25, 0xFF	; 255
    1080:	af 4f       	sbci	r26, 0xFF	; 255
    1082:	b1 e0       	ldi	r27, 0x01	; 1
    1084:	3e d0       	rcall	.+124    	; 0x1102 <.L_div_add>
    1086:	b4 e0       	ldi	r27, 0x04	; 4
    1088:	3c d0       	rcall	.+120    	; 0x1102 <.L_div_add>
    108a:	67 0f       	add	r22, r23
    108c:	78 1f       	adc	r23, r24
    108e:	89 1f       	adc	r24, r25
    1090:	9a 1f       	adc	r25, r26
    1092:	a1 1d       	adc	r26, r1
    1094:	68 0f       	add	r22, r24
    1096:	79 1f       	adc	r23, r25
    1098:	8a 1f       	adc	r24, r26
    109a:	91 1d       	adc	r25, r1
    109c:	a1 1d       	adc	r26, r1
    109e:	6a 0f       	add	r22, r26
    10a0:	71 1d       	adc	r23, r1
    10a2:	81 1d       	adc	r24, r1
    10a4:	91 1d       	adc	r25, r1
    10a6:	a1 1d       	adc	r26, r1
    10a8:	20 d0       	rcall	.+64     	; 0x10ea <.L_lsr_4>
    10aa:	09 f4       	brne	.+2      	; 0x10ae <.L1^B1>
    10ac:	68 94       	set

000010ae <.L1^B1>:
    10ae:	3f 91       	pop	r19
    10b0:	2a e0       	ldi	r18, 0x0A	; 10
    10b2:	26 9f       	mul	r18, r22
    10b4:	11 24       	eor	r1, r1
    10b6:	30 19       	sub	r19, r0
    10b8:	30 5d       	subi	r19, 0xD0	; 208
    10ba:	31 93       	st	Z+, r19
    10bc:	de f6       	brtc	.-74     	; 0x1074 <.L_dec_loop>

000010be <.L_eos>:
    10be:	cf 01       	movw	r24, r30
    10c0:	08 95       	ret

000010c2 <.L_oct>:
    10c2:	46 2f       	mov	r20, r22
    10c4:	47 70       	andi	r20, 0x07	; 7
    10c6:	40 5d       	subi	r20, 0xD0	; 208
    10c8:	41 93       	st	Z+, r20
    10ca:	b3 e0       	ldi	r27, 0x03	; 3
    10cc:	0f d0       	rcall	.+30     	; 0x10ec <.L_lsr>
    10ce:	c9 f7       	brne	.-14     	; 0x10c2 <.L_oct>
    10d0:	f6 cf       	rjmp	.-20     	; 0x10be <.L_eos>

000010d2 <.L_hex>:
    10d2:	46 2f       	mov	r20, r22
    10d4:	4f 70       	andi	r20, 0x0F	; 15
    10d6:	40 5d       	subi	r20, 0xD0	; 208
    10d8:	4a 33       	cpi	r20, 0x3A	; 58
    10da:	18 f0       	brcs	.+6      	; 0x10e2 <.L3^B1>
    10dc:	49 5d       	subi	r20, 0xD9	; 217
    10de:	31 fd       	sbrc	r19, 1
    10e0:	40 52       	subi	r20, 0x20	; 32

000010e2 <.L3^B1>:
    10e2:	41 93       	st	Z+, r20
    10e4:	02 d0       	rcall	.+4      	; 0x10ea <.L_lsr_4>
    10e6:	a9 f7       	brne	.-22     	; 0x10d2 <.L_hex>
    10e8:	ea cf       	rjmp	.-44     	; 0x10be <.L_eos>

000010ea <.L_lsr_4>:
    10ea:	b4 e0       	ldi	r27, 0x04	; 4

000010ec <.L_lsr>:
    10ec:	a6 95       	lsr	r26
    10ee:	97 95       	ror	r25
    10f0:	87 95       	ror	r24
    10f2:	77 95       	ror	r23
    10f4:	67 95       	ror	r22
    10f6:	ba 95       	dec	r27
    10f8:	c9 f7       	brne	.-14     	; 0x10ec <.L_lsr>
    10fa:	00 97       	sbiw	r24, 0x00	; 0
    10fc:	61 05       	cpc	r22, r1
    10fe:	71 05       	cpc	r23, r1
    1100:	08 95       	ret

00001102 <.L_div_add>:
    1102:	9b 01       	movw	r18, r22
    1104:	ac 01       	movw	r20, r24
    1106:	0a 2e       	mov	r0, r26

00001108 <.L7^B1>:
    1108:	06 94       	lsr	r0
    110a:	57 95       	ror	r21
    110c:	47 95       	ror	r20
    110e:	37 95       	ror	r19
    1110:	27 95       	ror	r18
    1112:	ba 95       	dec	r27
    1114:	c9 f7       	brne	.-14     	; 0x1108 <.L7^B1>
    1116:	62 0f       	add	r22, r18
    1118:	73 1f       	adc	r23, r19
    111a:	84 1f       	adc	r24, r20
    111c:	95 1f       	adc	r25, r21
    111e:	a0 1d       	adc	r26, r0
    1120:	08 95       	ret

00001122 <__prologue_saves__>:
    1122:	2f 92       	push	r2
    1124:	3f 92       	push	r3
    1126:	4f 92       	push	r4
    1128:	5f 92       	push	r5
    112a:	6f 92       	push	r6
    112c:	7f 92       	push	r7
    112e:	8f 92       	push	r8
    1130:	9f 92       	push	r9
    1132:	af 92       	push	r10
    1134:	bf 92       	push	r11
    1136:	cf 92       	push	r12
    1138:	df 92       	push	r13
    113a:	ef 92       	push	r14
    113c:	ff 92       	push	r15
    113e:	0f 93       	push	r16
    1140:	1f 93       	push	r17
    1142:	cf 93       	push	r28
    1144:	df 93       	push	r29
    1146:	cd b7       	in	r28, 0x3d	; 61
    1148:	de b7       	in	r29, 0x3e	; 62
    114a:	ca 1b       	sub	r28, r26
    114c:	db 0b       	sbc	r29, r27
    114e:	0f b6       	in	r0, 0x3f	; 63
    1150:	f8 94       	cli
    1152:	de bf       	out	0x3e, r29	; 62
    1154:	0f be       	out	0x3f, r0	; 63
    1156:	cd bf       	out	0x3d, r28	; 61
    1158:	09 94       	ijmp

0000115a <__epilogue_restores__>:
    115a:	2a 88       	ldd	r2, Y+18	; 0x12
    115c:	39 88       	ldd	r3, Y+17	; 0x11
    115e:	48 88       	ldd	r4, Y+16	; 0x10
    1160:	5f 84       	ldd	r5, Y+15	; 0x0f
    1162:	6e 84       	ldd	r6, Y+14	; 0x0e
    1164:	7d 84       	ldd	r7, Y+13	; 0x0d
    1166:	8c 84       	ldd	r8, Y+12	; 0x0c
    1168:	9b 84       	ldd	r9, Y+11	; 0x0b
    116a:	aa 84       	ldd	r10, Y+10	; 0x0a
    116c:	b9 84       	ldd	r11, Y+9	; 0x09
    116e:	c8 84       	ldd	r12, Y+8	; 0x08
    1170:	df 80       	ldd	r13, Y+7	; 0x07
    1172:	ee 80       	ldd	r14, Y+6	; 0x06
    1174:	fd 80       	ldd	r15, Y+5	; 0x05
    1176:	0c 81       	ldd	r16, Y+4	; 0x04
    1178:	1b 81       	ldd	r17, Y+3	; 0x03
    117a:	aa 81       	ldd	r26, Y+2	; 0x02
    117c:	b9 81       	ldd	r27, Y+1	; 0x01
    117e:	ce 0f       	add	r28, r30
    1180:	d1 1d       	adc	r29, r1
    1182:	0f b6       	in	r0, 0x3f	; 63
    1184:	f8 94       	cli
    1186:	de bf       	out	0x3e, r29	; 62
    1188:	0f be       	out	0x3f, r0	; 63
    118a:	cd bf       	out	0x3d, r28	; 61
    118c:	ed 01       	movw	r28, r26
    118e:	08 95       	ret

00001190 <_exit>:
    1190:	f8 94       	cli

00001192 <__stop_program>:
    1192:	ff cf       	rjmp	.-2      	; 0x1192 <__stop_program>
