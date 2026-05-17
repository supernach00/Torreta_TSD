
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   8:	0c 94 c0 02 	jmp	0x580	; 0x580 <__vector_2>
   c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  14:	0c 94 b3 02 	jmp	0x566	; 0x566 <__vector_5>
  18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  1c:	0c 94 a9 02 	jmp	0x552	; 0x552 <__vector_7>
  20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  38:	0c 94 ca 02 	jmp	0x594	; 0x594 <__vector_14>
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
  7a:	ee ef       	ldi	r30, 0xFE	; 254
  7c:	ff e0       	ldi	r31, 0x0F	; 15
  7e:	02 c0       	rjmp	.+4      	; 0x84 <.Lname22+0x1>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a6 30       	cpi	r26, 0x06	; 6
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <.Lname21+0x4>
  8a:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <main>
  8e:	0c 94 fd 07 	jmp	0xffa	; 0xffa <_exit>

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
  e6:	0e 94 19 04 	call	0x832	; 0x832 <__floatunsisf>
  ea:	26 ef       	ldi	r18, 0xF6	; 246
  ec:	38 e2       	ldi	r19, 0x28	; 40
  ee:	4c e9       	ldi	r20, 0x9C	; 156
  f0:	50 e4       	ldi	r21, 0x40	; 64
  f2:	0e 94 a7 04 	call	0x94e	; 0x94e <__mulsf3>
  f6:	0e 94 ea 03 	call	0x7d4	; 0x7d4 <__fixunssfsi>
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
 1ba:	0e 94 19 04 	call	0x832	; 0x832 <__floatunsisf>
 1be:	20 e0       	ldi	r18, 0x00	; 0
 1c0:	30 e0       	ldi	r19, 0x00	; 0
 1c2:	4a e7       	ldi	r20, 0x7A	; 122
 1c4:	56 e4       	ldi	r21, 0x46	; 70
 1c6:	0e 94 a7 04 	call	0x94e	; 0x94e <__mulsf3>
 1ca:	20 e0       	ldi	r18, 0x00	; 0
 1cc:	30 e4       	ldi	r19, 0x40	; 64
 1ce:	4c e9       	ldi	r20, 0x9C	; 156
 1d0:	55 e4       	ldi	r21, 0x45	; 69
 1d2:	0e 94 78 03 	call	0x6f0	; 0x6f0 <__divsf3>
 1d6:	20 e0       	ldi	r18, 0x00	; 0
 1d8:	30 e0       	ldi	r19, 0x00	; 0
 1da:	40 e8       	ldi	r20, 0x80	; 128
 1dc:	5f e3       	ldi	r21, 0x3F	; 63
 1de:	0e 94 0b 03 	call	0x616	; 0x616 <__subsf3>
 1e2:	0e 94 ea 03 	call	0x7d4	; 0x7d4 <__fixunssfsi>
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
 27e:	0e 94 f7 02 	call	0x5ee	; 0x5ee <__udivmodhi4>
 282:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
 286:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
 28a:	08 95       	ret

0000028c <DEBUG_init>:
 28c:	20 9a       	sbi	0x04, 0	; 4
 28e:	08 95       	ret

00000290 <USART_init>:
 290:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
 294:	87 e6       	ldi	r24, 0x67	; 103
 296:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
 29a:	88 e1       	ldi	r24, 0x18	; 24
 29c:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
 2a0:	86 e0       	ldi	r24, 0x06	; 6
 2a2:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
 2a6:	08 95       	ret

000002a8 <USART_send>:
 2a8:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 2ac:	95 ff       	sbrs	r25, 5
 2ae:	fc cf       	rjmp	.-8      	; 0x2a8 <USART_send>
 2b0:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 2b4:	08 95       	ret

000002b6 <USART_receive>:
 2b6:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 2ba:	87 ff       	sbrs	r24, 7
 2bc:	fc cf       	rjmp	.-8      	; 0x2b6 <USART_receive>
 2be:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 2c2:	08 95       	ret

000002c4 <USART_putstring>:
 2c4:	cf 93       	push	r28
 2c6:	df 93       	push	r29
 2c8:	ec 01       	movw	r28, r24

000002ca <.L10>:
 2ca:	89 91       	ld	r24, Y+
 2cc:	81 11       	cpse	r24, r1
 2ce:	03 c0       	rjmp	.+6      	; 0x2d6 <.L11>
 2d0:	df 91       	pop	r29
 2d2:	cf 91       	pop	r28
 2d4:	08 95       	ret

000002d6 <.L11>:
 2d6:	0e 94 54 01 	call	0x2a8	; 0x2a8 <USART_send>
 2da:	f7 cf       	rjmp	.-18     	; 0x2ca <.L10>

000002dc <USART_put_uint16>:
 2dc:	0f 93       	push	r16
 2de:	1f 93       	push	r17
 2e0:	cf 93       	push	r28
 2e2:	df 93       	push	r29
 2e4:	cd b7       	in	r28, 0x3d	; 61
 2e6:	de b7       	in	r29, 0x3e	; 62
 2e8:	2a 97       	sbiw	r28, 0x0a	; 10
 2ea:	0f b6       	in	r0, 0x3f	; 63
 2ec:	f8 94       	cli
 2ee:	de bf       	out	0x3e, r29	; 62
 2f0:	0f be       	out	0x3f, r0	; 63
 2f2:	cd bf       	out	0x3d, r28	; 61
 2f4:	9f 93       	push	r25
 2f6:	8f 93       	push	r24
 2f8:	80 e0       	ldi	r24, 0x00	; 0
 2fa:	91 e0       	ldi	r25, 0x01	; 1
 2fc:	9f 93       	push	r25
 2fe:	8f 93       	push	r24
 300:	8e 01       	movw	r16, r28
 302:	0f 5f       	subi	r16, 0xFF	; 255
 304:	1f 4f       	sbci	r17, 0xFF	; 255
 306:	1f 93       	push	r17
 308:	0f 93       	push	r16
 30a:	0e 94 14 05 	call	0xa28	; 0xa28 <sprintf>
 30e:	c8 01       	movw	r24, r16
 310:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
 314:	83 e0       	ldi	r24, 0x03	; 3
 316:	91 e0       	ldi	r25, 0x01	; 1
 318:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
 31c:	2f ef       	ldi	r18, 0xFF	; 255
 31e:	89 e6       	ldi	r24, 0x69	; 105
 320:	98 e1       	ldi	r25, 0x18	; 24

00000322 <.L1^B1>:
 322:	21 50       	subi	r18, 0x01	; 1
 324:	80 40       	sbci	r24, 0x00	; 0
 326:	90 40       	sbci	r25, 0x00	; 0
 328:	e1 f7       	brne	.-8      	; 0x322 <.L1^B1>
 32a:	00 c0       	rjmp	.+0      	; 0x32c <L0^A>

0000032c <L0^A>:
 32c:	00 00       	nop
 32e:	0f 90       	pop	r0
 330:	0f 90       	pop	r0
 332:	0f 90       	pop	r0
 334:	0f 90       	pop	r0
 336:	0f 90       	pop	r0
 338:	0f 90       	pop	r0
 33a:	2a 96       	adiw	r28, 0x0a	; 10
 33c:	0f b6       	in	r0, 0x3f	; 63
 33e:	f8 94       	cli
 340:	de bf       	out	0x3e, r29	; 62
 342:	0f be       	out	0x3f, r0	; 63
 344:	cd bf       	out	0x3d, r28	; 61
 346:	df 91       	pop	r29
 348:	cf 91       	pop	r28
 34a:	1f 91       	pop	r17
 34c:	0f 91       	pop	r16
 34e:	08 95       	ret

00000350 <I2C_init>:
 350:	87 b1       	in	r24, 0x07	; 7
 352:	8f 7c       	andi	r24, 0xCF	; 207
 354:	87 b9       	out	0x07, r24	; 7
 356:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
 35a:	8f ef       	ldi	r24, 0xFF	; 255
 35c:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
 360:	84 e0       	ldi	r24, 0x04	; 4
 362:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 366:	08 95       	ret

00000368 <I2C_start>:
 368:	84 ea       	ldi	r24, 0xA4	; 164
 36a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000036e <.L3>:
 36e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 372:	87 ff       	sbrs	r24, 7
 374:	fc cf       	rjmp	.-8      	; 0x36e <.L3>
 376:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
 37a:	88 7f       	andi	r24, 0xF8	; 248
 37c:	88 30       	cpi	r24, 0x08	; 8
 37e:	19 f4       	brne	.+6      	; 0x386 <.L5>
 380:	83 e0       	ldi	r24, 0x03	; 3
 382:	90 e0       	ldi	r25, 0x00	; 0
 384:	08 95       	ret

00000386 <.L5>:
 386:	80 e0       	ldi	r24, 0x00	; 0
 388:	90 e0       	ldi	r25, 0x00	; 0
 38a:	08 95       	ret

0000038c <I2C_write_address>:
 38c:	88 0f       	add	r24, r24
 38e:	86 2b       	or	r24, r22
 390:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 394:	84 e8       	ldi	r24, 0x84	; 132
 396:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000039a <.L8>:
 39a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 39e:	87 ff       	sbrs	r24, 7
 3a0:	fc cf       	rjmp	.-8      	; 0x39a <.L8>
 3a2:	08 95       	ret

000003a4 <I2C_write>:
 3a4:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 3a8:	84 e8       	ldi	r24, 0x84	; 132
 3aa:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003ae <.L11>:
 3ae:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3b2:	87 ff       	sbrs	r24, 7
 3b4:	fc cf       	rjmp	.-8      	; 0x3ae <.L11>
 3b6:	08 95       	ret

000003b8 <I2C_read_ACK>:
 3b8:	84 ec       	ldi	r24, 0xC4	; 196
 3ba:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003be <.L14>:
 3be:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3c2:	87 ff       	sbrs	r24, 7
 3c4:	fc cf       	rjmp	.-8      	; 0x3be <.L14>
 3c6:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 3ca:	08 95       	ret

000003cc <I2C_read_NACK>:
 3cc:	84 e8       	ldi	r24, 0x84	; 132
 3ce:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003d2 <.L17>:
 3d2:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3d6:	87 ff       	sbrs	r24, 7
 3d8:	fc cf       	rjmp	.-8      	; 0x3d2 <.L17>
 3da:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 3de:	08 95       	ret

000003e0 <I2C_stop>:
 3e0:	84 e9       	ldi	r24, 0x94	; 148
 3e2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3e6:	08 95       	ret

000003e8 <NUN_init>:
 3e8:	08 95       	ret

000003ea <NUN_read>:
 3ea:	21 e0       	ldi	r18, 0x01	; 1
 3ec:	fc 01       	movw	r30, r24
 3ee:	20 83       	st	Z, r18
 3f0:	08 95       	ret

000003f2 <SERVO_set_angulo>:
 3f2:	9c 01       	movw	r18, r24
 3f4:	cb 01       	movw	r24, r22
 3f6:	89 2b       	or	r24, r25
 3f8:	a1 f0       	breq	.+40     	; 0x422 <.L2>
 3fa:	61 30       	cpi	r22, 0x01	; 1
 3fc:	71 05       	cpc	r23, r1
 3fe:	09 f5       	brne	.+66     	; 0x442 <.L1>
 400:	44 e1       	ldi	r20, 0x14	; 20
 402:	42 9f       	mul	r20, r18
 404:	c0 01       	movw	r24, r0
 406:	43 9f       	mul	r20, r19
 408:	90 0d       	add	r25, r0
 40a:	11 24       	eor	r1, r1
 40c:	69 e0       	ldi	r22, 0x09	; 9
 40e:	70 e0       	ldi	r23, 0x00	; 0
 410:	0e 94 f7 02 	call	0x5ee	; 0x5ee <__udivmodhi4>
 414:	69 51       	subi	r22, 0x19	; 25
 416:	7c 4f       	sbci	r23, 0xFC	; 252
 418:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
 41c:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
 420:	08 95       	ret

00000422 <.L2>:
 422:	44 e1       	ldi	r20, 0x14	; 20
 424:	42 9f       	mul	r20, r18
 426:	c0 01       	movw	r24, r0
 428:	43 9f       	mul	r20, r19
 42a:	90 0d       	add	r25, r0
 42c:	11 24       	eor	r1, r1
 42e:	69 e0       	ldi	r22, 0x09	; 9
 430:	70 e0       	ldi	r23, 0x00	; 0
 432:	0e 94 f7 02 	call	0x5ee	; 0x5ee <__udivmodhi4>
 436:	69 51       	subi	r22, 0x19	; 25
 438:	7c 4f       	sbci	r23, 0xFC	; 252
 43a:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
 43e:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

00000442 <.L1>:
 442:	08 95       	ret

00000444 <SERVO_test>:
 444:	ef 92       	push	r14
 446:	ff 92       	push	r15
 448:	0f 93       	push	r16
 44a:	1f 93       	push	r17
 44c:	cf 93       	push	r28
 44e:	df 93       	push	r29
 450:	8c 01       	movw	r16, r24
 452:	d6 2f       	mov	r29, r22
 454:	c7 2f       	mov	r28, r23
 456:	bc 01       	movw	r22, r24
 458:	80 e0       	ldi	r24, 0x00	; 0
 45a:	90 e0       	ldi	r25, 0x00	; 0
 45c:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 460:	6d 2f       	mov	r22, r29
 462:	7c 2f       	mov	r23, r28
 464:	80 e0       	ldi	r24, 0x00	; 0
 466:	90 e0       	ldi	r25, 0x00	; 0
 468:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 46c:	2f ef       	ldi	r18, 0xFF	; 255
 46e:	83 ed       	ldi	r24, 0xD3	; 211
 470:	90 e3       	ldi	r25, 0x30	; 48

00000472 <.L1^B1>:
 472:	21 50       	subi	r18, 0x01	; 1
 474:	80 40       	sbci	r24, 0x00	; 0
 476:	90 40       	sbci	r25, 0x00	; 0
 478:	e1 f7       	brne	.-8      	; 0x472 <.L1^B1>
 47a:	00 c0       	rjmp	.+0      	; 0x47c <L0^A>

0000047c <L0^A>:
 47c:	00 00       	nop
 47e:	e1 2c       	mov	r14, r1
 480:	f1 2c       	mov	r15, r1

00000482 <.L5>:
 482:	b8 01       	movw	r22, r16
 484:	c7 01       	movw	r24, r14
 486:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 48a:	6d 2f       	mov	r22, r29
 48c:	7c 2f       	mov	r23, r28
 48e:	c7 01       	movw	r24, r14
 490:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 494:	8f e9       	ldi	r24, 0x9F	; 159
 496:	9f e0       	ldi	r25, 0x0F	; 15

00000498 <.L1^B2>:
 498:	01 97       	sbiw	r24, 0x01	; 1
 49a:	f1 f7       	brne	.-4      	; 0x498 <.L1^B2>
 49c:	00 c0       	rjmp	.+0      	; 0x49e <L0^A>

0000049e <L0^A>:
 49e:	00 00       	nop
 4a0:	9f ef       	ldi	r25, 0xFF	; 255
 4a2:	e9 1a       	sub	r14, r25
 4a4:	f9 0a       	sbc	r15, r25
 4a6:	29 e0       	ldi	r18, 0x09	; 9
 4a8:	e2 16       	cp	r14, r18
 4aa:	27 e0       	ldi	r18, 0x07	; 7
 4ac:	f2 06       	cpc	r15, r18
 4ae:	49 f7       	brne	.-46     	; 0x482 <.L5>
 4b0:	88 e0       	ldi	r24, 0x08	; 8
 4b2:	e8 2e       	mov	r14, r24
 4b4:	87 e0       	ldi	r24, 0x07	; 7
 4b6:	f8 2e       	mov	r15, r24

000004b8 <.L6>:
 4b8:	b8 01       	movw	r22, r16
 4ba:	c7 01       	movw	r24, r14
 4bc:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 4c0:	6d 2f       	mov	r22, r29
 4c2:	7c 2f       	mov	r23, r28
 4c4:	c7 01       	movw	r24, r14
 4c6:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 4ca:	8f e9       	ldi	r24, 0x9F	; 159
 4cc:	9f e0       	ldi	r25, 0x0F	; 15

000004ce <.L1^B3>:
 4ce:	01 97       	sbiw	r24, 0x01	; 1
 4d0:	f1 f7       	brne	.-4      	; 0x4ce <.L1^B3>
 4d2:	00 c0       	rjmp	.+0      	; 0x4d4 <L0^A>

000004d4 <L0^A>:
 4d4:	00 00       	nop
 4d6:	91 e0       	ldi	r25, 0x01	; 1
 4d8:	e9 1a       	sub	r14, r25
 4da:	f1 08       	sbc	r15, r1
 4dc:	68 f7       	brcc	.-38     	; 0x4b8 <.L6>
 4de:	b8 01       	movw	r22, r16
 4e0:	80 e0       	ldi	r24, 0x00	; 0
 4e2:	90 e0       	ldi	r25, 0x00	; 0
 4e4:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 4e8:	6d 2f       	mov	r22, r29
 4ea:	7c 2f       	mov	r23, r28
 4ec:	80 e0       	ldi	r24, 0x00	; 0
 4ee:	90 e0       	ldi	r25, 0x00	; 0
 4f0:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 4f4:	b8 01       	movw	r22, r16
 4f6:	88 e0       	ldi	r24, 0x08	; 8
 4f8:	97 e0       	ldi	r25, 0x07	; 7
 4fa:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 4fe:	6d 2f       	mov	r22, r29
 500:	7c 2f       	mov	r23, r28
 502:	88 e0       	ldi	r24, 0x08	; 8
 504:	97 e0       	ldi	r25, 0x07	; 7
 506:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 50a:	8f ef       	ldi	r24, 0xFF	; 255
 50c:	93 ed       	ldi	r25, 0xD3	; 211
 50e:	20 e3       	ldi	r18, 0x30	; 48

00000510 <.L1^B4>:
 510:	81 50       	subi	r24, 0x01	; 1
 512:	90 40       	sbci	r25, 0x00	; 0
 514:	20 40       	sbci	r18, 0x00	; 0
 516:	e1 f7       	brne	.-8      	; 0x510 <.L1^B4>
 518:	00 c0       	rjmp	.+0      	; 0x51a <L0^A>

0000051a <L0^A>:
 51a:	00 00       	nop
 51c:	b8 01       	movw	r22, r16
 51e:	80 e0       	ldi	r24, 0x00	; 0
 520:	90 e0       	ldi	r25, 0x00	; 0
 522:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 526:	6d 2f       	mov	r22, r29
 528:	7c 2f       	mov	r23, r28
 52a:	80 e0       	ldi	r24, 0x00	; 0
 52c:	90 e0       	ldi	r25, 0x00	; 0
 52e:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <SERVO_set_angulo>
 532:	8f ef       	ldi	r24, 0xFF	; 255
 534:	93 ed       	ldi	r25, 0xD3	; 211
 536:	20 e3       	ldi	r18, 0x30	; 48

00000538 <.L1^B5>:
 538:	81 50       	subi	r24, 0x01	; 1
 53a:	90 40       	sbci	r25, 0x00	; 0
 53c:	20 40       	sbci	r18, 0x00	; 0
 53e:	e1 f7       	brne	.-8      	; 0x538 <.L1^B5>
 540:	00 c0       	rjmp	.+0      	; 0x542 <L0^A>

00000542 <L0^A>:
 542:	00 00       	nop
 544:	df 91       	pop	r29
 546:	cf 91       	pop	r28
 548:	1f 91       	pop	r17
 54a:	0f 91       	pop	r16
 54c:	ff 90       	pop	r15
 54e:	ef 90       	pop	r14
 550:	08 95       	ret

00000552 <__vector_7>:
 552:	1f 92       	push	r1
 554:	0f 92       	push	r0
 556:	0f b6       	in	r0, 0x3f	; 63
 558:	0f 92       	push	r0
 55a:	11 24       	eor	r1, r1
 55c:	0f 90       	pop	r0
 55e:	0f be       	out	0x3f, r0	; 63
 560:	0f 90       	pop	r0
 562:	1f 90       	pop	r1
 564:	18 95       	reti

00000566 <__vector_5>:
 566:	1f 92       	push	r1
 568:	0f 92       	push	r0
 56a:	0f b6       	in	r0, 0x3f	; 63
 56c:	0f 92       	push	r0
 56e:	11 24       	eor	r1, r1
 570:	8f 93       	push	r24
 572:	89 b1       	in	r24, 0x09	; 9
 574:	8f 91       	pop	r24
 576:	0f 90       	pop	r0
 578:	0f be       	out	0x3f, r0	; 63
 57a:	0f 90       	pop	r0
 57c:	1f 90       	pop	r1
 57e:	18 95       	reti

00000580 <__vector_2>:
 580:	1f 92       	push	r1
 582:	0f 92       	push	r0
 584:	0f b6       	in	r0, 0x3f	; 63
 586:	0f 92       	push	r0
 588:	11 24       	eor	r1, r1
 58a:	0f 90       	pop	r0
 58c:	0f be       	out	0x3f, r0	; 63
 58e:	0f 90       	pop	r0
 590:	1f 90       	pop	r1
 592:	18 95       	reti

00000594 <__vector_14>:
 594:	1f 92       	push	r1
 596:	0f 92       	push	r0
 598:	0f b6       	in	r0, 0x3f	; 63
 59a:	0f 92       	push	r0
 59c:	11 24       	eor	r1, r1
 59e:	0f 90       	pop	r0
 5a0:	0f be       	out	0x3f, r0	; 63
 5a2:	0f 90       	pop	r0
 5a4:	1f 90       	pop	r1
 5a6:	18 95       	reti

000005a8 <main>:
 5a8:	0e 94 a8 01 	call	0x350	; 0x350 <I2C_init>
 5ac:	0e 94 46 01 	call	0x28c	; 0x28c <DEBUG_init>
 5b0:	78 94       	sei
 5b2:	c1 e0       	ldi	r28, 0x01	; 1

000005b4 <.L6>:
 5b4:	0e 94 b4 01 	call	0x368	; 0x368 <I2C_start>
 5b8:	61 e0       	ldi	r22, 0x01	; 1
 5ba:	70 e0       	ldi	r23, 0x00	; 0
 5bc:	82 e5       	ldi	r24, 0x52	; 82
 5be:	0e 94 c6 01 	call	0x38c	; 0x38c <I2C_write_address>
 5c2:	85 b1       	in	r24, 0x05	; 5
 5c4:	8c 27       	eor	r24, r28
 5c6:	85 b9       	out	0x05, r24	; 5
 5c8:	2f ef       	ldi	r18, 0xFF	; 255
 5ca:	83 ed       	ldi	r24, 0xD3	; 211
 5cc:	90 e3       	ldi	r25, 0x30	; 48

000005ce <.L1^B1>:
 5ce:	21 50       	subi	r18, 0x01	; 1
 5d0:	80 40       	sbci	r24, 0x00	; 0
 5d2:	90 40       	sbci	r25, 0x00	; 0
 5d4:	e1 f7       	brne	.-8      	; 0x5ce <.L1^B1>
 5d6:	00 c0       	rjmp	.+0      	; 0x5d8 <L0^A>

000005d8 <L0^A>:
 5d8:	00 00       	nop
 5da:	2f ef       	ldi	r18, 0xFF	; 255
 5dc:	8b e7       	ldi	r24, 0x7B	; 123
 5de:	92 e9       	ldi	r25, 0x92	; 146

000005e0 <.L1^B2>:
 5e0:	21 50       	subi	r18, 0x01	; 1
 5e2:	80 40       	sbci	r24, 0x00	; 0
 5e4:	90 40       	sbci	r25, 0x00	; 0
 5e6:	e1 f7       	brne	.-8      	; 0x5e0 <.L1^B2>
 5e8:	00 c0       	rjmp	.+0      	; 0x5ea <L0^A>

000005ea <L0^A>:
 5ea:	00 00       	nop
 5ec:	e3 cf       	rjmp	.-58     	; 0x5b4 <.L6>

000005ee <__udivmodhi4>:
 5ee:	aa 1b       	sub	r26, r26
 5f0:	bb 1b       	sub	r27, r27
 5f2:	51 e1       	ldi	r21, 0x11	; 17
 5f4:	07 c0       	rjmp	.+14     	; 0x604 <__udivmodhi4_ep>

000005f6 <__udivmodhi4_loop>:
 5f6:	aa 1f       	adc	r26, r26
 5f8:	bb 1f       	adc	r27, r27
 5fa:	a6 17       	cp	r26, r22
 5fc:	b7 07       	cpc	r27, r23
 5fe:	10 f0       	brcs	.+4      	; 0x604 <__udivmodhi4_ep>
 600:	a6 1b       	sub	r26, r22
 602:	b7 0b       	sbc	r27, r23

00000604 <__udivmodhi4_ep>:
 604:	88 1f       	adc	r24, r24
 606:	99 1f       	adc	r25, r25
 608:	5a 95       	dec	r21
 60a:	a9 f7       	brne	.-22     	; 0x5f6 <__udivmodhi4_loop>
 60c:	80 95       	com	r24
 60e:	90 95       	com	r25
 610:	bc 01       	movw	r22, r24
 612:	cd 01       	movw	r24, r26
 614:	08 95       	ret

00000616 <__subsf3>:
 616:	50 58       	subi	r21, 0x80	; 128

00000618 <__addsf3>:
 618:	bb 27       	eor	r27, r27
 61a:	aa 27       	eor	r26, r26
 61c:	0e 94 23 03 	call	0x646	; 0x646 <__addsf3x>
 620:	0c 94 6d 04 	jmp	0x8da	; 0x8da <__fp_round>

00000624 <.L0^B1>:
 624:	0e 94 5f 04 	call	0x8be	; 0x8be <__fp_pscA>
 628:	38 f0       	brcs	.+14     	; 0x638 <.L_nan>
 62a:	0e 94 66 04 	call	0x8cc	; 0x8cc <__fp_pscB>
 62e:	20 f0       	brcs	.+8      	; 0x638 <.L_nan>
 630:	39 f4       	brne	.+14     	; 0x640 <.L_inf>
 632:	9f 3f       	cpi	r25, 0xFF	; 255
 634:	19 f4       	brne	.+6      	; 0x63c <.L_infB>
 636:	26 f4       	brtc	.+8      	; 0x640 <.L_inf>

00000638 <.L_nan>:
 638:	0c 94 5c 04 	jmp	0x8b8	; 0x8b8 <__fp_nan>

0000063c <.L_infB>:
 63c:	0e f4       	brtc	.+2      	; 0x640 <.L_inf>
 63e:	e0 95       	com	r30

00000640 <.L_inf>:
 640:	e7 fb       	bst	r30, 7
 642:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <__fp_inf>

00000646 <__addsf3x>:
 646:	e9 2f       	mov	r30, r25
 648:	0e 94 7e 04 	call	0x8fc	; 0x8fc <__fp_split3>
 64c:	58 f3       	brcs	.-42     	; 0x624 <.L0^B1>
 64e:	ba 17       	cp	r27, r26
 650:	62 07       	cpc	r22, r18
 652:	73 07       	cpc	r23, r19
 654:	84 07       	cpc	r24, r20
 656:	95 07       	cpc	r25, r21
 658:	20 f0       	brcs	.+8      	; 0x662 <.L2^B1>
 65a:	79 f4       	brne	.+30     	; 0x67a <.L4^B1>
 65c:	a6 f5       	brtc	.+104    	; 0x6c6 <.L_add>
 65e:	0c 94 a0 04 	jmp	0x940	; 0x940 <__fp_zero>

00000662 <.L2^B1>:
 662:	0e f4       	brtc	.+2      	; 0x666 <.L3^B1>
 664:	e0 95       	com	r30

00000666 <.L3^B1>:
 666:	0b 2e       	mov	r0, r27
 668:	ba 2f       	mov	r27, r26
 66a:	a0 2d       	mov	r26, r0
 66c:	0b 01       	movw	r0, r22
 66e:	b9 01       	movw	r22, r18
 670:	90 01       	movw	r18, r0
 672:	0c 01       	movw	r0, r24
 674:	ca 01       	movw	r24, r20
 676:	a0 01       	movw	r20, r0
 678:	11 24       	eor	r1, r1

0000067a <.L4^B1>:
 67a:	ff 27       	eor	r31, r31
 67c:	59 1b       	sub	r21, r25

0000067e <.L5^B1>:
 67e:	99 f0       	breq	.+38     	; 0x6a6 <.L7^B1>
 680:	59 3f       	cpi	r21, 0xF9	; 249
 682:	50 f4       	brcc	.+20     	; 0x698 <.L6^B1>
 684:	50 3e       	cpi	r21, 0xE0	; 224
 686:	68 f1       	brcs	.+90     	; 0x6e2 <.L_ret>
 688:	1a 16       	cp	r1, r26
 68a:	f0 40       	sbci	r31, 0x00	; 0
 68c:	a2 2f       	mov	r26, r18
 68e:	23 2f       	mov	r18, r19
 690:	34 2f       	mov	r19, r20
 692:	44 27       	eor	r20, r20
 694:	58 5f       	subi	r21, 0xF8	; 248
 696:	f3 cf       	rjmp	.-26     	; 0x67e <.L5^B1>

00000698 <.L6^B1>:
 698:	46 95       	lsr	r20
 69a:	37 95       	ror	r19
 69c:	27 95       	ror	r18
 69e:	a7 95       	ror	r26
 6a0:	f0 40       	sbci	r31, 0x00	; 0
 6a2:	53 95       	inc	r21
 6a4:	c9 f7       	brne	.-14     	; 0x698 <.L6^B1>

000006a6 <.L7^B1>:
 6a6:	7e f4       	brtc	.+30     	; 0x6c6 <.L_add>
 6a8:	1f 16       	cp	r1, r31
 6aa:	ba 0b       	sbc	r27, r26
 6ac:	62 0b       	sbc	r22, r18
 6ae:	73 0b       	sbc	r23, r19
 6b0:	84 0b       	sbc	r24, r20
 6b2:	ba f0       	brmi	.+46     	; 0x6e2 <.L_ret>

000006b4 <.L8^B1>:
 6b4:	91 50       	subi	r25, 0x01	; 1
 6b6:	a1 f0       	breq	.+40     	; 0x6e0 <.L9^B1>
 6b8:	ff 0f       	add	r31, r31
 6ba:	bb 1f       	adc	r27, r27
 6bc:	66 1f       	adc	r22, r22
 6be:	77 1f       	adc	r23, r23
 6c0:	88 1f       	adc	r24, r24
 6c2:	c2 f7       	brpl	.-16     	; 0x6b4 <.L8^B1>
 6c4:	0e c0       	rjmp	.+28     	; 0x6e2 <.L_ret>

000006c6 <.L_add>:
 6c6:	ba 0f       	add	r27, r26
 6c8:	62 1f       	adc	r22, r18
 6ca:	73 1f       	adc	r23, r19
 6cc:	84 1f       	adc	r24, r20
 6ce:	48 f4       	brcc	.+18     	; 0x6e2 <.L_ret>
 6d0:	87 95       	ror	r24
 6d2:	77 95       	ror	r23
 6d4:	67 95       	ror	r22
 6d6:	b7 95       	ror	r27
 6d8:	f7 95       	ror	r31
 6da:	9e 3f       	cpi	r25, 0xFE	; 254
 6dc:	08 f0       	brcs	.+2      	; 0x6e0 <.L9^B1>
 6de:	b0 cf       	rjmp	.-160    	; 0x640 <.L_inf>

000006e0 <.L9^B1>:
 6e0:	93 95       	inc	r25

000006e2 <.L_ret>:
 6e2:	88 0f       	add	r24, r24
 6e4:	08 f0       	brcs	.+2      	; 0x6e8 <.L1^B1>
 6e6:	99 27       	eor	r25, r25

000006e8 <.L1^B1>:
 6e8:	ee 0f       	add	r30, r30
 6ea:	97 95       	ror	r25
 6ec:	87 95       	ror	r24
 6ee:	08 95       	ret

000006f0 <__divsf3>:
 6f0:	0e 94 8c 03 	call	0x718	; 0x718 <__divsf3x>
 6f4:	0c 94 6d 04 	jmp	0x8da	; 0x8da <__fp_round>

000006f8 <.L0^B1>:
 6f8:	0e 94 66 04 	call	0x8cc	; 0x8cc <__fp_pscB>
 6fc:	58 f0       	brcs	.+22     	; 0x714 <.L_nan>
 6fe:	0e 94 5f 04 	call	0x8be	; 0x8be <__fp_pscA>
 702:	40 f0       	brcs	.+16     	; 0x714 <.L_nan>
 704:	29 f4       	brne	.+10     	; 0x710 <.L_zr>
 706:	5f 3f       	cpi	r21, 0xFF	; 255
 708:	29 f0       	breq	.+10     	; 0x714 <.L_nan>

0000070a <.L_inf>:
 70a:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <__fp_inf>

0000070e <.L1^B1>:
 70e:	51 11       	cpse	r21, r1

00000710 <.L_zr>:
 710:	0c 94 a1 04 	jmp	0x942	; 0x942 <__fp_szero>

00000714 <.L_nan>:
 714:	0c 94 5c 04 	jmp	0x8b8	; 0x8b8 <__fp_nan>

00000718 <__divsf3x>:
 718:	0e 94 7e 04 	call	0x8fc	; 0x8fc <__fp_split3>
 71c:	68 f3       	brcs	.-38     	; 0x6f8 <.L0^B1>

0000071e <__divsf3_pse>:
 71e:	99 23       	and	r25, r25
 720:	b1 f3       	breq	.-20     	; 0x70e <.L1^B1>
 722:	55 23       	and	r21, r21
 724:	91 f3       	breq	.-28     	; 0x70a <.L_inf>
 726:	95 1b       	sub	r25, r21
 728:	55 0b       	sbc	r21, r21
 72a:	bb 27       	eor	r27, r27
 72c:	aa 27       	eor	r26, r26

0000072e <.L2^B1>:
 72e:	62 17       	cp	r22, r18
 730:	73 07       	cpc	r23, r19
 732:	84 07       	cpc	r24, r20
 734:	38 f0       	brcs	.+14     	; 0x744 <.L3^B1>
 736:	9f 5f       	subi	r25, 0xFF	; 255
 738:	5f 4f       	sbci	r21, 0xFF	; 255
 73a:	22 0f       	add	r18, r18
 73c:	33 1f       	adc	r19, r19
 73e:	44 1f       	adc	r20, r20
 740:	aa 1f       	adc	r26, r26
 742:	a9 f3       	breq	.-22     	; 0x72e <.L2^B1>

00000744 <.L3^B1>:
 744:	35 d0       	rcall	.+106    	; 0x7b0 <.L_div>
 746:	0e 2e       	mov	r0, r30
 748:	3a f0       	brmi	.+14     	; 0x758 <.L5^B1>

0000074a <.L4^B1>:
 74a:	e0 e8       	ldi	r30, 0x80	; 128
 74c:	32 d0       	rcall	.+100    	; 0x7b2 <.L_div1>
 74e:	91 50       	subi	r25, 0x01	; 1
 750:	50 40       	sbci	r21, 0x00	; 0
 752:	e6 95       	lsr	r30
 754:	00 1c       	adc	r0, r0
 756:	ca f7       	brpl	.-14     	; 0x74a <.L4^B1>

00000758 <.L5^B1>:
 758:	2b d0       	rcall	.+86     	; 0x7b0 <.L_div>
 75a:	fe 2f       	mov	r31, r30
 75c:	29 d0       	rcall	.+82     	; 0x7b0 <.L_div>
 75e:	66 0f       	add	r22, r22
 760:	77 1f       	adc	r23, r23
 762:	88 1f       	adc	r24, r24
 764:	bb 1f       	adc	r27, r27
 766:	26 17       	cp	r18, r22
 768:	37 07       	cpc	r19, r23
 76a:	48 07       	cpc	r20, r24
 76c:	ab 07       	cpc	r26, r27
 76e:	b0 e8       	ldi	r27, 0x80	; 128
 770:	09 f0       	breq	.+2      	; 0x774 <.L4^B2>
 772:	bb 0b       	sbc	r27, r27

00000774 <.L4^B2>:
 774:	80 2d       	mov	r24, r0
 776:	bf 01       	movw	r22, r30
 778:	ff 27       	eor	r31, r31
 77a:	93 58       	subi	r25, 0x83	; 131
 77c:	5f 4f       	sbci	r21, 0xFF	; 255
 77e:	3a f0       	brmi	.+14     	; 0x78e <.L13^B1>
 780:	9e 3f       	cpi	r25, 0xFE	; 254
 782:	51 05       	cpc	r21, r1
 784:	78 f0       	brcs	.+30     	; 0x7a4 <.L15^B1>
 786:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <__fp_inf>

0000078a <.L12^B1>:
 78a:	0c 94 a1 04 	jmp	0x942	; 0x942 <__fp_szero>

0000078e <.L13^B1>:
 78e:	5f 3f       	cpi	r21, 0xFF	; 255
 790:	e4 f3       	brlt	.-8      	; 0x78a <.L12^B1>
 792:	98 3e       	cpi	r25, 0xE8	; 232
 794:	d4 f3       	brlt	.-12     	; 0x78a <.L12^B1>

00000796 <.L14^B1>:
 796:	86 95       	lsr	r24
 798:	77 95       	ror	r23
 79a:	67 95       	ror	r22
 79c:	b7 95       	ror	r27
 79e:	f7 95       	ror	r31
 7a0:	9f 5f       	subi	r25, 0xFF	; 255
 7a2:	c9 f7       	brne	.-14     	; 0x796 <.L14^B1>

000007a4 <.L15^B1>:
 7a4:	88 0f       	add	r24, r24
 7a6:	91 1d       	adc	r25, r1
 7a8:	96 95       	lsr	r25
 7aa:	87 95       	ror	r24
 7ac:	97 f9       	bld	r25, 7
 7ae:	08 95       	ret

000007b0 <.L_div>:
 7b0:	e1 e0       	ldi	r30, 0x01	; 1

000007b2 <.L_div1>:
 7b2:	66 0f       	add	r22, r22
 7b4:	77 1f       	adc	r23, r23
 7b6:	88 1f       	adc	r24, r24
 7b8:	bb 1f       	adc	r27, r27
 7ba:	62 17       	cp	r22, r18
 7bc:	73 07       	cpc	r23, r19
 7be:	84 07       	cpc	r24, r20
 7c0:	ba 07       	cpc	r27, r26
 7c2:	20 f0       	brcs	.+8      	; 0x7cc <.L2^B2>
 7c4:	62 1b       	sub	r22, r18
 7c6:	73 0b       	sbc	r23, r19
 7c8:	84 0b       	sbc	r24, r20
 7ca:	ba 0b       	sbc	r27, r26

000007cc <.L2^B2>:
 7cc:	ee 1f       	adc	r30, r30
 7ce:	88 f7       	brcc	.-30     	; 0x7b2 <.L_div1>
 7d0:	e0 95       	com	r30
 7d2:	08 95       	ret

000007d4 <__fixunssfsi>:
 7d4:	0e 94 86 04 	call	0x90c	; 0x90c <__fp_splitA>
 7d8:	88 f0       	brcs	.+34     	; 0x7fc <.L_err>
 7da:	9f 57       	subi	r25, 0x7F	; 127
 7dc:	98 f0       	brcs	.+38     	; 0x804 <.L_zr>
 7de:	b9 2f       	mov	r27, r25
 7e0:	99 27       	eor	r25, r25
 7e2:	b7 51       	subi	r27, 0x17	; 23
 7e4:	b0 f0       	brcs	.+44     	; 0x812 <.L4^B1>
 7e6:	e1 f0       	breq	.+56     	; 0x820 <.L_sign>

000007e8 <.L1^B1>:
 7e8:	66 0f       	add	r22, r22
 7ea:	77 1f       	adc	r23, r23
 7ec:	88 1f       	adc	r24, r24
 7ee:	99 1f       	adc	r25, r25
 7f0:	1a f0       	brmi	.+6      	; 0x7f8 <.L2^B1>
 7f2:	ba 95       	dec	r27
 7f4:	c9 f7       	brne	.-14     	; 0x7e8 <.L1^B1>
 7f6:	14 c0       	rjmp	.+40     	; 0x820 <.L_sign>

000007f8 <.L2^B1>:
 7f8:	b1 30       	cpi	r27, 0x01	; 1
 7fa:	91 f0       	breq	.+36     	; 0x820 <.L_sign>

000007fc <.L_err>:
 7fc:	0e 94 a0 04 	call	0x940	; 0x940 <__fp_zero>
 800:	b1 e0       	ldi	r27, 0x01	; 1
 802:	08 95       	ret

00000804 <.L_zr>:
 804:	0c 94 a0 04 	jmp	0x940	; 0x940 <__fp_zero>

00000808 <.L3^B1>:
 808:	67 2f       	mov	r22, r23
 80a:	78 2f       	mov	r23, r24
 80c:	88 27       	eor	r24, r24
 80e:	b8 5f       	subi	r27, 0xF8	; 248
 810:	39 f0       	breq	.+14     	; 0x820 <.L_sign>

00000812 <.L4^B1>:
 812:	b9 3f       	cpi	r27, 0xF9	; 249
 814:	cc f3       	brlt	.-14     	; 0x808 <.L3^B1>

00000816 <.L5^B1>:
 816:	86 95       	lsr	r24
 818:	77 95       	ror	r23
 81a:	67 95       	ror	r22
 81c:	b3 95       	inc	r27
 81e:	d9 f7       	brne	.-10     	; 0x816 <.L5^B1>

00000820 <.L_sign>:
 820:	3e f4       	brtc	.+14     	; 0x830 <.L6^B1>
 822:	90 95       	com	r25
 824:	80 95       	com	r24
 826:	70 95       	com	r23
 828:	61 95       	neg	r22
 82a:	7f 4f       	sbci	r23, 0xFF	; 255
 82c:	8f 4f       	sbci	r24, 0xFF	; 255
 82e:	9f 4f       	sbci	r25, 0xFF	; 255

00000830 <.L6^B1>:
 830:	08 95       	ret

00000832 <__floatunsisf>:
 832:	e8 94       	clt
 834:	09 c0       	rjmp	.+18     	; 0x848 <.L1^B1>

00000836 <__floatsisf>:
 836:	97 fb       	bst	r25, 7
 838:	3e f4       	brtc	.+14     	; 0x848 <.L1^B1>
 83a:	90 95       	com	r25
 83c:	80 95       	com	r24
 83e:	70 95       	com	r23
 840:	61 95       	neg	r22
 842:	7f 4f       	sbci	r23, 0xFF	; 255
 844:	8f 4f       	sbci	r24, 0xFF	; 255
 846:	9f 4f       	sbci	r25, 0xFF	; 255

00000848 <.L1^B1>:
 848:	99 23       	and	r25, r25
 84a:	a9 f0       	breq	.+42     	; 0x876 <.L4^B1>
 84c:	f9 2f       	mov	r31, r25
 84e:	96 e9       	ldi	r25, 0x96	; 150
 850:	bb 27       	eor	r27, r27

00000852 <.L2^B1>:
 852:	93 95       	inc	r25
 854:	f6 95       	lsr	r31
 856:	87 95       	ror	r24
 858:	77 95       	ror	r23
 85a:	67 95       	ror	r22
 85c:	b7 95       	ror	r27
 85e:	f1 11       	cpse	r31, r1
 860:	f8 cf       	rjmp	.-16     	; 0x852 <.L2^B1>
 862:	fa f4       	brpl	.+62     	; 0x8a2 <.L_pack>
 864:	bb 0f       	add	r27, r27
 866:	11 f4       	brne	.+4      	; 0x86c <.L3^B1>
 868:	60 ff       	sbrs	r22, 0
 86a:	1b c0       	rjmp	.+54     	; 0x8a2 <.L_pack>

0000086c <.L3^B1>:
 86c:	6f 5f       	subi	r22, 0xFF	; 255
 86e:	7f 4f       	sbci	r23, 0xFF	; 255
 870:	8f 4f       	sbci	r24, 0xFF	; 255
 872:	9f 4f       	sbci	r25, 0xFF	; 255
 874:	16 c0       	rjmp	.+44     	; 0x8a2 <.L_pack>

00000876 <.L4^B1>:
 876:	88 23       	and	r24, r24
 878:	11 f0       	breq	.+4      	; 0x87e <.L5^B1>
 87a:	96 e9       	ldi	r25, 0x96	; 150
 87c:	11 c0       	rjmp	.+34     	; 0x8a0 <.L8^B1>

0000087e <.L5^B1>:
 87e:	77 23       	and	r23, r23
 880:	21 f0       	breq	.+8      	; 0x88a <.L6^B1>
 882:	9e e8       	ldi	r25, 0x8E	; 142
 884:	87 2f       	mov	r24, r23
 886:	76 2f       	mov	r23, r22
 888:	05 c0       	rjmp	.+10     	; 0x894 <.L7^B1>

0000088a <.L6^B1>:
 88a:	66 23       	and	r22, r22
 88c:	71 f0       	breq	.+28     	; 0x8aa <.L9^B1>
 88e:	96 e8       	ldi	r25, 0x86	; 134
 890:	86 2f       	mov	r24, r22
 892:	70 e0       	ldi	r23, 0x00	; 0

00000894 <.L7^B1>:
 894:	60 e0       	ldi	r22, 0x00	; 0
 896:	2a f0       	brmi	.+10     	; 0x8a2 <.L_pack>

00000898 <.L10^B1>:
 898:	9a 95       	dec	r25
 89a:	66 0f       	add	r22, r22
 89c:	77 1f       	adc	r23, r23
 89e:	88 1f       	adc	r24, r24

000008a0 <.L8^B1>:
 8a0:	da f7       	brpl	.-10     	; 0x898 <.L10^B1>

000008a2 <.L_pack>:
 8a2:	88 0f       	add	r24, r24
 8a4:	96 95       	lsr	r25
 8a6:	87 95       	ror	r24
 8a8:	97 f9       	bld	r25, 7

000008aa <.L9^B1>:
 8aa:	08 95       	ret

000008ac <__fp_inf>:
 8ac:	97 f9       	bld	r25, 7
 8ae:	9f 67       	ori	r25, 0x7F	; 127
 8b0:	80 e8       	ldi	r24, 0x80	; 128
 8b2:	70 e0       	ldi	r23, 0x00	; 0
 8b4:	60 e0       	ldi	r22, 0x00	; 0
 8b6:	08 95       	ret

000008b8 <__fp_nan>:
 8b8:	9f ef       	ldi	r25, 0xFF	; 255
 8ba:	80 ec       	ldi	r24, 0xC0	; 192
 8bc:	08 95       	ret

000008be <__fp_pscA>:
 8be:	00 24       	eor	r0, r0
 8c0:	0a 94       	dec	r0
 8c2:	16 16       	cp	r1, r22
 8c4:	17 06       	cpc	r1, r23
 8c6:	18 06       	cpc	r1, r24
 8c8:	09 06       	cpc	r0, r25
 8ca:	08 95       	ret

000008cc <__fp_pscB>:
 8cc:	00 24       	eor	r0, r0
 8ce:	0a 94       	dec	r0
 8d0:	12 16       	cp	r1, r18
 8d2:	13 06       	cpc	r1, r19
 8d4:	14 06       	cpc	r1, r20
 8d6:	05 06       	cpc	r0, r21
 8d8:	08 95       	ret

000008da <__fp_round>:
 8da:	09 2e       	mov	r0, r25
 8dc:	03 94       	inc	r0
 8de:	00 0c       	add	r0, r0
 8e0:	11 f4       	brne	.+4      	; 0x8e6 <.L1^B1>
 8e2:	88 23       	and	r24, r24
 8e4:	52 f0       	brmi	.+20     	; 0x8fa <.L3^B1>

000008e6 <.L1^B1>:
 8e6:	bb 0f       	add	r27, r27
 8e8:	40 f4       	brcc	.+16     	; 0x8fa <.L3^B1>
 8ea:	bf 2b       	or	r27, r31
 8ec:	11 f4       	brne	.+4      	; 0x8f2 <.L2^B1>
 8ee:	60 ff       	sbrs	r22, 0
 8f0:	04 c0       	rjmp	.+8      	; 0x8fa <.L3^B1>

000008f2 <.L2^B1>:
 8f2:	6f 5f       	subi	r22, 0xFF	; 255
 8f4:	7f 4f       	sbci	r23, 0xFF	; 255
 8f6:	8f 4f       	sbci	r24, 0xFF	; 255
 8f8:	9f 4f       	sbci	r25, 0xFF	; 255

000008fa <.L3^B1>:
 8fa:	08 95       	ret

000008fc <__fp_split3>:
 8fc:	57 fd       	sbrc	r21, 7
 8fe:	90 58       	subi	r25, 0x80	; 128
 900:	44 0f       	add	r20, r20
 902:	55 1f       	adc	r21, r21
 904:	59 f0       	breq	.+22     	; 0x91c <.L4^B1>
 906:	5f 3f       	cpi	r21, 0xFF	; 255
 908:	71 f0       	breq	.+28     	; 0x926 <.L5^B1>

0000090a <.L1^B1>:
 90a:	47 95       	ror	r20

0000090c <__fp_splitA>:
 90c:	88 0f       	add	r24, r24
 90e:	97 fb       	bst	r25, 7
 910:	99 1f       	adc	r25, r25
 912:	61 f0       	breq	.+24     	; 0x92c <.L6^B1>
 914:	9f 3f       	cpi	r25, 0xFF	; 255
 916:	79 f0       	breq	.+30     	; 0x936 <.L7^B1>

00000918 <.L3^B1>:
 918:	87 95       	ror	r24
 91a:	08 95       	ret

0000091c <.L4^B1>:
 91c:	12 16       	cp	r1, r18
 91e:	13 06       	cpc	r1, r19
 920:	14 06       	cpc	r1, r20
 922:	55 1f       	adc	r21, r21
 924:	f2 cf       	rjmp	.-28     	; 0x90a <.L1^B1>

00000926 <.L5^B1>:
 926:	46 95       	lsr	r20
 928:	f1 df       	rcall	.-30     	; 0x90c <__fp_splitA>
 92a:	08 c0       	rjmp	.+16     	; 0x93c <.L8^B1>

0000092c <.L6^B1>:
 92c:	16 16       	cp	r1, r22
 92e:	17 06       	cpc	r1, r23
 930:	18 06       	cpc	r1, r24
 932:	99 1f       	adc	r25, r25
 934:	f1 cf       	rjmp	.-30     	; 0x918 <.L3^B1>

00000936 <.L7^B1>:
 936:	86 95       	lsr	r24
 938:	71 05       	cpc	r23, r1
 93a:	61 05       	cpc	r22, r1

0000093c <.L8^B1>:
 93c:	08 94       	sec
 93e:	08 95       	ret

00000940 <__fp_zero>:
 940:	e8 94       	clt

00000942 <__fp_szero>:
 942:	bb 27       	eor	r27, r27
 944:	66 27       	eor	r22, r22
 946:	77 27       	eor	r23, r23
 948:	cb 01       	movw	r24, r22
 94a:	97 f9       	bld	r25, 7
 94c:	08 95       	ret

0000094e <__mulsf3>:
 94e:	0e 94 ba 04 	call	0x974	; 0x974 <__mulsf3x>
 952:	0c 94 6d 04 	jmp	0x8da	; 0x8da <__fp_round>

00000956 <.L0^B1>:
 956:	0e 94 5f 04 	call	0x8be	; 0x8be <__fp_pscA>
 95a:	38 f0       	brcs	.+14     	; 0x96a <.L1^B1>
 95c:	0e 94 66 04 	call	0x8cc	; 0x8cc <__fp_pscB>
 960:	20 f0       	brcs	.+8      	; 0x96a <.L1^B1>
 962:	95 23       	and	r25, r21
 964:	11 f0       	breq	.+4      	; 0x96a <.L1^B1>
 966:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <__fp_inf>

0000096a <.L1^B1>:
 96a:	0c 94 5c 04 	jmp	0x8b8	; 0x8b8 <__fp_nan>

0000096e <.L2^B1>:
 96e:	11 24       	eor	r1, r1
 970:	0c 94 a1 04 	jmp	0x942	; 0x942 <__fp_szero>

00000974 <__mulsf3x>:
 974:	0e 94 7e 04 	call	0x8fc	; 0x8fc <__fp_split3>
 978:	70 f3       	brcs	.-36     	; 0x956 <.L0^B1>

0000097a <__mulsf3_pse>:
 97a:	95 9f       	mul	r25, r21
 97c:	c1 f3       	breq	.-16     	; 0x96e <.L2^B1>
 97e:	95 0f       	add	r25, r21
 980:	50 e0       	ldi	r21, 0x00	; 0
 982:	55 1f       	adc	r21, r21
 984:	62 9f       	mul	r22, r18
 986:	f0 01       	movw	r30, r0
 988:	72 9f       	mul	r23, r18
 98a:	bb 27       	eor	r27, r27
 98c:	f0 0d       	add	r31, r0
 98e:	b1 1d       	adc	r27, r1
 990:	63 9f       	mul	r22, r19
 992:	aa 27       	eor	r26, r26
 994:	f0 0d       	add	r31, r0
 996:	b1 1d       	adc	r27, r1
 998:	aa 1f       	adc	r26, r26
 99a:	64 9f       	mul	r22, r20
 99c:	66 27       	eor	r22, r22
 99e:	b0 0d       	add	r27, r0
 9a0:	a1 1d       	adc	r26, r1
 9a2:	66 1f       	adc	r22, r22
 9a4:	82 9f       	mul	r24, r18
 9a6:	22 27       	eor	r18, r18
 9a8:	b0 0d       	add	r27, r0
 9aa:	a1 1d       	adc	r26, r1
 9ac:	62 1f       	adc	r22, r18
 9ae:	73 9f       	mul	r23, r19
 9b0:	b0 0d       	add	r27, r0
 9b2:	a1 1d       	adc	r26, r1
 9b4:	62 1f       	adc	r22, r18
 9b6:	83 9f       	mul	r24, r19
 9b8:	a0 0d       	add	r26, r0
 9ba:	61 1d       	adc	r22, r1
 9bc:	22 1f       	adc	r18, r18
 9be:	74 9f       	mul	r23, r20
 9c0:	33 27       	eor	r19, r19
 9c2:	a0 0d       	add	r26, r0
 9c4:	61 1d       	adc	r22, r1
 9c6:	23 1f       	adc	r18, r19
 9c8:	84 9f       	mul	r24, r20
 9ca:	60 0d       	add	r22, r0
 9cc:	21 1d       	adc	r18, r1
 9ce:	82 2f       	mov	r24, r18
 9d0:	76 2f       	mov	r23, r22
 9d2:	6a 2f       	mov	r22, r26
 9d4:	11 24       	eor	r1, r1
 9d6:	9f 57       	subi	r25, 0x7F	; 127
 9d8:	50 40       	sbci	r21, 0x00	; 0
 9da:	9a f0       	brmi	.+38     	; 0xa02 <.L13^B1>
 9dc:	f1 f0       	breq	.+60     	; 0xa1a <.L15^B1>

000009de <.L10^B1>:
 9de:	88 23       	and	r24, r24
 9e0:	4a f0       	brmi	.+18     	; 0x9f4 <.L11^B1>
 9e2:	ee 0f       	add	r30, r30
 9e4:	ff 1f       	adc	r31, r31
 9e6:	bb 1f       	adc	r27, r27
 9e8:	66 1f       	adc	r22, r22
 9ea:	77 1f       	adc	r23, r23
 9ec:	88 1f       	adc	r24, r24
 9ee:	91 50       	subi	r25, 0x01	; 1
 9f0:	50 40       	sbci	r21, 0x00	; 0
 9f2:	a9 f7       	brne	.-22     	; 0x9de <.L10^B1>

000009f4 <.L11^B1>:
 9f4:	9e 3f       	cpi	r25, 0xFE	; 254
 9f6:	51 05       	cpc	r21, r1
 9f8:	80 f0       	brcs	.+32     	; 0xa1a <.L15^B1>
 9fa:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <__fp_inf>

000009fe <.L12^B1>:
 9fe:	0c 94 a1 04 	jmp	0x942	; 0x942 <__fp_szero>

00000a02 <.L13^B1>:
 a02:	5f 3f       	cpi	r21, 0xFF	; 255
 a04:	e4 f3       	brlt	.-8      	; 0x9fe <.L12^B1>
 a06:	98 3e       	cpi	r25, 0xE8	; 232
 a08:	d4 f3       	brlt	.-12     	; 0x9fe <.L12^B1>

00000a0a <.L14^B1>:
 a0a:	86 95       	lsr	r24
 a0c:	77 95       	ror	r23
 a0e:	67 95       	ror	r22
 a10:	b7 95       	ror	r27
 a12:	f7 95       	ror	r31
 a14:	e7 95       	ror	r30
 a16:	9f 5f       	subi	r25, 0xFF	; 255
 a18:	c1 f7       	brne	.-16     	; 0xa0a <.L14^B1>

00000a1a <.L15^B1>:
 a1a:	fe 2b       	or	r31, r30
 a1c:	88 0f       	add	r24, r24
 a1e:	91 1d       	adc	r25, r1
 a20:	96 95       	lsr	r25
 a22:	87 95       	ror	r24
 a24:	97 f9       	bld	r25, 7
 a26:	08 95       	ret

00000a28 <sprintf>:
 a28:	ae e0       	ldi	r26, 0x0E	; 14
 a2a:	b0 e0       	ldi	r27, 0x00	; 0
 a2c:	ea e1       	ldi	r30, 0x1A	; 26
 a2e:	f5 e0       	ldi	r31, 0x05	; 5
 a30:	0c 94 d4 07 	jmp	0xfa8	; 0xfa8 <__prologue_saves__+0x1c>

00000a34 <.L1^B1>:
 a34:	0d 89       	ldd	r16, Y+21	; 0x15
 a36:	1e 89       	ldd	r17, Y+22	; 0x16
 a38:	86 e0       	ldi	r24, 0x06	; 6
 a3a:	8c 83       	std	Y+4, r24	; 0x04
 a3c:	1a 83       	std	Y+2, r17	; 0x02
 a3e:	09 83       	std	Y+1, r16	; 0x01
 a40:	8f ef       	ldi	r24, 0xFF	; 255
 a42:	9f e7       	ldi	r25, 0x7F	; 127
 a44:	9e 83       	std	Y+6, r25	; 0x06
 a46:	8d 83       	std	Y+5, r24	; 0x05
 a48:	ae 01       	movw	r20, r28
 a4a:	47 5e       	subi	r20, 0xE7	; 231
 a4c:	5f 4f       	sbci	r21, 0xFF	; 255
 a4e:	6f 89       	ldd	r22, Y+23	; 0x17
 a50:	78 8d       	ldd	r23, Y+24	; 0x18
 a52:	ce 01       	movw	r24, r28
 a54:	01 96       	adiw	r24, 0x01	; 1
 a56:	0e 94 37 05 	call	0xa6e	; 0xa6e <vfprintf>
 a5a:	2f 81       	ldd	r18, Y+7	; 0x07
 a5c:	38 85       	ldd	r19, Y+8	; 0x08
 a5e:	02 0f       	add	r16, r18
 a60:	13 1f       	adc	r17, r19
 a62:	f8 01       	movw	r30, r16
 a64:	10 82       	st	Z, r1
 a66:	2e 96       	adiw	r28, 0x0e	; 14
 a68:	e4 e0       	ldi	r30, 0x04	; 4
 a6a:	0c 94 f0 07 	jmp	0xfe0	; 0xfe0 <__epilogue_restores__+0x1c>

00000a6e <vfprintf>:
 a6e:	ab e0       	ldi	r26, 0x0B	; 11
 a70:	b0 e0       	ldi	r27, 0x00	; 0
 a72:	ed e3       	ldi	r30, 0x3D	; 61
 a74:	f5 e0       	ldi	r31, 0x05	; 5
 a76:	0c 94 c9 07 	jmp	0xf92	; 0xf92 <__prologue_saves__+0x6>

00000a7a <.L1^B1>:
 a7a:	6c 01       	movw	r12, r24
 a7c:	7b 01       	movw	r14, r22
 a7e:	8a 01       	movw	r16, r20
 a80:	fc 01       	movw	r30, r24
 a82:	17 82       	std	Z+7, r1	; 0x07
 a84:	16 82       	std	Z+6, r1	; 0x06
 a86:	83 81       	ldd	r24, Z+3	; 0x03
 a88:	81 ff       	sbrs	r24, 1
 a8a:	d9 c1       	rjmp	.+946    	; 0xe3e <.L81>
 a8c:	9a e0       	ldi	r25, 0x0A	; 10
 a8e:	59 2e       	mov	r5, r25

00000a90 <.L3>:
 a90:	f6 01       	movw	r30, r12
 a92:	23 81       	ldd	r18, Z+3	; 0x03
 a94:	f7 01       	movw	r30, r14
 a96:	23 fd       	sbrc	r18, 3
 a98:	85 91       	lpm	r24, Z+
 a9a:	23 ff       	sbrs	r18, 3
 a9c:	81 91       	ld	r24, Z+
 a9e:	7f 01       	movw	r14, r30
 aa0:	81 15       	cp	r24, r1
 aa2:	09 f4       	brne	.+2      	; 0xaa6 <L0^A+0x2>

00000aa4 <L0^A>:
 aa4:	1f c1       	rjmp	.+574    	; 0xce4 <.L4>
 aa6:	85 32       	cpi	r24, 0x25	; 37
 aa8:	39 f4       	brne	.+14     	; 0xab8 <.L5>
 aaa:	23 fd       	sbrc	r18, 3
 aac:	95 91       	lpm	r25, Z+
 aae:	23 ff       	sbrs	r18, 3
 ab0:	91 91       	ld	r25, Z+
 ab2:	7f 01       	movw	r14, r30
 ab4:	95 32       	cpi	r25, 0x25	; 37
 ab6:	29 f4       	brne	.+10     	; 0xac2 <.L82>

00000ab8 <.L5>:
 ab8:	b6 01       	movw	r22, r12
 aba:	90 e0       	ldi	r25, 0x00	; 0
 abc:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 ac0:	e7 cf       	rjmp	.-50     	; 0xa90 <.L3>

00000ac2 <.L82>:
 ac2:	30 e0       	ldi	r19, 0x00	; 0
 ac4:	91 2c       	mov	r9, r1
 ac6:	61 2c       	mov	r6, r1
 ac8:	71 2c       	mov	r7, r1

00000aca <.L6>:
 aca:	f0 e2       	ldi	r31, 0x20	; 32
 acc:	7f 16       	cp	r7, r31
 ace:	40 f5       	brcc	.+80     	; 0xb20 <.L8>
 ad0:	9b 32       	cpi	r25, 0x2B	; 43
 ad2:	d9 f0       	breq	.+54     	; 0xb0a <.L9>
 ad4:	58 f4       	brcc	.+22     	; 0xaec <.L10>
 ad6:	90 32       	cpi	r25, 0x20	; 32
 ad8:	d1 f0       	breq	.+52     	; 0xb0e <.L11>
 ada:	93 32       	cpi	r25, 0x23	; 35
 adc:	f1 f0       	breq	.+60     	; 0xb1a <.L12>

00000ade <.L13>:
 ade:	9e 32       	cpi	r25, 0x2E	; 46
 ae0:	99 f5       	brne	.+102    	; 0xb48 <.L19>
 ae2:	76 fc       	sbrc	r7, 6
 ae4:	ff c0       	rjmp	.+510    	; 0xce4 <.L4>
 ae6:	68 94       	set
 ae8:	76 f8       	bld	r7, 6
 aea:	06 c0       	rjmp	.+12     	; 0xaf8 <.L16>

00000aec <.L10>:
 aec:	9d 32       	cpi	r25, 0x2D	; 45
 aee:	91 f0       	breq	.+36     	; 0xb14 <.L14>
 af0:	90 33       	cpi	r25, 0x30	; 48
 af2:	c1 f4       	brne	.+48     	; 0xb24 <.L15>
 af4:	68 94       	set
 af6:	70 f8       	bld	r7, 0

00000af8 <.L16>:
 af8:	f7 01       	movw	r30, r14
 afa:	23 fd       	sbrc	r18, 3
 afc:	95 91       	lpm	r25, Z+
 afe:	23 ff       	sbrs	r18, 3
 b00:	91 91       	ld	r25, Z+
 b02:	7f 01       	movw	r14, r30
 b04:	91 11       	cpse	r25, r1
 b06:	e1 cf       	rjmp	.-62     	; 0xaca <.L6>
 b08:	29 c0       	rjmp	.+82     	; 0xb5c <.L17>

00000b0a <.L9>:
 b0a:	68 94       	set
 b0c:	71 f8       	bld	r7, 1

00000b0e <.L11>:
 b0e:	68 94       	set
 b10:	72 f8       	bld	r7, 2
 b12:	f2 cf       	rjmp	.-28     	; 0xaf8 <.L16>

00000b14 <.L14>:
 b14:	68 94       	set
 b16:	73 f8       	bld	r7, 3
 b18:	ef cf       	rjmp	.-34     	; 0xaf8 <.L16>

00000b1a <.L12>:
 b1a:	68 94       	set
 b1c:	74 f8       	bld	r7, 4
 b1e:	ec cf       	rjmp	.-40     	; 0xaf8 <.L16>

00000b20 <.L8>:
 b20:	77 fc       	sbrc	r7, 7
 b22:	1c c0       	rjmp	.+56     	; 0xb5c <.L17>

00000b24 <.L15>:
 b24:	80 ed       	ldi	r24, 0xD0	; 208
 b26:	89 0f       	add	r24, r25
 b28:	8a 30       	cpi	r24, 0x0A	; 10
 b2a:	c8 f6       	brcc	.-78     	; 0xade <.L13>
 b2c:	76 fe       	sbrs	r7, 6
 b2e:	05 c0       	rjmp	.+10     	; 0xb3a <.L18>
 b30:	95 9c       	mul	r9, r5
 b32:	80 0d       	add	r24, r0
 b34:	11 24       	eor	r1, r1
 b36:	98 2e       	mov	r9, r24
 b38:	df cf       	rjmp	.-66     	; 0xaf8 <.L16>

00000b3a <.L18>:
 b3a:	65 9c       	mul	r6, r5
 b3c:	80 0d       	add	r24, r0
 b3e:	11 24       	eor	r1, r1
 b40:	68 2e       	mov	r6, r24
 b42:	68 94       	set
 b44:	75 f8       	bld	r7, 5
 b46:	d8 cf       	rjmp	.-80     	; 0xaf8 <.L16>

00000b48 <.L19>:
 b48:	9c 36       	cpi	r25, 0x6C	; 108
 b4a:	19 f4       	brne	.+6      	; 0xb52 <.L20>
 b4c:	68 94       	set
 b4e:	77 f8       	bld	r7, 7
 b50:	d3 cf       	rjmp	.-90     	; 0xaf8 <.L16>

00000b52 <.L20>:
 b52:	9c 34       	cpi	r25, 0x4C	; 76
 b54:	09 f4       	brne	.+2      	; 0xb58 <L0^A+0x2>

00000b56 <L0^A>:
 b56:	4b c0       	rjmp	.+150    	; 0xbee <.L83>
 b58:	98 36       	cpi	r25, 0x68	; 104
 b5a:	71 f2       	breq	.-100    	; 0xaf8 <.L16>

00000b5c <.L17>:
 b5c:	89 2f       	mov	r24, r25
 b5e:	8f 7d       	andi	r24, 0xDF	; 223
 b60:	85 54       	subi	r24, 0x45	; 69
 b62:	83 30       	cpi	r24, 0x03	; 3
 b64:	08 f4       	brcc	.+2      	; 0xb68 <L0^A+0x2>

00000b66 <L0^A>:
 b66:	45 c0       	rjmp	.+138    	; 0xbf2 <.L21>
 b68:	93 36       	cpi	r25, 0x63	; 99
 b6a:	09 f4       	brne	.+2      	; 0xb6e <L0^A+0x2>

00000b6c <L0^A>:
 b6c:	66 c0       	rjmp	.+204    	; 0xc3a <.L22>
 b6e:	93 37       	cpi	r25, 0x73	; 115
 b70:	09 f4       	brne	.+2      	; 0xb74 <L0^A+0x2>

00000b72 <L0^A>:
 b72:	69 c0       	rjmp	.+210    	; 0xc46 <.L23>
 b74:	93 35       	cpi	r25, 0x53	; 83
 b76:	09 f4       	brne	.+2      	; 0xb7a <L0^A+0x2>

00000b78 <L0^A>:
 b78:	75 c0       	rjmp	.+234    	; 0xc64 <.L24>
 b7a:	94 36       	cpi	r25, 0x64	; 100
 b7c:	19 f0       	breq	.+6      	; 0xb84 <.L39>
 b7e:	99 36       	cpi	r25, 0x69	; 105
 b80:	09 f0       	breq	.+2      	; 0xb84 <.L39>

00000b82 <L0^A>:
 b82:	9f c0       	rjmp	.+318    	; 0xcc2 <.L40>

00000b84 <.L39>:
 b84:	f8 01       	movw	r30, r16
 b86:	77 fe       	sbrs	r7, 7
 b88:	95 c0       	rjmp	.+298    	; 0xcb4 <.L41>
 b8a:	61 91       	ld	r22, Z+
 b8c:	71 91       	ld	r23, Z+
 b8e:	81 91       	ld	r24, Z+
 b90:	91 91       	ld	r25, Z+

00000b92 <.L128>:
 b92:	8f 01       	movw	r16, r30
 b94:	27 2d       	mov	r18, r7
 b96:	2f 76       	andi	r18, 0x6F	; 111
 b98:	82 2e       	mov	r8, r18
 b9a:	97 ff       	sbrs	r25, 7
 b9c:	09 c0       	rjmp	.+18     	; 0xbb0 <.L43>
 b9e:	90 95       	com	r25
 ba0:	80 95       	com	r24
 ba2:	70 95       	com	r23
 ba4:	61 95       	neg	r22
 ba6:	7f 4f       	sbci	r23, 0xFF	; 255
 ba8:	8f 4f       	sbci	r24, 0xFF	; 255
 baa:	9f 4f       	sbci	r25, 0xFF	; 255
 bac:	68 94       	set
 bae:	87 f8       	bld	r8, 7

00000bb0 <.L43>:
 bb0:	2a e0       	ldi	r18, 0x0A	; 10
 bb2:	30 e0       	ldi	r19, 0x00	; 0
 bb4:	ae 01       	movw	r20, r28
 bb6:	4f 5f       	subi	r20, 0xFF	; 255
 bb8:	5f 4f       	sbci	r21, 0xFF	; 255
 bba:	5a 01       	movw	r10, r20
 bbc:	0e 94 68 07 	call	0xed0	; 0xed0 <__ultoa_invert>
 bc0:	8a 19       	sub	r24, r10
 bc2:	a8 2e       	mov	r10, r24

00000bc4 <.L44>:
 bc4:	86 fe       	sbrs	r8, 6
 bc6:	c4 c0       	rjmp	.+392    	; 0xd50 <.L54>
 bc8:	88 2d       	mov	r24, r8
 bca:	8e 7f       	andi	r24, 0xFE	; 254
 bcc:	a9 14       	cp	r10, r9
 bce:	08 f0       	brcs	.+2      	; 0xbd2 <L0^A+0x2>

00000bd0 <L0^A>:
 bd0:	be c0       	rjmp	.+380    	; 0xd4e <.L89>
 bd2:	84 fe       	sbrs	r8, 4
 bd4:	11 c1       	rjmp	.+546    	; 0xdf8 <.L90>
 bd6:	82 fc       	sbrc	r8, 2
 bd8:	05 c1       	rjmp	.+522    	; 0xde4 <.L91>
 bda:	f8 2d       	mov	r31, r8
 bdc:	fe 7e       	andi	r31, 0xEE	; 238
 bde:	8f 2e       	mov	r8, r31
 be0:	b9 2c       	mov	r11, r9

00000be2 <.L55>:
 be2:	88 2d       	mov	r24, r8
 be4:	86 78       	andi	r24, 0x86	; 134
 be6:	81 15       	cp	r24, r1
 be8:	09 f4       	brne	.+2      	; 0xbec <L0^A+0x2>

00000bea <L0^A>:
 bea:	bf c0       	rjmp	.+382    	; 0xd6a <.L58>
 bec:	00 c1       	rjmp	.+512    	; 0xdee <.L130>

00000bee <.L83>:
 bee:	31 e0       	ldi	r19, 0x01	; 1
 bf0:	83 cf       	rjmp	.-250    	; 0xaf8 <.L16>

00000bf2 <.L21>:
 bf2:	31 15       	cp	r19, r1
 bf4:	f9 f0       	breq	.+62     	; 0xc34 <.L26>
 bf6:	08 5f       	subi	r16, 0xF8	; 248
 bf8:	1f 4f       	sbci	r17, 0xFF	; 255

00000bfa <.L27>:
 bfa:	8f e3       	ldi	r24, 0x3F	; 63
 bfc:	89 83       	std	Y+1, r24	; 0x01

00000bfe <.L127>:
 bfe:	88 24       	eor	r8, r8
 c00:	83 94       	inc	r8
 c02:	91 2c       	mov	r9, r1
 c04:	ae 01       	movw	r20, r28
 c06:	4f 5f       	subi	r20, 0xFF	; 255
 c08:	5f 4f       	sbci	r21, 0xFF	; 255
 c0a:	5a 01       	movw	r10, r20

00000c0c <.L28>:
 c0c:	e8 94       	clt
 c0e:	77 f8       	bld	r7, 7

00000c10 <.L30>:
 c10:	73 fc       	sbrc	r7, 3
 c12:	03 c0       	rjmp	.+6      	; 0xc1a <.L33>

00000c14 <.L32>:
 c14:	86 14       	cp	r8, r6
 c16:	91 04       	cpc	r9, r1
 c18:	b0 f1       	brcs	.+108    	; 0xc86 <.L34>

00000c1a <.L33>:
 c1a:	81 14       	cp	r8, r1
 c1c:	91 04       	cpc	r9, r1
 c1e:	d1 f5       	brne	.+116    	; 0xc94 <.L37>

00000c20 <.L38>:
 c20:	61 14       	cp	r6, r1
 c22:	09 f4       	brne	.+2      	; 0xc26 <L0^A+0x2>

00000c24 <L0^A>:
 c24:	35 cf       	rjmp	.-406    	; 0xa90 <.L3>
 c26:	b6 01       	movw	r22, r12
 c28:	80 e2       	ldi	r24, 0x20	; 32
 c2a:	90 e0       	ldi	r25, 0x00	; 0
 c2c:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 c30:	6a 94       	dec	r6
 c32:	f6 cf       	rjmp	.-20     	; 0xc20 <.L38>

00000c34 <.L26>:
 c34:	0c 5f       	subi	r16, 0xFC	; 252
 c36:	1f 4f       	sbci	r17, 0xFF	; 255
 c38:	e0 cf       	rjmp	.-64     	; 0xbfa <.L27>

00000c3a <.L22>:
 c3a:	f8 01       	movw	r30, r16
 c3c:	80 81       	ld	r24, Z
 c3e:	89 83       	std	Y+1, r24	; 0x01
 c40:	0e 5f       	subi	r16, 0xFE	; 254
 c42:	1f 4f       	sbci	r17, 0xFF	; 255
 c44:	dc cf       	rjmp	.-72     	; 0xbfe <.L127>

00000c46 <.L23>:
 c46:	f8 01       	movw	r30, r16
 c48:	a1 90       	ld	r10, Z+
 c4a:	b1 90       	ld	r11, Z+
 c4c:	8f 01       	movw	r16, r30
 c4e:	69 2d       	mov	r22, r9
 c50:	70 e0       	ldi	r23, 0x00	; 0
 c52:	76 fc       	sbrc	r7, 6
 c54:	02 c0       	rjmp	.+4      	; 0xc5a <.L29>
 c56:	6f ef       	ldi	r22, 0xFF	; 255
 c58:	7f ef       	ldi	r23, 0xFF	; 255

00000c5a <.L29>:
 c5a:	c5 01       	movw	r24, r10
 c5c:	0e 94 2d 07 	call	0xe5a	; 0xe5a <strnlen>
 c60:	4c 01       	movw	r8, r24
 c62:	d4 cf       	rjmp	.-88     	; 0xc0c <.L28>

00000c64 <.L24>:
 c64:	f8 01       	movw	r30, r16
 c66:	a1 90       	ld	r10, Z+
 c68:	b1 90       	ld	r11, Z+
 c6a:	8f 01       	movw	r16, r30
 c6c:	69 2d       	mov	r22, r9
 c6e:	70 e0       	ldi	r23, 0x00	; 0
 c70:	76 fc       	sbrc	r7, 6
 c72:	02 c0       	rjmp	.+4      	; 0xc78 <.L31>
 c74:	6f ef       	ldi	r22, 0xFF	; 255
 c76:	7f ef       	ldi	r23, 0xFF	; 255

00000c78 <.L31>:
 c78:	c5 01       	movw	r24, r10
 c7a:	0e 94 22 07 	call	0xe44	; 0xe44 <strnlen_P>
 c7e:	4c 01       	movw	r8, r24
 c80:	68 94       	set
 c82:	77 f8       	bld	r7, 7
 c84:	c5 cf       	rjmp	.-118    	; 0xc10 <.L30>

00000c86 <.L34>:
 c86:	b6 01       	movw	r22, r12
 c88:	80 e2       	ldi	r24, 0x20	; 32
 c8a:	90 e0       	ldi	r25, 0x00	; 0
 c8c:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 c90:	6a 94       	dec	r6
 c92:	c0 cf       	rjmp	.-128    	; 0xc14 <.L32>

00000c94 <.L37>:
 c94:	f5 01       	movw	r30, r10
 c96:	77 fc       	sbrc	r7, 7
 c98:	85 91       	lpm	r24, Z+
 c9a:	77 fe       	sbrs	r7, 7
 c9c:	81 91       	ld	r24, Z+
 c9e:	5f 01       	movw	r10, r30
 ca0:	b6 01       	movw	r22, r12
 ca2:	90 e0       	ldi	r25, 0x00	; 0
 ca4:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 ca8:	61 10       	cpse	r6, r1
 caa:	6a 94       	dec	r6
 cac:	f1 e0       	ldi	r31, 0x01	; 1
 cae:	8f 1a       	sub	r8, r31
 cb0:	91 08       	sbc	r9, r1
 cb2:	b3 cf       	rjmp	.-154    	; 0xc1a <.L33>

00000cb4 <.L41>:
 cb4:	61 91       	ld	r22, Z+
 cb6:	71 91       	ld	r23, Z+
 cb8:	07 2e       	mov	r0, r23
 cba:	00 0c       	add	r0, r0
 cbc:	88 0b       	sbc	r24, r24
 cbe:	99 0b       	sbc	r25, r25
 cc0:	68 cf       	rjmp	.-304    	; 0xb92 <.L128>

00000cc2 <.L40>:
 cc2:	87 2c       	mov	r8, r7
 cc4:	e8 94       	clt
 cc6:	84 f8       	bld	r8, 4
 cc8:	2a e0       	ldi	r18, 0x0A	; 10
 cca:	30 e0       	ldi	r19, 0x00	; 0
 ccc:	95 37       	cpi	r25, 0x75	; 117
 cce:	39 f1       	breq	.+78     	; 0xd1e <.L46>
 cd0:	57 2d       	mov	r21, r7
 cd2:	59 7f       	andi	r21, 0xF9	; 249
 cd4:	85 2e       	mov	r8, r21
 cd6:	90 37       	cpi	r25, 0x70	; 112
 cd8:	99 f0       	breq	.+38     	; 0xd00 <.L47>
 cda:	58 f4       	brcc	.+22     	; 0xcf2 <.L48>
 cdc:	98 35       	cpi	r25, 0x58	; 88
 cde:	a9 f0       	breq	.+42     	; 0xd0a <.L49>
 ce0:	9f 36       	cpi	r25, 0x6F	; 111
 ce2:	d9 f0       	breq	.+54     	; 0xd1a <.L86>

00000ce4 <.L4>:
 ce4:	f6 01       	movw	r30, r12
 ce6:	86 81       	ldd	r24, Z+6	; 0x06
 ce8:	97 81       	ldd	r25, Z+7	; 0x07

00000cea <.L1>:
 cea:	2b 96       	adiw	r28, 0x0b	; 11
 cec:	ef e0       	ldi	r30, 0x0F	; 15
 cee:	0c 94 e5 07 	jmp	0xfca	; 0xfca <__epilogue_restores__+0x6>

00000cf2 <.L48>:
 cf2:	98 37       	cpi	r25, 0x78	; 120
 cf4:	b9 f7       	brne	.-18     	; 0xce4 <.L4>
 cf6:	74 fc       	sbrc	r7, 4
 cf8:	05 c0       	rjmp	.+10     	; 0xd04 <.L51>

00000cfa <.L87>:
 cfa:	20 e1       	ldi	r18, 0x10	; 16
 cfc:	30 e0       	ldi	r19, 0x00	; 0
 cfe:	0f c0       	rjmp	.+30     	; 0xd1e <.L46>

00000d00 <.L47>:
 d00:	68 94       	set
 d02:	84 f8       	bld	r8, 4

00000d04 <.L51>:
 d04:	68 94       	set
 d06:	82 f8       	bld	r8, 2
 d08:	f8 cf       	rjmp	.-16     	; 0xcfa <.L87>

00000d0a <.L49>:
 d0a:	74 fe       	sbrs	r7, 4
 d0c:	03 c0       	rjmp	.+6      	; 0xd14 <.L88>
 d0e:	87 2d       	mov	r24, r7
 d10:	86 60       	ori	r24, 0x06	; 6
 d12:	88 2e       	mov	r8, r24

00000d14 <.L88>:
 d14:	20 e1       	ldi	r18, 0x10	; 16
 d16:	32 e0       	ldi	r19, 0x02	; 2
 d18:	02 c0       	rjmp	.+4      	; 0xd1e <.L46>

00000d1a <.L86>:
 d1a:	28 e0       	ldi	r18, 0x08	; 8
 d1c:	30 e0       	ldi	r19, 0x00	; 0

00000d1e <.L46>:
 d1e:	f8 01       	movw	r30, r16
 d20:	87 fe       	sbrs	r8, 7
 d22:	10 c0       	rjmp	.+32     	; 0xd44 <.L52>
 d24:	61 91       	ld	r22, Z+
 d26:	71 91       	ld	r23, Z+
 d28:	81 91       	ld	r24, Z+
 d2a:	91 91       	ld	r25, Z+

00000d2c <.L129>:
 d2c:	8f 01       	movw	r16, r30
 d2e:	fe 01       	movw	r30, r28
 d30:	31 96       	adiw	r30, 0x01	; 1
 d32:	5f 01       	movw	r10, r30
 d34:	af 01       	movw	r20, r30
 d36:	0e 94 68 07 	call	0xed0	; 0xed0 <__ultoa_invert>
 d3a:	8a 19       	sub	r24, r10
 d3c:	a8 2e       	mov	r10, r24
 d3e:	e8 94       	clt
 d40:	87 f8       	bld	r8, 7
 d42:	40 cf       	rjmp	.-384    	; 0xbc4 <.L44>

00000d44 <.L52>:
 d44:	61 91       	ld	r22, Z+
 d46:	71 91       	ld	r23, Z+
 d48:	80 e0       	ldi	r24, 0x00	; 0
 d4a:	90 e0       	ldi	r25, 0x00	; 0
 d4c:	ef cf       	rjmp	.-34     	; 0xd2c <.L129>

00000d4e <.L89>:
 d4e:	88 2e       	mov	r8, r24

00000d50 <.L54>:
 d50:	ba 2c       	mov	r11, r10
 d52:	84 fe       	sbrs	r8, 4
 d54:	46 cf       	rjmp	.-372    	; 0xbe2 <.L55>

00000d56 <.L56>:
 d56:	fe 01       	movw	r30, r28
 d58:	ea 0d       	add	r30, r10
 d5a:	f1 1d       	adc	r31, r1
 d5c:	80 81       	ld	r24, Z
 d5e:	80 33       	cpi	r24, 0x30	; 48
 d60:	09 f0       	breq	.+2      	; 0xd64 <L0^A+0x2>

00000d62 <L0^A>:
 d62:	43 c0       	rjmp	.+134    	; 0xdea <.L57>
 d64:	28 2d       	mov	r18, r8
 d66:	29 7e       	andi	r18, 0xE9	; 233
 d68:	82 2e       	mov	r8, r18

00000d6a <.L58>:
 d6a:	83 fc       	sbrc	r8, 3
 d6c:	0e c0       	rjmp	.+28     	; 0xd8a <.L60>
 d6e:	80 fe       	sbrs	r8, 0
 d70:	4f c0       	rjmp	.+158    	; 0xe10 <.L93>
 d72:	9a 2c       	mov	r9, r10
 d74:	b6 14       	cp	r11, r6
 d76:	18 f4       	brcc	.+6      	; 0xd7e <.L80>
 d78:	96 0c       	add	r9, r6
 d7a:	9b 18       	sub	r9, r11
 d7c:	b6 2c       	mov	r11, r6

00000d7e <.L80>:
 d7e:	86 2d       	mov	r24, r6
 d80:	8b 19       	sub	r24, r11
 d82:	6b 14       	cp	r6, r11
 d84:	08 f4       	brcc	.+2      	; 0xd88 <.L65>
 d86:	80 e0       	ldi	r24, 0x00	; 0

00000d88 <.L65>:
 d88:	b8 0e       	add	r11, r24

00000d8a <.L60>:
 d8a:	b6 14       	cp	r11, r6
 d8c:	08 f0       	brcs	.+2      	; 0xd90 <L0^A+0x2>

00000d8e <L0^A>:
 d8e:	42 c0       	rjmp	.+132    	; 0xe14 <.L95>
 d90:	6b 18       	sub	r6, r11

00000d92 <.L67>:
 d92:	84 fe       	sbrs	r8, 4
 d94:	41 c0       	rjmp	.+130    	; 0xe18 <.L68>
 d96:	b6 01       	movw	r22, r12
 d98:	80 e3       	ldi	r24, 0x30	; 48
 d9a:	90 e0       	ldi	r25, 0x00	; 0
 d9c:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 da0:	82 fe       	sbrs	r8, 2
 da2:	09 c0       	rjmp	.+18     	; 0xdb6 <.L75>
 da4:	88 e5       	ldi	r24, 0x58	; 88
 da6:	90 e0       	ldi	r25, 0x00	; 0
 da8:	81 fc       	sbrc	r8, 1
 daa:	02 c0       	rjmp	.+4      	; 0xdb0 <.L71>
 dac:	88 e7       	ldi	r24, 0x78	; 120
 dae:	90 e0       	ldi	r25, 0x00	; 0

00000db0 <.L71>:
 db0:	b6 01       	movw	r22, r12

00000db2 <.L131>:
 db2:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>

00000db6 <.L75>:
 db6:	a9 14       	cp	r10, r9
 db8:	d8 f1       	brcs	.+118    	; 0xe30 <.L76>
 dba:	aa 94       	dec	r10
 dbc:	b1 2c       	mov	r11, r1
 dbe:	4f ef       	ldi	r20, 0xFF	; 255
 dc0:	a4 1a       	sub	r10, r20
 dc2:	b4 0a       	sbc	r11, r20
 dc4:	ce 01       	movw	r24, r28
 dc6:	01 96       	adiw	r24, 0x01	; 1
 dc8:	4c 01       	movw	r8, r24
 dca:	a8 0e       	add	r10, r24
 dcc:	b9 1e       	adc	r11, r25

00000dce <.L77>:
 dce:	f5 01       	movw	r30, r10
 dd0:	82 91       	ld	r24, -Z
 dd2:	5f 01       	movw	r10, r30
 dd4:	b6 01       	movw	r22, r12
 dd6:	90 e0       	ldi	r25, 0x00	; 0
 dd8:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 ddc:	8a 14       	cp	r8, r10
 dde:	9b 04       	cpc	r9, r11
 de0:	b1 f7       	brne	.-20     	; 0xdce <.L77>
 de2:	1e cf       	rjmp	.-452    	; 0xc20 <.L38>

00000de4 <.L91>:
 de4:	b9 2c       	mov	r11, r9
 de6:	88 2e       	mov	r8, r24
 de8:	b6 cf       	rjmp	.-148    	; 0xd56 <.L56>

00000dea <.L57>:
 dea:	82 fc       	sbrc	r8, 2
 dec:	02 c0       	rjmp	.+4      	; 0xdf2 <.L59>

00000dee <.L130>:
 dee:	b3 94       	inc	r11
 df0:	bc cf       	rjmp	.-136    	; 0xd6a <.L58>

00000df2 <.L59>:
 df2:	b3 94       	inc	r11
 df4:	b3 94       	inc	r11
 df6:	b9 cf       	rjmp	.-142    	; 0xd6a <.L58>

00000df8 <.L90>:
 df8:	b9 2c       	mov	r11, r9
 dfa:	88 2e       	mov	r8, r24
 dfc:	f2 ce       	rjmp	.-540    	; 0xbe2 <.L55>

00000dfe <.L63>:
 dfe:	b6 01       	movw	r22, r12
 e00:	80 e2       	ldi	r24, 0x20	; 32
 e02:	90 e0       	ldi	r25, 0x00	; 0
 e04:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 e08:	73 94       	inc	r7

00000e0a <.L61>:
 e0a:	76 14       	cp	r7, r6
 e0c:	c0 f3       	brcs	.-16     	; 0xdfe <.L63>
 e0e:	b7 cf       	rjmp	.-146    	; 0xd7e <.L80>

00000e10 <.L93>:
 e10:	7b 2c       	mov	r7, r11
 e12:	fb cf       	rjmp	.-10     	; 0xe0a <.L61>

00000e14 <.L95>:
 e14:	61 2c       	mov	r6, r1
 e16:	bd cf       	rjmp	.-134    	; 0xd92 <.L67>

00000e18 <.L68>:
 e18:	88 2d       	mov	r24, r8
 e1a:	86 78       	andi	r24, 0x86	; 134
 e1c:	81 15       	cp	r24, r1
 e1e:	59 f2       	breq	.-106    	; 0xdb6 <.L75>
 e20:	80 e2       	ldi	r24, 0x20	; 32
 e22:	81 fc       	sbrc	r8, 1
 e24:	8b e2       	ldi	r24, 0x2B	; 43
 e26:	87 fc       	sbrc	r8, 7
 e28:	8d e2       	ldi	r24, 0x2D	; 45
 e2a:	b6 01       	movw	r22, r12
 e2c:	90 e0       	ldi	r25, 0x00	; 0
 e2e:	c1 cf       	rjmp	.-126    	; 0xdb2 <.L131>

00000e30 <.L76>:
 e30:	b6 01       	movw	r22, r12
 e32:	80 e3       	ldi	r24, 0x30	; 48
 e34:	90 e0       	ldi	r25, 0x00	; 0
 e36:	0e 94 38 07 	call	0xe70	; 0xe70 <fputc>
 e3a:	9a 94       	dec	r9
 e3c:	bc cf       	rjmp	.-136    	; 0xdb6 <.L75>

00000e3e <.L81>:
 e3e:	8f ef       	ldi	r24, 0xFF	; 255
 e40:	9f ef       	ldi	r25, 0xFF	; 255
 e42:	53 cf       	rjmp	.-346    	; 0xcea <.L1>

00000e44 <strnlen_P>:
 e44:	fc 01       	movw	r30, r24

00000e46 <.L_strnlen_P_loop>:
 e46:	05 90       	lpm	r0, Z+
 e48:	61 50       	subi	r22, 0x01	; 1
 e4a:	70 40       	sbci	r23, 0x00	; 0
 e4c:	01 10       	cpse	r0, r1
 e4e:	d8 f7       	brcc	.-10     	; 0xe46 <.L_strnlen_P_loop>
 e50:	80 95       	com	r24
 e52:	90 95       	com	r25
 e54:	8e 0f       	add	r24, r30
 e56:	9f 1f       	adc	r25, r31
 e58:	08 95       	ret

00000e5a <strnlen>:
 e5a:	fc 01       	movw	r30, r24

00000e5c <.L_strnlen_loop>:
 e5c:	61 50       	subi	r22, 0x01	; 1
 e5e:	70 40       	sbci	r23, 0x00	; 0
 e60:	01 90       	ld	r0, Z+
 e62:	01 10       	cpse	r0, r1
 e64:	d8 f7       	brcc	.-10     	; 0xe5c <.L_strnlen_loop>
 e66:	80 95       	com	r24
 e68:	90 95       	com	r25
 e6a:	8e 0f       	add	r24, r30
 e6c:	9f 1f       	adc	r25, r31
 e6e:	08 95       	ret

00000e70 <fputc>:
 e70:	0f 93       	push	r16
 e72:	1f 93       	push	r17
 e74:	cf 93       	push	r28
 e76:	df 93       	push	r29
 e78:	18 2f       	mov	r17, r24
 e7a:	09 2f       	mov	r16, r25
 e7c:	eb 01       	movw	r28, r22
 e7e:	8b 81       	ldd	r24, Y+3	; 0x03
 e80:	81 fd       	sbrc	r24, 1
 e82:	09 c0       	rjmp	.+18     	; 0xe96 <.L2>

00000e84 <.L7>:
 e84:	1f ef       	ldi	r17, 0xFF	; 255
 e86:	0f ef       	ldi	r16, 0xFF	; 255

00000e88 <.L3>:
 e88:	81 2f       	mov	r24, r17
 e8a:	90 2f       	mov	r25, r16
 e8c:	df 91       	pop	r29
 e8e:	cf 91       	pop	r28
 e90:	1f 91       	pop	r17
 e92:	0f 91       	pop	r16
 e94:	08 95       	ret

00000e96 <.L2>:
 e96:	82 ff       	sbrs	r24, 2
 e98:	14 c0       	rjmp	.+40     	; 0xec2 <.L4>
 e9a:	2e 81       	ldd	r18, Y+6	; 0x06
 e9c:	3f 81       	ldd	r19, Y+7	; 0x07
 e9e:	8c 81       	ldd	r24, Y+4	; 0x04
 ea0:	9d 81       	ldd	r25, Y+5	; 0x05
 ea2:	28 17       	cp	r18, r24
 ea4:	39 07       	cpc	r19, r25
 ea6:	3c f4       	brge	.+14     	; 0xeb6 <.L8>
 ea8:	e8 81       	ld	r30, Y
 eaa:	f9 81       	ldd	r31, Y+1	; 0x01
 eac:	cf 01       	movw	r24, r30
 eae:	01 96       	adiw	r24, 0x01	; 1
 eb0:	99 83       	std	Y+1, r25	; 0x01
 eb2:	88 83       	st	Y, r24
 eb4:	10 83       	st	Z, r17

00000eb6 <.L8>:
 eb6:	8e 81       	ldd	r24, Y+6	; 0x06
 eb8:	9f 81       	ldd	r25, Y+7	; 0x07
 eba:	01 96       	adiw	r24, 0x01	; 1
 ebc:	9f 83       	std	Y+7, r25	; 0x07
 ebe:	8e 83       	std	Y+6, r24	; 0x06
 ec0:	e3 cf       	rjmp	.-58     	; 0xe88 <.L3>

00000ec2 <.L4>:
 ec2:	e8 85       	ldd	r30, Y+8	; 0x08
 ec4:	f9 85       	ldd	r31, Y+9	; 0x09
 ec6:	81 2f       	mov	r24, r17
 ec8:	09 95       	icall
 eca:	89 2b       	or	r24, r25
 ecc:	a1 f3       	breq	.-24     	; 0xeb6 <.L8>
 ece:	da cf       	rjmp	.-76     	; 0xe84 <.L7>

00000ed0 <__ultoa_invert>:
 ed0:	fa 01       	movw	r30, r20
 ed2:	aa 27       	eor	r26, r26
 ed4:	28 30       	cpi	r18, 0x08	; 8
 ed6:	51 f1       	breq	.+84     	; 0xf2c <.L_oct>
 ed8:	20 31       	cpi	r18, 0x10	; 16
 eda:	81 f1       	breq	.+96     	; 0xf3c <.L_hex>
 edc:	e8 94       	clt

00000ede <.L_dec_loop>:
 ede:	6f 93       	push	r22
 ee0:	6e 7f       	andi	r22, 0xFE	; 254
 ee2:	6e 5f       	subi	r22, 0xFE	; 254
 ee4:	7f 4f       	sbci	r23, 0xFF	; 255
 ee6:	8f 4f       	sbci	r24, 0xFF	; 255
 ee8:	9f 4f       	sbci	r25, 0xFF	; 255
 eea:	af 4f       	sbci	r26, 0xFF	; 255
 eec:	b1 e0       	ldi	r27, 0x01	; 1
 eee:	3e d0       	rcall	.+124    	; 0xf6c <.L_div_add>
 ef0:	b4 e0       	ldi	r27, 0x04	; 4
 ef2:	3c d0       	rcall	.+120    	; 0xf6c <.L_div_add>
 ef4:	67 0f       	add	r22, r23
 ef6:	78 1f       	adc	r23, r24
 ef8:	89 1f       	adc	r24, r25
 efa:	9a 1f       	adc	r25, r26
 efc:	a1 1d       	adc	r26, r1
 efe:	68 0f       	add	r22, r24
 f00:	79 1f       	adc	r23, r25
 f02:	8a 1f       	adc	r24, r26
 f04:	91 1d       	adc	r25, r1
 f06:	a1 1d       	adc	r26, r1
 f08:	6a 0f       	add	r22, r26
 f0a:	71 1d       	adc	r23, r1
 f0c:	81 1d       	adc	r24, r1
 f0e:	91 1d       	adc	r25, r1
 f10:	a1 1d       	adc	r26, r1
 f12:	20 d0       	rcall	.+64     	; 0xf54 <.L_lsr_4>
 f14:	09 f4       	brne	.+2      	; 0xf18 <.L1^B1>
 f16:	68 94       	set

00000f18 <.L1^B1>:
 f18:	3f 91       	pop	r19
 f1a:	2a e0       	ldi	r18, 0x0A	; 10
 f1c:	26 9f       	mul	r18, r22
 f1e:	11 24       	eor	r1, r1
 f20:	30 19       	sub	r19, r0
 f22:	30 5d       	subi	r19, 0xD0	; 208
 f24:	31 93       	st	Z+, r19
 f26:	de f6       	brtc	.-74     	; 0xede <.L_dec_loop>

00000f28 <.L_eos>:
 f28:	cf 01       	movw	r24, r30
 f2a:	08 95       	ret

00000f2c <.L_oct>:
 f2c:	46 2f       	mov	r20, r22
 f2e:	47 70       	andi	r20, 0x07	; 7
 f30:	40 5d       	subi	r20, 0xD0	; 208
 f32:	41 93       	st	Z+, r20
 f34:	b3 e0       	ldi	r27, 0x03	; 3
 f36:	0f d0       	rcall	.+30     	; 0xf56 <.L_lsr>
 f38:	c9 f7       	brne	.-14     	; 0xf2c <.L_oct>
 f3a:	f6 cf       	rjmp	.-20     	; 0xf28 <.L_eos>

00000f3c <.L_hex>:
 f3c:	46 2f       	mov	r20, r22
 f3e:	4f 70       	andi	r20, 0x0F	; 15
 f40:	40 5d       	subi	r20, 0xD0	; 208
 f42:	4a 33       	cpi	r20, 0x3A	; 58
 f44:	18 f0       	brcs	.+6      	; 0xf4c <.L3^B1>
 f46:	49 5d       	subi	r20, 0xD9	; 217
 f48:	31 fd       	sbrc	r19, 1
 f4a:	40 52       	subi	r20, 0x20	; 32

00000f4c <.L3^B1>:
 f4c:	41 93       	st	Z+, r20
 f4e:	02 d0       	rcall	.+4      	; 0xf54 <.L_lsr_4>
 f50:	a9 f7       	brne	.-22     	; 0xf3c <.L_hex>
 f52:	ea cf       	rjmp	.-44     	; 0xf28 <.L_eos>

00000f54 <.L_lsr_4>:
 f54:	b4 e0       	ldi	r27, 0x04	; 4

00000f56 <.L_lsr>:
 f56:	a6 95       	lsr	r26
 f58:	97 95       	ror	r25
 f5a:	87 95       	ror	r24
 f5c:	77 95       	ror	r23
 f5e:	67 95       	ror	r22
 f60:	ba 95       	dec	r27
 f62:	c9 f7       	brne	.-14     	; 0xf56 <.L_lsr>
 f64:	00 97       	sbiw	r24, 0x00	; 0
 f66:	61 05       	cpc	r22, r1
 f68:	71 05       	cpc	r23, r1
 f6a:	08 95       	ret

00000f6c <.L_div_add>:
 f6c:	9b 01       	movw	r18, r22
 f6e:	ac 01       	movw	r20, r24
 f70:	0a 2e       	mov	r0, r26

00000f72 <.L7^B1>:
 f72:	06 94       	lsr	r0
 f74:	57 95       	ror	r21
 f76:	47 95       	ror	r20
 f78:	37 95       	ror	r19
 f7a:	27 95       	ror	r18
 f7c:	ba 95       	dec	r27
 f7e:	c9 f7       	brne	.-14     	; 0xf72 <.L7^B1>
 f80:	62 0f       	add	r22, r18
 f82:	73 1f       	adc	r23, r19
 f84:	84 1f       	adc	r24, r20
 f86:	95 1f       	adc	r25, r21
 f88:	a0 1d       	adc	r26, r0
 f8a:	08 95       	ret

00000f8c <__prologue_saves__>:
 f8c:	2f 92       	push	r2
 f8e:	3f 92       	push	r3
 f90:	4f 92       	push	r4
 f92:	5f 92       	push	r5
 f94:	6f 92       	push	r6
 f96:	7f 92       	push	r7
 f98:	8f 92       	push	r8
 f9a:	9f 92       	push	r9
 f9c:	af 92       	push	r10
 f9e:	bf 92       	push	r11
 fa0:	cf 92       	push	r12
 fa2:	df 92       	push	r13
 fa4:	ef 92       	push	r14
 fa6:	ff 92       	push	r15
 fa8:	0f 93       	push	r16
 faa:	1f 93       	push	r17
 fac:	cf 93       	push	r28
 fae:	df 93       	push	r29
 fb0:	cd b7       	in	r28, 0x3d	; 61
 fb2:	de b7       	in	r29, 0x3e	; 62
 fb4:	ca 1b       	sub	r28, r26
 fb6:	db 0b       	sbc	r29, r27
 fb8:	0f b6       	in	r0, 0x3f	; 63
 fba:	f8 94       	cli
 fbc:	de bf       	out	0x3e, r29	; 62
 fbe:	0f be       	out	0x3f, r0	; 63
 fc0:	cd bf       	out	0x3d, r28	; 61
 fc2:	09 94       	ijmp

00000fc4 <__epilogue_restores__>:
 fc4:	2a 88       	ldd	r2, Y+18	; 0x12
 fc6:	39 88       	ldd	r3, Y+17	; 0x11
 fc8:	48 88       	ldd	r4, Y+16	; 0x10
 fca:	5f 84       	ldd	r5, Y+15	; 0x0f
 fcc:	6e 84       	ldd	r6, Y+14	; 0x0e
 fce:	7d 84       	ldd	r7, Y+13	; 0x0d
 fd0:	8c 84       	ldd	r8, Y+12	; 0x0c
 fd2:	9b 84       	ldd	r9, Y+11	; 0x0b
 fd4:	aa 84       	ldd	r10, Y+10	; 0x0a
 fd6:	b9 84       	ldd	r11, Y+9	; 0x09
 fd8:	c8 84       	ldd	r12, Y+8	; 0x08
 fda:	df 80       	ldd	r13, Y+7	; 0x07
 fdc:	ee 80       	ldd	r14, Y+6	; 0x06
 fde:	fd 80       	ldd	r15, Y+5	; 0x05
 fe0:	0c 81       	ldd	r16, Y+4	; 0x04
 fe2:	1b 81       	ldd	r17, Y+3	; 0x03
 fe4:	aa 81       	ldd	r26, Y+2	; 0x02
 fe6:	b9 81       	ldd	r27, Y+1	; 0x01
 fe8:	ce 0f       	add	r28, r30
 fea:	d1 1d       	adc	r29, r1
 fec:	0f b6       	in	r0, 0x3f	; 63
 fee:	f8 94       	cli
 ff0:	de bf       	out	0x3e, r29	; 62
 ff2:	0f be       	out	0x3f, r0	; 63
 ff4:	cd bf       	out	0x3d, r28	; 61
 ff6:	ed 01       	movw	r28, r26
 ff8:	08 95       	ret

00000ffa <_exit>:
 ffa:	f8 94       	cli

00000ffc <__stop_program>:
 ffc:	ff cf       	rjmp	.-2      	; 0xffc <__stop_program>
