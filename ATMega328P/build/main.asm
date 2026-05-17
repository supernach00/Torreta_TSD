
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   8:	0c 94 b4 02 	jmp	0x568	; 0x568 <__vector_2>
   c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  14:	0c 94 a7 02 	jmp	0x54e	; 0x54e <__vector_5>
  18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  1c:	0c 94 9d 02 	jmp	0x53a	; 0x53a <__vector_7>
  20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  38:	0c 94 be 02 	jmp	0x57c	; 0x57c <__vector_14>
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
  7a:	e4 eb       	ldi	r30, 0xB4	; 180
  7c:	ff e0       	ldi	r31, 0x0F	; 15
  7e:	02 c0       	rjmp	.+4      	; 0x84 <.Lname22+0x1>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a6 30       	cpi	r26, 0x06	; 6
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <.Lname21+0x4>
  8a:	0e 94 c8 02 	call	0x590	; 0x590 <main>
  8e:	0c 94 d8 07 	jmp	0xfb0	; 0xfb0 <_exit>

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
  e6:	0e 94 f4 03 	call	0x7e8	; 0x7e8 <__floatunsisf>
  ea:	26 ef       	ldi	r18, 0xF6	; 246
  ec:	38 e2       	ldi	r19, 0x28	; 40
  ee:	4c e9       	ldi	r20, 0x9C	; 156
  f0:	50 e4       	ldi	r21, 0x40	; 64
  f2:	0e 94 82 04 	call	0x904	; 0x904 <__mulsf3>
  f6:	0e 94 c5 03 	call	0x78a	; 0x78a <__fixunssfsi>
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
 1ba:	0e 94 f4 03 	call	0x7e8	; 0x7e8 <__floatunsisf>
 1be:	20 e0       	ldi	r18, 0x00	; 0
 1c0:	30 e0       	ldi	r19, 0x00	; 0
 1c2:	4a e7       	ldi	r20, 0x7A	; 122
 1c4:	56 e4       	ldi	r21, 0x46	; 70
 1c6:	0e 94 82 04 	call	0x904	; 0x904 <__mulsf3>
 1ca:	20 e0       	ldi	r18, 0x00	; 0
 1cc:	30 e4       	ldi	r19, 0x40	; 64
 1ce:	4c e9       	ldi	r20, 0x9C	; 156
 1d0:	55 e4       	ldi	r21, 0x45	; 69
 1d2:	0e 94 53 03 	call	0x6a6	; 0x6a6 <__divsf3>
 1d6:	20 e0       	ldi	r18, 0x00	; 0
 1d8:	30 e0       	ldi	r19, 0x00	; 0
 1da:	40 e8       	ldi	r20, 0x80	; 128
 1dc:	5f e3       	ldi	r21, 0x3F	; 63
 1de:	0e 94 e6 02 	call	0x5cc	; 0x5cc <__subsf3>
 1e2:	0e 94 c5 03 	call	0x78a	; 0x78a <__fixunssfsi>
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
 27e:	0e 94 d2 02 	call	0x5a4	; 0x5a4 <__udivmodhi4>
 282:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
 286:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>
 28a:	08 95       	ret

0000028c <USART_init>:
 28c:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7f80c5>
 290:	87 e6       	ldi	r24, 0x67	; 103
 292:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7f80c4>
 296:	88 e1       	ldi	r24, 0x18	; 24
 298:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7f80c1>
 29c:	86 e0       	ldi	r24, 0x06	; 6
 29e:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7f80c2>
 2a2:	08 95       	ret

000002a4 <USART_send>:
 2a4:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 2a8:	95 ff       	sbrs	r25, 5
 2aa:	fc cf       	rjmp	.-8      	; 0x2a4 <USART_send>
 2ac:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 2b0:	08 95       	ret

000002b2 <USART_receive>:
 2b2:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7f80c0>
 2b6:	87 ff       	sbrs	r24, 7
 2b8:	fc cf       	rjmp	.-8      	; 0x2b2 <USART_receive>
 2ba:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7f80c6>
 2be:	08 95       	ret

000002c0 <USART_putstring>:
 2c0:	cf 93       	push	r28
 2c2:	df 93       	push	r29
 2c4:	ec 01       	movw	r28, r24

000002c6 <.L10>:
 2c6:	89 91       	ld	r24, Y+
 2c8:	81 11       	cpse	r24, r1
 2ca:	03 c0       	rjmp	.+6      	; 0x2d2 <.L11>
 2cc:	df 91       	pop	r29
 2ce:	cf 91       	pop	r28
 2d0:	08 95       	ret

000002d2 <.L11>:
 2d2:	0e 94 52 01 	call	0x2a4	; 0x2a4 <USART_send>
 2d6:	f7 cf       	rjmp	.-18     	; 0x2c6 <.L10>

000002d8 <USART_put_uint16>:
 2d8:	0f 93       	push	r16
 2da:	1f 93       	push	r17
 2dc:	cf 93       	push	r28
 2de:	df 93       	push	r29
 2e0:	cd b7       	in	r28, 0x3d	; 61
 2e2:	de b7       	in	r29, 0x3e	; 62
 2e4:	2a 97       	sbiw	r28, 0x0a	; 10
 2e6:	0f b6       	in	r0, 0x3f	; 63
 2e8:	f8 94       	cli
 2ea:	de bf       	out	0x3e, r29	; 62
 2ec:	0f be       	out	0x3f, r0	; 63
 2ee:	cd bf       	out	0x3d, r28	; 61
 2f0:	9f 93       	push	r25
 2f2:	8f 93       	push	r24
 2f4:	80 e0       	ldi	r24, 0x00	; 0
 2f6:	91 e0       	ldi	r25, 0x01	; 1
 2f8:	9f 93       	push	r25
 2fa:	8f 93       	push	r24
 2fc:	8e 01       	movw	r16, r28
 2fe:	0f 5f       	subi	r16, 0xFF	; 255
 300:	1f 4f       	sbci	r17, 0xFF	; 255
 302:	1f 93       	push	r17
 304:	0f 93       	push	r16
 306:	0e 94 ef 04 	call	0x9de	; 0x9de <sprintf>
 30a:	c8 01       	movw	r24, r16
 30c:	0e 94 60 01 	call	0x2c0	; 0x2c0 <USART_putstring>
 310:	83 e0       	ldi	r24, 0x03	; 3
 312:	91 e0       	ldi	r25, 0x01	; 1
 314:	0e 94 60 01 	call	0x2c0	; 0x2c0 <USART_putstring>
 318:	2f ef       	ldi	r18, 0xFF	; 255
 31a:	89 e6       	ldi	r24, 0x69	; 105
 31c:	98 e1       	ldi	r25, 0x18	; 24

0000031e <.L1^B1>:
 31e:	21 50       	subi	r18, 0x01	; 1
 320:	80 40       	sbci	r24, 0x00	; 0
 322:	90 40       	sbci	r25, 0x00	; 0
 324:	e1 f7       	brne	.-8      	; 0x31e <.L1^B1>
 326:	00 c0       	rjmp	.+0      	; 0x328 <L0^A>

00000328 <L0^A>:
 328:	00 00       	nop
 32a:	0f 90       	pop	r0
 32c:	0f 90       	pop	r0
 32e:	0f 90       	pop	r0
 330:	0f 90       	pop	r0
 332:	0f 90       	pop	r0
 334:	0f 90       	pop	r0
 336:	2a 96       	adiw	r28, 0x0a	; 10
 338:	0f b6       	in	r0, 0x3f	; 63
 33a:	f8 94       	cli
 33c:	de bf       	out	0x3e, r29	; 62
 33e:	0f be       	out	0x3f, r0	; 63
 340:	cd bf       	out	0x3d, r28	; 61
 342:	df 91       	pop	r29
 344:	cf 91       	pop	r28
 346:	1f 91       	pop	r17
 348:	0f 91       	pop	r16
 34a:	08 95       	ret

0000034c <I2C_init>:
 34c:	10 92 b9 00 	sts	0x00B9, r1	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
 350:	88 e4       	ldi	r24, 0x48	; 72
 352:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
 356:	84 e0       	ldi	r24, 0x04	; 4
 358:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 35c:	87 b1       	in	r24, 0x07	; 7
 35e:	8f 7c       	andi	r24, 0xCF	; 207
 360:	87 b9       	out	0x07, r24	; 7
 362:	08 95       	ret

00000364 <I2C_start>:
 364:	84 ea       	ldi	r24, 0xA4	; 164
 366:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000036a <.L3>:
 36a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 36e:	87 ff       	sbrs	r24, 7
 370:	fc cf       	rjmp	.-8      	; 0x36a <.L3>
 372:	08 95       	ret

00000374 <I2C_write_address>:
 374:	88 0f       	add	r24, r24
 376:	86 2b       	or	r24, r22
 378:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 37c:	84 e8       	ldi	r24, 0x84	; 132
 37e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000382 <.L6>:
 382:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 386:	87 ff       	sbrs	r24, 7
 388:	fc cf       	rjmp	.-8      	; 0x382 <.L6>
 38a:	08 95       	ret

0000038c <I2C_write>:
 38c:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 390:	84 e8       	ldi	r24, 0x84	; 132
 392:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000396 <.L9>:
 396:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 39a:	87 ff       	sbrs	r24, 7
 39c:	fc cf       	rjmp	.-8      	; 0x396 <.L9>
 39e:	08 95       	ret

000003a0 <I2C_read_ACK>:
 3a0:	84 ec       	ldi	r24, 0xC4	; 196
 3a2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003a6 <.L12>:
 3a6:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3aa:	87 ff       	sbrs	r24, 7
 3ac:	fc cf       	rjmp	.-8      	; 0x3a6 <.L12>
 3ae:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 3b2:	08 95       	ret

000003b4 <I2C_read_NACK>:
 3b4:	84 e8       	ldi	r24, 0x84	; 132
 3b6:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003ba <.L15>:
 3ba:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3be:	87 ff       	sbrs	r24, 7
 3c0:	fc cf       	rjmp	.-8      	; 0x3ba <.L15>
 3c2:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
 3c6:	08 95       	ret

000003c8 <I2C_stop>:
 3c8:	84 e9       	ldi	r24, 0x94	; 148
 3ca:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
 3ce:	08 95       	ret

000003d0 <NUN_init>:
 3d0:	08 95       	ret

000003d2 <NUN_read>:
 3d2:	21 e0       	ldi	r18, 0x01	; 1
 3d4:	fc 01       	movw	r30, r24
 3d6:	20 83       	st	Z, r18
 3d8:	08 95       	ret

000003da <SERVO_set_angulo>:
 3da:	9c 01       	movw	r18, r24
 3dc:	cb 01       	movw	r24, r22
 3de:	89 2b       	or	r24, r25
 3e0:	a1 f0       	breq	.+40     	; 0x40a <.L2>
 3e2:	61 30       	cpi	r22, 0x01	; 1
 3e4:	71 05       	cpc	r23, r1
 3e6:	09 f5       	brne	.+66     	; 0x42a <.L1>
 3e8:	44 e1       	ldi	r20, 0x14	; 20
 3ea:	42 9f       	mul	r20, r18
 3ec:	c0 01       	movw	r24, r0
 3ee:	43 9f       	mul	r20, r19
 3f0:	90 0d       	add	r25, r0
 3f2:	11 24       	eor	r1, r1
 3f4:	69 e0       	ldi	r22, 0x09	; 9
 3f6:	70 e0       	ldi	r23, 0x00	; 0
 3f8:	0e 94 d2 02 	call	0x5a4	; 0x5a4 <__udivmodhi4>
 3fc:	69 51       	subi	r22, 0x19	; 25
 3fe:	7c 4f       	sbci	r23, 0xFC	; 252
 400:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
 404:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
 408:	08 95       	ret

0000040a <.L2>:
 40a:	44 e1       	ldi	r20, 0x14	; 20
 40c:	42 9f       	mul	r20, r18
 40e:	c0 01       	movw	r24, r0
 410:	43 9f       	mul	r20, r19
 412:	90 0d       	add	r25, r0
 414:	11 24       	eor	r1, r1
 416:	69 e0       	ldi	r22, 0x09	; 9
 418:	70 e0       	ldi	r23, 0x00	; 0
 41a:	0e 94 d2 02 	call	0x5a4	; 0x5a4 <__udivmodhi4>
 41e:	69 51       	subi	r22, 0x19	; 25
 420:	7c 4f       	sbci	r23, 0xFC	; 252
 422:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
 426:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

0000042a <.L1>:
 42a:	08 95       	ret

0000042c <SERVO_test>:
 42c:	ef 92       	push	r14
 42e:	ff 92       	push	r15
 430:	0f 93       	push	r16
 432:	1f 93       	push	r17
 434:	cf 93       	push	r28
 436:	df 93       	push	r29
 438:	8c 01       	movw	r16, r24
 43a:	d6 2f       	mov	r29, r22
 43c:	c7 2f       	mov	r28, r23
 43e:	bc 01       	movw	r22, r24
 440:	80 e0       	ldi	r24, 0x00	; 0
 442:	90 e0       	ldi	r25, 0x00	; 0
 444:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 448:	6d 2f       	mov	r22, r29
 44a:	7c 2f       	mov	r23, r28
 44c:	80 e0       	ldi	r24, 0x00	; 0
 44e:	90 e0       	ldi	r25, 0x00	; 0
 450:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 454:	2f ef       	ldi	r18, 0xFF	; 255
 456:	83 ed       	ldi	r24, 0xD3	; 211
 458:	90 e3       	ldi	r25, 0x30	; 48

0000045a <.L1^B1>:
 45a:	21 50       	subi	r18, 0x01	; 1
 45c:	80 40       	sbci	r24, 0x00	; 0
 45e:	90 40       	sbci	r25, 0x00	; 0
 460:	e1 f7       	brne	.-8      	; 0x45a <.L1^B1>
 462:	00 c0       	rjmp	.+0      	; 0x464 <L0^A>

00000464 <L0^A>:
 464:	00 00       	nop
 466:	e1 2c       	mov	r14, r1
 468:	f1 2c       	mov	r15, r1

0000046a <.L5>:
 46a:	b8 01       	movw	r22, r16
 46c:	c7 01       	movw	r24, r14
 46e:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 472:	6d 2f       	mov	r22, r29
 474:	7c 2f       	mov	r23, r28
 476:	c7 01       	movw	r24, r14
 478:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 47c:	8f e9       	ldi	r24, 0x9F	; 159
 47e:	9f e0       	ldi	r25, 0x0F	; 15

00000480 <.L1^B2>:
 480:	01 97       	sbiw	r24, 0x01	; 1
 482:	f1 f7       	brne	.-4      	; 0x480 <.L1^B2>
 484:	00 c0       	rjmp	.+0      	; 0x486 <L0^A>

00000486 <L0^A>:
 486:	00 00       	nop
 488:	9f ef       	ldi	r25, 0xFF	; 255
 48a:	e9 1a       	sub	r14, r25
 48c:	f9 0a       	sbc	r15, r25
 48e:	29 e0       	ldi	r18, 0x09	; 9
 490:	e2 16       	cp	r14, r18
 492:	27 e0       	ldi	r18, 0x07	; 7
 494:	f2 06       	cpc	r15, r18
 496:	49 f7       	brne	.-46     	; 0x46a <.L5>
 498:	88 e0       	ldi	r24, 0x08	; 8
 49a:	e8 2e       	mov	r14, r24
 49c:	87 e0       	ldi	r24, 0x07	; 7
 49e:	f8 2e       	mov	r15, r24

000004a0 <.L6>:
 4a0:	b8 01       	movw	r22, r16
 4a2:	c7 01       	movw	r24, r14
 4a4:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4a8:	6d 2f       	mov	r22, r29
 4aa:	7c 2f       	mov	r23, r28
 4ac:	c7 01       	movw	r24, r14
 4ae:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4b2:	8f e9       	ldi	r24, 0x9F	; 159
 4b4:	9f e0       	ldi	r25, 0x0F	; 15

000004b6 <.L1^B3>:
 4b6:	01 97       	sbiw	r24, 0x01	; 1
 4b8:	f1 f7       	brne	.-4      	; 0x4b6 <.L1^B3>
 4ba:	00 c0       	rjmp	.+0      	; 0x4bc <L0^A>

000004bc <L0^A>:
 4bc:	00 00       	nop
 4be:	91 e0       	ldi	r25, 0x01	; 1
 4c0:	e9 1a       	sub	r14, r25
 4c2:	f1 08       	sbc	r15, r1
 4c4:	68 f7       	brcc	.-38     	; 0x4a0 <.L6>
 4c6:	b8 01       	movw	r22, r16
 4c8:	80 e0       	ldi	r24, 0x00	; 0
 4ca:	90 e0       	ldi	r25, 0x00	; 0
 4cc:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4d0:	6d 2f       	mov	r22, r29
 4d2:	7c 2f       	mov	r23, r28
 4d4:	80 e0       	ldi	r24, 0x00	; 0
 4d6:	90 e0       	ldi	r25, 0x00	; 0
 4d8:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4dc:	b8 01       	movw	r22, r16
 4de:	88 e0       	ldi	r24, 0x08	; 8
 4e0:	97 e0       	ldi	r25, 0x07	; 7
 4e2:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4e6:	6d 2f       	mov	r22, r29
 4e8:	7c 2f       	mov	r23, r28
 4ea:	88 e0       	ldi	r24, 0x08	; 8
 4ec:	97 e0       	ldi	r25, 0x07	; 7
 4ee:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 4f2:	8f ef       	ldi	r24, 0xFF	; 255
 4f4:	93 ed       	ldi	r25, 0xD3	; 211
 4f6:	20 e3       	ldi	r18, 0x30	; 48

000004f8 <.L1^B4>:
 4f8:	81 50       	subi	r24, 0x01	; 1
 4fa:	90 40       	sbci	r25, 0x00	; 0
 4fc:	20 40       	sbci	r18, 0x00	; 0
 4fe:	e1 f7       	brne	.-8      	; 0x4f8 <.L1^B4>
 500:	00 c0       	rjmp	.+0      	; 0x502 <L0^A>

00000502 <L0^A>:
 502:	00 00       	nop
 504:	b8 01       	movw	r22, r16
 506:	80 e0       	ldi	r24, 0x00	; 0
 508:	90 e0       	ldi	r25, 0x00	; 0
 50a:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 50e:	6d 2f       	mov	r22, r29
 510:	7c 2f       	mov	r23, r28
 512:	80 e0       	ldi	r24, 0x00	; 0
 514:	90 e0       	ldi	r25, 0x00	; 0
 516:	0e 94 ed 01 	call	0x3da	; 0x3da <SERVO_set_angulo>
 51a:	8f ef       	ldi	r24, 0xFF	; 255
 51c:	93 ed       	ldi	r25, 0xD3	; 211
 51e:	20 e3       	ldi	r18, 0x30	; 48

00000520 <.L1^B5>:
 520:	81 50       	subi	r24, 0x01	; 1
 522:	90 40       	sbci	r25, 0x00	; 0
 524:	20 40       	sbci	r18, 0x00	; 0
 526:	e1 f7       	brne	.-8      	; 0x520 <.L1^B5>
 528:	00 c0       	rjmp	.+0      	; 0x52a <L0^A>

0000052a <L0^A>:
 52a:	00 00       	nop
 52c:	df 91       	pop	r29
 52e:	cf 91       	pop	r28
 530:	1f 91       	pop	r17
 532:	0f 91       	pop	r16
 534:	ff 90       	pop	r15
 536:	ef 90       	pop	r14
 538:	08 95       	ret

0000053a <__vector_7>:
 53a:	1f 92       	push	r1
 53c:	0f 92       	push	r0
 53e:	0f b6       	in	r0, 0x3f	; 63
 540:	0f 92       	push	r0
 542:	11 24       	eor	r1, r1
 544:	0f 90       	pop	r0
 546:	0f be       	out	0x3f, r0	; 63
 548:	0f 90       	pop	r0
 54a:	1f 90       	pop	r1
 54c:	18 95       	reti

0000054e <__vector_5>:
 54e:	1f 92       	push	r1
 550:	0f 92       	push	r0
 552:	0f b6       	in	r0, 0x3f	; 63
 554:	0f 92       	push	r0
 556:	11 24       	eor	r1, r1
 558:	8f 93       	push	r24
 55a:	89 b1       	in	r24, 0x09	; 9
 55c:	8f 91       	pop	r24
 55e:	0f 90       	pop	r0
 560:	0f be       	out	0x3f, r0	; 63
 562:	0f 90       	pop	r0
 564:	1f 90       	pop	r1
 566:	18 95       	reti

00000568 <__vector_2>:
 568:	1f 92       	push	r1
 56a:	0f 92       	push	r0
 56c:	0f b6       	in	r0, 0x3f	; 63
 56e:	0f 92       	push	r0
 570:	11 24       	eor	r1, r1
 572:	0f 90       	pop	r0
 574:	0f be       	out	0x3f, r0	; 63
 576:	0f 90       	pop	r0
 578:	1f 90       	pop	r1
 57a:	18 95       	reti

0000057c <__vector_14>:
 57c:	1f 92       	push	r1
 57e:	0f 92       	push	r0
 580:	0f b6       	in	r0, 0x3f	; 63
 582:	0f 92       	push	r0
 584:	11 24       	eor	r1, r1
 586:	0f 90       	pop	r0
 588:	0f be       	out	0x3f, r0	; 63
 58a:	0f 90       	pop	r0
 58c:	1f 90       	pop	r1
 58e:	18 95       	reti

00000590 <main>:
 590:	84 e1       	ldi	r24, 0x14	; 20
 592:	90 e0       	ldi	r25, 0x00	; 0
 594:	0e 94 15 01 	call	0x22a	; 0x22a <PWM_TIM1_init>
 598:	0e 94 a6 01 	call	0x34c	; 0x34c <I2C_init>
 59c:	0e 94 b2 01 	call	0x364	; 0x364 <I2C_start>
 5a0:	78 94       	sei

000005a2 <.L6>:
 5a2:	ff cf       	rjmp	.-2      	; 0x5a2 <.L6>

000005a4 <__udivmodhi4>:
 5a4:	aa 1b       	sub	r26, r26
 5a6:	bb 1b       	sub	r27, r27
 5a8:	51 e1       	ldi	r21, 0x11	; 17
 5aa:	07 c0       	rjmp	.+14     	; 0x5ba <__udivmodhi4_ep>

000005ac <__udivmodhi4_loop>:
 5ac:	aa 1f       	adc	r26, r26
 5ae:	bb 1f       	adc	r27, r27
 5b0:	a6 17       	cp	r26, r22
 5b2:	b7 07       	cpc	r27, r23
 5b4:	10 f0       	brcs	.+4      	; 0x5ba <__udivmodhi4_ep>
 5b6:	a6 1b       	sub	r26, r22
 5b8:	b7 0b       	sbc	r27, r23

000005ba <__udivmodhi4_ep>:
 5ba:	88 1f       	adc	r24, r24
 5bc:	99 1f       	adc	r25, r25
 5be:	5a 95       	dec	r21
 5c0:	a9 f7       	brne	.-22     	; 0x5ac <__udivmodhi4_loop>
 5c2:	80 95       	com	r24
 5c4:	90 95       	com	r25
 5c6:	bc 01       	movw	r22, r24
 5c8:	cd 01       	movw	r24, r26
 5ca:	08 95       	ret

000005cc <__subsf3>:
 5cc:	50 58       	subi	r21, 0x80	; 128

000005ce <__addsf3>:
 5ce:	bb 27       	eor	r27, r27
 5d0:	aa 27       	eor	r26, r26
 5d2:	0e 94 fe 02 	call	0x5fc	; 0x5fc <__addsf3x>
 5d6:	0c 94 48 04 	jmp	0x890	; 0x890 <__fp_round>

000005da <.L0^B1>:
 5da:	0e 94 3a 04 	call	0x874	; 0x874 <__fp_pscA>
 5de:	38 f0       	brcs	.+14     	; 0x5ee <.L_nan>
 5e0:	0e 94 41 04 	call	0x882	; 0x882 <__fp_pscB>
 5e4:	20 f0       	brcs	.+8      	; 0x5ee <.L_nan>
 5e6:	39 f4       	brne	.+14     	; 0x5f6 <.L_inf>
 5e8:	9f 3f       	cpi	r25, 0xFF	; 255
 5ea:	19 f4       	brne	.+6      	; 0x5f2 <.L_infB>
 5ec:	26 f4       	brtc	.+8      	; 0x5f6 <.L_inf>

000005ee <.L_nan>:
 5ee:	0c 94 37 04 	jmp	0x86e	; 0x86e <__fp_nan>

000005f2 <.L_infB>:
 5f2:	0e f4       	brtc	.+2      	; 0x5f6 <.L_inf>
 5f4:	e0 95       	com	r30

000005f6 <.L_inf>:
 5f6:	e7 fb       	bst	r30, 7
 5f8:	0c 94 31 04 	jmp	0x862	; 0x862 <__fp_inf>

000005fc <__addsf3x>:
 5fc:	e9 2f       	mov	r30, r25
 5fe:	0e 94 59 04 	call	0x8b2	; 0x8b2 <__fp_split3>
 602:	58 f3       	brcs	.-42     	; 0x5da <.L0^B1>
 604:	ba 17       	cp	r27, r26
 606:	62 07       	cpc	r22, r18
 608:	73 07       	cpc	r23, r19
 60a:	84 07       	cpc	r24, r20
 60c:	95 07       	cpc	r25, r21
 60e:	20 f0       	brcs	.+8      	; 0x618 <.L2^B1>
 610:	79 f4       	brne	.+30     	; 0x630 <.L4^B1>
 612:	a6 f5       	brtc	.+104    	; 0x67c <.L_add>
 614:	0c 94 7b 04 	jmp	0x8f6	; 0x8f6 <__fp_zero>

00000618 <.L2^B1>:
 618:	0e f4       	brtc	.+2      	; 0x61c <.L3^B1>
 61a:	e0 95       	com	r30

0000061c <.L3^B1>:
 61c:	0b 2e       	mov	r0, r27
 61e:	ba 2f       	mov	r27, r26
 620:	a0 2d       	mov	r26, r0
 622:	0b 01       	movw	r0, r22
 624:	b9 01       	movw	r22, r18
 626:	90 01       	movw	r18, r0
 628:	0c 01       	movw	r0, r24
 62a:	ca 01       	movw	r24, r20
 62c:	a0 01       	movw	r20, r0
 62e:	11 24       	eor	r1, r1

00000630 <.L4^B1>:
 630:	ff 27       	eor	r31, r31
 632:	59 1b       	sub	r21, r25

00000634 <.L5^B1>:
 634:	99 f0       	breq	.+38     	; 0x65c <.L7^B1>
 636:	59 3f       	cpi	r21, 0xF9	; 249
 638:	50 f4       	brcc	.+20     	; 0x64e <.L6^B1>
 63a:	50 3e       	cpi	r21, 0xE0	; 224
 63c:	68 f1       	brcs	.+90     	; 0x698 <.L_ret>
 63e:	1a 16       	cp	r1, r26
 640:	f0 40       	sbci	r31, 0x00	; 0
 642:	a2 2f       	mov	r26, r18
 644:	23 2f       	mov	r18, r19
 646:	34 2f       	mov	r19, r20
 648:	44 27       	eor	r20, r20
 64a:	58 5f       	subi	r21, 0xF8	; 248
 64c:	f3 cf       	rjmp	.-26     	; 0x634 <.L5^B1>

0000064e <.L6^B1>:
 64e:	46 95       	lsr	r20
 650:	37 95       	ror	r19
 652:	27 95       	ror	r18
 654:	a7 95       	ror	r26
 656:	f0 40       	sbci	r31, 0x00	; 0
 658:	53 95       	inc	r21
 65a:	c9 f7       	brne	.-14     	; 0x64e <.L6^B1>

0000065c <.L7^B1>:
 65c:	7e f4       	brtc	.+30     	; 0x67c <.L_add>
 65e:	1f 16       	cp	r1, r31
 660:	ba 0b       	sbc	r27, r26
 662:	62 0b       	sbc	r22, r18
 664:	73 0b       	sbc	r23, r19
 666:	84 0b       	sbc	r24, r20
 668:	ba f0       	brmi	.+46     	; 0x698 <.L_ret>

0000066a <.L8^B1>:
 66a:	91 50       	subi	r25, 0x01	; 1
 66c:	a1 f0       	breq	.+40     	; 0x696 <.L9^B1>
 66e:	ff 0f       	add	r31, r31
 670:	bb 1f       	adc	r27, r27
 672:	66 1f       	adc	r22, r22
 674:	77 1f       	adc	r23, r23
 676:	88 1f       	adc	r24, r24
 678:	c2 f7       	brpl	.-16     	; 0x66a <.L8^B1>
 67a:	0e c0       	rjmp	.+28     	; 0x698 <.L_ret>

0000067c <.L_add>:
 67c:	ba 0f       	add	r27, r26
 67e:	62 1f       	adc	r22, r18
 680:	73 1f       	adc	r23, r19
 682:	84 1f       	adc	r24, r20
 684:	48 f4       	brcc	.+18     	; 0x698 <.L_ret>
 686:	87 95       	ror	r24
 688:	77 95       	ror	r23
 68a:	67 95       	ror	r22
 68c:	b7 95       	ror	r27
 68e:	f7 95       	ror	r31
 690:	9e 3f       	cpi	r25, 0xFE	; 254
 692:	08 f0       	brcs	.+2      	; 0x696 <.L9^B1>
 694:	b0 cf       	rjmp	.-160    	; 0x5f6 <.L_inf>

00000696 <.L9^B1>:
 696:	93 95       	inc	r25

00000698 <.L_ret>:
 698:	88 0f       	add	r24, r24
 69a:	08 f0       	brcs	.+2      	; 0x69e <.L1^B1>
 69c:	99 27       	eor	r25, r25

0000069e <.L1^B1>:
 69e:	ee 0f       	add	r30, r30
 6a0:	97 95       	ror	r25
 6a2:	87 95       	ror	r24
 6a4:	08 95       	ret

000006a6 <__divsf3>:
 6a6:	0e 94 67 03 	call	0x6ce	; 0x6ce <__divsf3x>
 6aa:	0c 94 48 04 	jmp	0x890	; 0x890 <__fp_round>

000006ae <.L0^B1>:
 6ae:	0e 94 41 04 	call	0x882	; 0x882 <__fp_pscB>
 6b2:	58 f0       	brcs	.+22     	; 0x6ca <.L_nan>
 6b4:	0e 94 3a 04 	call	0x874	; 0x874 <__fp_pscA>
 6b8:	40 f0       	brcs	.+16     	; 0x6ca <.L_nan>
 6ba:	29 f4       	brne	.+10     	; 0x6c6 <.L_zr>
 6bc:	5f 3f       	cpi	r21, 0xFF	; 255
 6be:	29 f0       	breq	.+10     	; 0x6ca <.L_nan>

000006c0 <.L_inf>:
 6c0:	0c 94 31 04 	jmp	0x862	; 0x862 <__fp_inf>

000006c4 <.L1^B1>:
 6c4:	51 11       	cpse	r21, r1

000006c6 <.L_zr>:
 6c6:	0c 94 7c 04 	jmp	0x8f8	; 0x8f8 <__fp_szero>

000006ca <.L_nan>:
 6ca:	0c 94 37 04 	jmp	0x86e	; 0x86e <__fp_nan>

000006ce <__divsf3x>:
 6ce:	0e 94 59 04 	call	0x8b2	; 0x8b2 <__fp_split3>
 6d2:	68 f3       	brcs	.-38     	; 0x6ae <.L0^B1>

000006d4 <__divsf3_pse>:
 6d4:	99 23       	and	r25, r25
 6d6:	b1 f3       	breq	.-20     	; 0x6c4 <.L1^B1>
 6d8:	55 23       	and	r21, r21
 6da:	91 f3       	breq	.-28     	; 0x6c0 <.L_inf>
 6dc:	95 1b       	sub	r25, r21
 6de:	55 0b       	sbc	r21, r21
 6e0:	bb 27       	eor	r27, r27
 6e2:	aa 27       	eor	r26, r26

000006e4 <.L2^B1>:
 6e4:	62 17       	cp	r22, r18
 6e6:	73 07       	cpc	r23, r19
 6e8:	84 07       	cpc	r24, r20
 6ea:	38 f0       	brcs	.+14     	; 0x6fa <.L3^B1>
 6ec:	9f 5f       	subi	r25, 0xFF	; 255
 6ee:	5f 4f       	sbci	r21, 0xFF	; 255
 6f0:	22 0f       	add	r18, r18
 6f2:	33 1f       	adc	r19, r19
 6f4:	44 1f       	adc	r20, r20
 6f6:	aa 1f       	adc	r26, r26
 6f8:	a9 f3       	breq	.-22     	; 0x6e4 <.L2^B1>

000006fa <.L3^B1>:
 6fa:	35 d0       	rcall	.+106    	; 0x766 <.L_div>
 6fc:	0e 2e       	mov	r0, r30
 6fe:	3a f0       	brmi	.+14     	; 0x70e <.L5^B1>

00000700 <.L4^B1>:
 700:	e0 e8       	ldi	r30, 0x80	; 128
 702:	32 d0       	rcall	.+100    	; 0x768 <.L_div1>
 704:	91 50       	subi	r25, 0x01	; 1
 706:	50 40       	sbci	r21, 0x00	; 0
 708:	e6 95       	lsr	r30
 70a:	00 1c       	adc	r0, r0
 70c:	ca f7       	brpl	.-14     	; 0x700 <.L4^B1>

0000070e <.L5^B1>:
 70e:	2b d0       	rcall	.+86     	; 0x766 <.L_div>
 710:	fe 2f       	mov	r31, r30
 712:	29 d0       	rcall	.+82     	; 0x766 <.L_div>
 714:	66 0f       	add	r22, r22
 716:	77 1f       	adc	r23, r23
 718:	88 1f       	adc	r24, r24
 71a:	bb 1f       	adc	r27, r27
 71c:	26 17       	cp	r18, r22
 71e:	37 07       	cpc	r19, r23
 720:	48 07       	cpc	r20, r24
 722:	ab 07       	cpc	r26, r27
 724:	b0 e8       	ldi	r27, 0x80	; 128
 726:	09 f0       	breq	.+2      	; 0x72a <.L4^B2>
 728:	bb 0b       	sbc	r27, r27

0000072a <.L4^B2>:
 72a:	80 2d       	mov	r24, r0
 72c:	bf 01       	movw	r22, r30
 72e:	ff 27       	eor	r31, r31
 730:	93 58       	subi	r25, 0x83	; 131
 732:	5f 4f       	sbci	r21, 0xFF	; 255
 734:	3a f0       	brmi	.+14     	; 0x744 <.L13^B1>
 736:	9e 3f       	cpi	r25, 0xFE	; 254
 738:	51 05       	cpc	r21, r1
 73a:	78 f0       	brcs	.+30     	; 0x75a <.L15^B1>
 73c:	0c 94 31 04 	jmp	0x862	; 0x862 <__fp_inf>

00000740 <.L12^B1>:
 740:	0c 94 7c 04 	jmp	0x8f8	; 0x8f8 <__fp_szero>

00000744 <.L13^B1>:
 744:	5f 3f       	cpi	r21, 0xFF	; 255
 746:	e4 f3       	brlt	.-8      	; 0x740 <.L12^B1>
 748:	98 3e       	cpi	r25, 0xE8	; 232
 74a:	d4 f3       	brlt	.-12     	; 0x740 <.L12^B1>

0000074c <.L14^B1>:
 74c:	86 95       	lsr	r24
 74e:	77 95       	ror	r23
 750:	67 95       	ror	r22
 752:	b7 95       	ror	r27
 754:	f7 95       	ror	r31
 756:	9f 5f       	subi	r25, 0xFF	; 255
 758:	c9 f7       	brne	.-14     	; 0x74c <.L14^B1>

0000075a <.L15^B1>:
 75a:	88 0f       	add	r24, r24
 75c:	91 1d       	adc	r25, r1
 75e:	96 95       	lsr	r25
 760:	87 95       	ror	r24
 762:	97 f9       	bld	r25, 7
 764:	08 95       	ret

00000766 <.L_div>:
 766:	e1 e0       	ldi	r30, 0x01	; 1

00000768 <.L_div1>:
 768:	66 0f       	add	r22, r22
 76a:	77 1f       	adc	r23, r23
 76c:	88 1f       	adc	r24, r24
 76e:	bb 1f       	adc	r27, r27
 770:	62 17       	cp	r22, r18
 772:	73 07       	cpc	r23, r19
 774:	84 07       	cpc	r24, r20
 776:	ba 07       	cpc	r27, r26
 778:	20 f0       	brcs	.+8      	; 0x782 <.L2^B2>
 77a:	62 1b       	sub	r22, r18
 77c:	73 0b       	sbc	r23, r19
 77e:	84 0b       	sbc	r24, r20
 780:	ba 0b       	sbc	r27, r26

00000782 <.L2^B2>:
 782:	ee 1f       	adc	r30, r30
 784:	88 f7       	brcc	.-30     	; 0x768 <.L_div1>
 786:	e0 95       	com	r30
 788:	08 95       	ret

0000078a <__fixunssfsi>:
 78a:	0e 94 61 04 	call	0x8c2	; 0x8c2 <__fp_splitA>
 78e:	88 f0       	brcs	.+34     	; 0x7b2 <.L_err>
 790:	9f 57       	subi	r25, 0x7F	; 127
 792:	98 f0       	brcs	.+38     	; 0x7ba <.L_zr>
 794:	b9 2f       	mov	r27, r25
 796:	99 27       	eor	r25, r25
 798:	b7 51       	subi	r27, 0x17	; 23
 79a:	b0 f0       	brcs	.+44     	; 0x7c8 <.L4^B1>
 79c:	e1 f0       	breq	.+56     	; 0x7d6 <.L_sign>

0000079e <.L1^B1>:
 79e:	66 0f       	add	r22, r22
 7a0:	77 1f       	adc	r23, r23
 7a2:	88 1f       	adc	r24, r24
 7a4:	99 1f       	adc	r25, r25
 7a6:	1a f0       	brmi	.+6      	; 0x7ae <.L2^B1>
 7a8:	ba 95       	dec	r27
 7aa:	c9 f7       	brne	.-14     	; 0x79e <.L1^B1>
 7ac:	14 c0       	rjmp	.+40     	; 0x7d6 <.L_sign>

000007ae <.L2^B1>:
 7ae:	b1 30       	cpi	r27, 0x01	; 1
 7b0:	91 f0       	breq	.+36     	; 0x7d6 <.L_sign>

000007b2 <.L_err>:
 7b2:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <__fp_zero>
 7b6:	b1 e0       	ldi	r27, 0x01	; 1
 7b8:	08 95       	ret

000007ba <.L_zr>:
 7ba:	0c 94 7b 04 	jmp	0x8f6	; 0x8f6 <__fp_zero>

000007be <.L3^B1>:
 7be:	67 2f       	mov	r22, r23
 7c0:	78 2f       	mov	r23, r24
 7c2:	88 27       	eor	r24, r24
 7c4:	b8 5f       	subi	r27, 0xF8	; 248
 7c6:	39 f0       	breq	.+14     	; 0x7d6 <.L_sign>

000007c8 <.L4^B1>:
 7c8:	b9 3f       	cpi	r27, 0xF9	; 249
 7ca:	cc f3       	brlt	.-14     	; 0x7be <.L3^B1>

000007cc <.L5^B1>:
 7cc:	86 95       	lsr	r24
 7ce:	77 95       	ror	r23
 7d0:	67 95       	ror	r22
 7d2:	b3 95       	inc	r27
 7d4:	d9 f7       	brne	.-10     	; 0x7cc <.L5^B1>

000007d6 <.L_sign>:
 7d6:	3e f4       	brtc	.+14     	; 0x7e6 <.L6^B1>
 7d8:	90 95       	com	r25
 7da:	80 95       	com	r24
 7dc:	70 95       	com	r23
 7de:	61 95       	neg	r22
 7e0:	7f 4f       	sbci	r23, 0xFF	; 255
 7e2:	8f 4f       	sbci	r24, 0xFF	; 255
 7e4:	9f 4f       	sbci	r25, 0xFF	; 255

000007e6 <.L6^B1>:
 7e6:	08 95       	ret

000007e8 <__floatunsisf>:
 7e8:	e8 94       	clt
 7ea:	09 c0       	rjmp	.+18     	; 0x7fe <.L1^B1>

000007ec <__floatsisf>:
 7ec:	97 fb       	bst	r25, 7
 7ee:	3e f4       	brtc	.+14     	; 0x7fe <.L1^B1>
 7f0:	90 95       	com	r25
 7f2:	80 95       	com	r24
 7f4:	70 95       	com	r23
 7f6:	61 95       	neg	r22
 7f8:	7f 4f       	sbci	r23, 0xFF	; 255
 7fa:	8f 4f       	sbci	r24, 0xFF	; 255
 7fc:	9f 4f       	sbci	r25, 0xFF	; 255

000007fe <.L1^B1>:
 7fe:	99 23       	and	r25, r25
 800:	a9 f0       	breq	.+42     	; 0x82c <.L4^B1>
 802:	f9 2f       	mov	r31, r25
 804:	96 e9       	ldi	r25, 0x96	; 150
 806:	bb 27       	eor	r27, r27

00000808 <.L2^B1>:
 808:	93 95       	inc	r25
 80a:	f6 95       	lsr	r31
 80c:	87 95       	ror	r24
 80e:	77 95       	ror	r23
 810:	67 95       	ror	r22
 812:	b7 95       	ror	r27
 814:	f1 11       	cpse	r31, r1
 816:	f8 cf       	rjmp	.-16     	; 0x808 <.L2^B1>
 818:	fa f4       	brpl	.+62     	; 0x858 <.L_pack>
 81a:	bb 0f       	add	r27, r27
 81c:	11 f4       	brne	.+4      	; 0x822 <.L3^B1>
 81e:	60 ff       	sbrs	r22, 0
 820:	1b c0       	rjmp	.+54     	; 0x858 <.L_pack>

00000822 <.L3^B1>:
 822:	6f 5f       	subi	r22, 0xFF	; 255
 824:	7f 4f       	sbci	r23, 0xFF	; 255
 826:	8f 4f       	sbci	r24, 0xFF	; 255
 828:	9f 4f       	sbci	r25, 0xFF	; 255
 82a:	16 c0       	rjmp	.+44     	; 0x858 <.L_pack>

0000082c <.L4^B1>:
 82c:	88 23       	and	r24, r24
 82e:	11 f0       	breq	.+4      	; 0x834 <.L5^B1>
 830:	96 e9       	ldi	r25, 0x96	; 150
 832:	11 c0       	rjmp	.+34     	; 0x856 <.L8^B1>

00000834 <.L5^B1>:
 834:	77 23       	and	r23, r23
 836:	21 f0       	breq	.+8      	; 0x840 <.L6^B1>
 838:	9e e8       	ldi	r25, 0x8E	; 142
 83a:	87 2f       	mov	r24, r23
 83c:	76 2f       	mov	r23, r22
 83e:	05 c0       	rjmp	.+10     	; 0x84a <.L7^B1>

00000840 <.L6^B1>:
 840:	66 23       	and	r22, r22
 842:	71 f0       	breq	.+28     	; 0x860 <.L9^B1>
 844:	96 e8       	ldi	r25, 0x86	; 134
 846:	86 2f       	mov	r24, r22
 848:	70 e0       	ldi	r23, 0x00	; 0

0000084a <.L7^B1>:
 84a:	60 e0       	ldi	r22, 0x00	; 0
 84c:	2a f0       	brmi	.+10     	; 0x858 <.L_pack>

0000084e <.L10^B1>:
 84e:	9a 95       	dec	r25
 850:	66 0f       	add	r22, r22
 852:	77 1f       	adc	r23, r23
 854:	88 1f       	adc	r24, r24

00000856 <.L8^B1>:
 856:	da f7       	brpl	.-10     	; 0x84e <.L10^B1>

00000858 <.L_pack>:
 858:	88 0f       	add	r24, r24
 85a:	96 95       	lsr	r25
 85c:	87 95       	ror	r24
 85e:	97 f9       	bld	r25, 7

00000860 <.L9^B1>:
 860:	08 95       	ret

00000862 <__fp_inf>:
 862:	97 f9       	bld	r25, 7
 864:	9f 67       	ori	r25, 0x7F	; 127
 866:	80 e8       	ldi	r24, 0x80	; 128
 868:	70 e0       	ldi	r23, 0x00	; 0
 86a:	60 e0       	ldi	r22, 0x00	; 0
 86c:	08 95       	ret

0000086e <__fp_nan>:
 86e:	9f ef       	ldi	r25, 0xFF	; 255
 870:	80 ec       	ldi	r24, 0xC0	; 192
 872:	08 95       	ret

00000874 <__fp_pscA>:
 874:	00 24       	eor	r0, r0
 876:	0a 94       	dec	r0
 878:	16 16       	cp	r1, r22
 87a:	17 06       	cpc	r1, r23
 87c:	18 06       	cpc	r1, r24
 87e:	09 06       	cpc	r0, r25
 880:	08 95       	ret

00000882 <__fp_pscB>:
 882:	00 24       	eor	r0, r0
 884:	0a 94       	dec	r0
 886:	12 16       	cp	r1, r18
 888:	13 06       	cpc	r1, r19
 88a:	14 06       	cpc	r1, r20
 88c:	05 06       	cpc	r0, r21
 88e:	08 95       	ret

00000890 <__fp_round>:
 890:	09 2e       	mov	r0, r25
 892:	03 94       	inc	r0
 894:	00 0c       	add	r0, r0
 896:	11 f4       	brne	.+4      	; 0x89c <.L1^B1>
 898:	88 23       	and	r24, r24
 89a:	52 f0       	brmi	.+20     	; 0x8b0 <.L3^B1>

0000089c <.L1^B1>:
 89c:	bb 0f       	add	r27, r27
 89e:	40 f4       	brcc	.+16     	; 0x8b0 <.L3^B1>
 8a0:	bf 2b       	or	r27, r31
 8a2:	11 f4       	brne	.+4      	; 0x8a8 <.L2^B1>
 8a4:	60 ff       	sbrs	r22, 0
 8a6:	04 c0       	rjmp	.+8      	; 0x8b0 <.L3^B1>

000008a8 <.L2^B1>:
 8a8:	6f 5f       	subi	r22, 0xFF	; 255
 8aa:	7f 4f       	sbci	r23, 0xFF	; 255
 8ac:	8f 4f       	sbci	r24, 0xFF	; 255
 8ae:	9f 4f       	sbci	r25, 0xFF	; 255

000008b0 <.L3^B1>:
 8b0:	08 95       	ret

000008b2 <__fp_split3>:
 8b2:	57 fd       	sbrc	r21, 7
 8b4:	90 58       	subi	r25, 0x80	; 128
 8b6:	44 0f       	add	r20, r20
 8b8:	55 1f       	adc	r21, r21
 8ba:	59 f0       	breq	.+22     	; 0x8d2 <.L4^B1>
 8bc:	5f 3f       	cpi	r21, 0xFF	; 255
 8be:	71 f0       	breq	.+28     	; 0x8dc <.L5^B1>

000008c0 <.L1^B1>:
 8c0:	47 95       	ror	r20

000008c2 <__fp_splitA>:
 8c2:	88 0f       	add	r24, r24
 8c4:	97 fb       	bst	r25, 7
 8c6:	99 1f       	adc	r25, r25
 8c8:	61 f0       	breq	.+24     	; 0x8e2 <.L6^B1>
 8ca:	9f 3f       	cpi	r25, 0xFF	; 255
 8cc:	79 f0       	breq	.+30     	; 0x8ec <.L7^B1>

000008ce <.L3^B1>:
 8ce:	87 95       	ror	r24
 8d0:	08 95       	ret

000008d2 <.L4^B1>:
 8d2:	12 16       	cp	r1, r18
 8d4:	13 06       	cpc	r1, r19
 8d6:	14 06       	cpc	r1, r20
 8d8:	55 1f       	adc	r21, r21
 8da:	f2 cf       	rjmp	.-28     	; 0x8c0 <.L1^B1>

000008dc <.L5^B1>:
 8dc:	46 95       	lsr	r20
 8de:	f1 df       	rcall	.-30     	; 0x8c2 <__fp_splitA>
 8e0:	08 c0       	rjmp	.+16     	; 0x8f2 <.L8^B1>

000008e2 <.L6^B1>:
 8e2:	16 16       	cp	r1, r22
 8e4:	17 06       	cpc	r1, r23
 8e6:	18 06       	cpc	r1, r24
 8e8:	99 1f       	adc	r25, r25
 8ea:	f1 cf       	rjmp	.-30     	; 0x8ce <.L3^B1>

000008ec <.L7^B1>:
 8ec:	86 95       	lsr	r24
 8ee:	71 05       	cpc	r23, r1
 8f0:	61 05       	cpc	r22, r1

000008f2 <.L8^B1>:
 8f2:	08 94       	sec
 8f4:	08 95       	ret

000008f6 <__fp_zero>:
 8f6:	e8 94       	clt

000008f8 <__fp_szero>:
 8f8:	bb 27       	eor	r27, r27
 8fa:	66 27       	eor	r22, r22
 8fc:	77 27       	eor	r23, r23
 8fe:	cb 01       	movw	r24, r22
 900:	97 f9       	bld	r25, 7
 902:	08 95       	ret

00000904 <__mulsf3>:
 904:	0e 94 95 04 	call	0x92a	; 0x92a <__mulsf3x>
 908:	0c 94 48 04 	jmp	0x890	; 0x890 <__fp_round>

0000090c <.L0^B1>:
 90c:	0e 94 3a 04 	call	0x874	; 0x874 <__fp_pscA>
 910:	38 f0       	brcs	.+14     	; 0x920 <.L1^B1>
 912:	0e 94 41 04 	call	0x882	; 0x882 <__fp_pscB>
 916:	20 f0       	brcs	.+8      	; 0x920 <.L1^B1>
 918:	95 23       	and	r25, r21
 91a:	11 f0       	breq	.+4      	; 0x920 <.L1^B1>
 91c:	0c 94 31 04 	jmp	0x862	; 0x862 <__fp_inf>

00000920 <.L1^B1>:
 920:	0c 94 37 04 	jmp	0x86e	; 0x86e <__fp_nan>

00000924 <.L2^B1>:
 924:	11 24       	eor	r1, r1
 926:	0c 94 7c 04 	jmp	0x8f8	; 0x8f8 <__fp_szero>

0000092a <__mulsf3x>:
 92a:	0e 94 59 04 	call	0x8b2	; 0x8b2 <__fp_split3>
 92e:	70 f3       	brcs	.-36     	; 0x90c <.L0^B1>

00000930 <__mulsf3_pse>:
 930:	95 9f       	mul	r25, r21
 932:	c1 f3       	breq	.-16     	; 0x924 <.L2^B1>
 934:	95 0f       	add	r25, r21
 936:	50 e0       	ldi	r21, 0x00	; 0
 938:	55 1f       	adc	r21, r21
 93a:	62 9f       	mul	r22, r18
 93c:	f0 01       	movw	r30, r0
 93e:	72 9f       	mul	r23, r18
 940:	bb 27       	eor	r27, r27
 942:	f0 0d       	add	r31, r0
 944:	b1 1d       	adc	r27, r1
 946:	63 9f       	mul	r22, r19
 948:	aa 27       	eor	r26, r26
 94a:	f0 0d       	add	r31, r0
 94c:	b1 1d       	adc	r27, r1
 94e:	aa 1f       	adc	r26, r26
 950:	64 9f       	mul	r22, r20
 952:	66 27       	eor	r22, r22
 954:	b0 0d       	add	r27, r0
 956:	a1 1d       	adc	r26, r1
 958:	66 1f       	adc	r22, r22
 95a:	82 9f       	mul	r24, r18
 95c:	22 27       	eor	r18, r18
 95e:	b0 0d       	add	r27, r0
 960:	a1 1d       	adc	r26, r1
 962:	62 1f       	adc	r22, r18
 964:	73 9f       	mul	r23, r19
 966:	b0 0d       	add	r27, r0
 968:	a1 1d       	adc	r26, r1
 96a:	62 1f       	adc	r22, r18
 96c:	83 9f       	mul	r24, r19
 96e:	a0 0d       	add	r26, r0
 970:	61 1d       	adc	r22, r1
 972:	22 1f       	adc	r18, r18
 974:	74 9f       	mul	r23, r20
 976:	33 27       	eor	r19, r19
 978:	a0 0d       	add	r26, r0
 97a:	61 1d       	adc	r22, r1
 97c:	23 1f       	adc	r18, r19
 97e:	84 9f       	mul	r24, r20
 980:	60 0d       	add	r22, r0
 982:	21 1d       	adc	r18, r1
 984:	82 2f       	mov	r24, r18
 986:	76 2f       	mov	r23, r22
 988:	6a 2f       	mov	r22, r26
 98a:	11 24       	eor	r1, r1
 98c:	9f 57       	subi	r25, 0x7F	; 127
 98e:	50 40       	sbci	r21, 0x00	; 0
 990:	9a f0       	brmi	.+38     	; 0x9b8 <.L13^B1>
 992:	f1 f0       	breq	.+60     	; 0x9d0 <.L15^B1>

00000994 <.L10^B1>:
 994:	88 23       	and	r24, r24
 996:	4a f0       	brmi	.+18     	; 0x9aa <.L11^B1>
 998:	ee 0f       	add	r30, r30
 99a:	ff 1f       	adc	r31, r31
 99c:	bb 1f       	adc	r27, r27
 99e:	66 1f       	adc	r22, r22
 9a0:	77 1f       	adc	r23, r23
 9a2:	88 1f       	adc	r24, r24
 9a4:	91 50       	subi	r25, 0x01	; 1
 9a6:	50 40       	sbci	r21, 0x00	; 0
 9a8:	a9 f7       	brne	.-22     	; 0x994 <.L10^B1>

000009aa <.L11^B1>:
 9aa:	9e 3f       	cpi	r25, 0xFE	; 254
 9ac:	51 05       	cpc	r21, r1
 9ae:	80 f0       	brcs	.+32     	; 0x9d0 <.L15^B1>
 9b0:	0c 94 31 04 	jmp	0x862	; 0x862 <__fp_inf>

000009b4 <.L12^B1>:
 9b4:	0c 94 7c 04 	jmp	0x8f8	; 0x8f8 <__fp_szero>

000009b8 <.L13^B1>:
 9b8:	5f 3f       	cpi	r21, 0xFF	; 255
 9ba:	e4 f3       	brlt	.-8      	; 0x9b4 <.L12^B1>
 9bc:	98 3e       	cpi	r25, 0xE8	; 232
 9be:	d4 f3       	brlt	.-12     	; 0x9b4 <.L12^B1>

000009c0 <.L14^B1>:
 9c0:	86 95       	lsr	r24
 9c2:	77 95       	ror	r23
 9c4:	67 95       	ror	r22
 9c6:	b7 95       	ror	r27
 9c8:	f7 95       	ror	r31
 9ca:	e7 95       	ror	r30
 9cc:	9f 5f       	subi	r25, 0xFF	; 255
 9ce:	c1 f7       	brne	.-16     	; 0x9c0 <.L14^B1>

000009d0 <.L15^B1>:
 9d0:	fe 2b       	or	r31, r30
 9d2:	88 0f       	add	r24, r24
 9d4:	91 1d       	adc	r25, r1
 9d6:	96 95       	lsr	r25
 9d8:	87 95       	ror	r24
 9da:	97 f9       	bld	r25, 7
 9dc:	08 95       	ret

000009de <sprintf>:
 9de:	ae e0       	ldi	r26, 0x0E	; 14
 9e0:	b0 e0       	ldi	r27, 0x00	; 0
 9e2:	e5 ef       	ldi	r30, 0xF5	; 245
 9e4:	f4 e0       	ldi	r31, 0x04	; 4
 9e6:	0c 94 af 07 	jmp	0xf5e	; 0xf5e <__prologue_saves__+0x1c>

000009ea <.L1^B1>:
 9ea:	0d 89       	ldd	r16, Y+21	; 0x15
 9ec:	1e 89       	ldd	r17, Y+22	; 0x16
 9ee:	86 e0       	ldi	r24, 0x06	; 6
 9f0:	8c 83       	std	Y+4, r24	; 0x04
 9f2:	1a 83       	std	Y+2, r17	; 0x02
 9f4:	09 83       	std	Y+1, r16	; 0x01
 9f6:	8f ef       	ldi	r24, 0xFF	; 255
 9f8:	9f e7       	ldi	r25, 0x7F	; 127
 9fa:	9e 83       	std	Y+6, r25	; 0x06
 9fc:	8d 83       	std	Y+5, r24	; 0x05
 9fe:	ae 01       	movw	r20, r28
 a00:	47 5e       	subi	r20, 0xE7	; 231
 a02:	5f 4f       	sbci	r21, 0xFF	; 255
 a04:	6f 89       	ldd	r22, Y+23	; 0x17
 a06:	78 8d       	ldd	r23, Y+24	; 0x18
 a08:	ce 01       	movw	r24, r28
 a0a:	01 96       	adiw	r24, 0x01	; 1
 a0c:	0e 94 12 05 	call	0xa24	; 0xa24 <vfprintf>
 a10:	2f 81       	ldd	r18, Y+7	; 0x07
 a12:	38 85       	ldd	r19, Y+8	; 0x08
 a14:	02 0f       	add	r16, r18
 a16:	13 1f       	adc	r17, r19
 a18:	f8 01       	movw	r30, r16
 a1a:	10 82       	st	Z, r1
 a1c:	2e 96       	adiw	r28, 0x0e	; 14
 a1e:	e4 e0       	ldi	r30, 0x04	; 4
 a20:	0c 94 cb 07 	jmp	0xf96	; 0xf96 <__epilogue_restores__+0x1c>

00000a24 <vfprintf>:
 a24:	ab e0       	ldi	r26, 0x0B	; 11
 a26:	b0 e0       	ldi	r27, 0x00	; 0
 a28:	e8 e1       	ldi	r30, 0x18	; 24
 a2a:	f5 e0       	ldi	r31, 0x05	; 5
 a2c:	0c 94 a4 07 	jmp	0xf48	; 0xf48 <__prologue_saves__+0x6>

00000a30 <.L1^B1>:
 a30:	6c 01       	movw	r12, r24
 a32:	7b 01       	movw	r14, r22
 a34:	8a 01       	movw	r16, r20
 a36:	fc 01       	movw	r30, r24
 a38:	17 82       	std	Z+7, r1	; 0x07
 a3a:	16 82       	std	Z+6, r1	; 0x06
 a3c:	83 81       	ldd	r24, Z+3	; 0x03
 a3e:	81 ff       	sbrs	r24, 1
 a40:	d9 c1       	rjmp	.+946    	; 0xdf4 <.L81>
 a42:	9a e0       	ldi	r25, 0x0A	; 10
 a44:	59 2e       	mov	r5, r25

00000a46 <.L3>:
 a46:	f6 01       	movw	r30, r12
 a48:	23 81       	ldd	r18, Z+3	; 0x03
 a4a:	f7 01       	movw	r30, r14
 a4c:	23 fd       	sbrc	r18, 3
 a4e:	85 91       	lpm	r24, Z+
 a50:	23 ff       	sbrs	r18, 3
 a52:	81 91       	ld	r24, Z+
 a54:	7f 01       	movw	r14, r30
 a56:	81 15       	cp	r24, r1
 a58:	09 f4       	brne	.+2      	; 0xa5c <L0^A+0x2>

00000a5a <L0^A>:
 a5a:	1f c1       	rjmp	.+574    	; 0xc9a <.L4>
 a5c:	85 32       	cpi	r24, 0x25	; 37
 a5e:	39 f4       	brne	.+14     	; 0xa6e <.L5>
 a60:	23 fd       	sbrc	r18, 3
 a62:	95 91       	lpm	r25, Z+
 a64:	23 ff       	sbrs	r18, 3
 a66:	91 91       	ld	r25, Z+
 a68:	7f 01       	movw	r14, r30
 a6a:	95 32       	cpi	r25, 0x25	; 37
 a6c:	29 f4       	brne	.+10     	; 0xa78 <.L82>

00000a6e <.L5>:
 a6e:	b6 01       	movw	r22, r12
 a70:	90 e0       	ldi	r25, 0x00	; 0
 a72:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 a76:	e7 cf       	rjmp	.-50     	; 0xa46 <.L3>

00000a78 <.L82>:
 a78:	30 e0       	ldi	r19, 0x00	; 0
 a7a:	91 2c       	mov	r9, r1
 a7c:	61 2c       	mov	r6, r1
 a7e:	71 2c       	mov	r7, r1

00000a80 <.L6>:
 a80:	f0 e2       	ldi	r31, 0x20	; 32
 a82:	7f 16       	cp	r7, r31
 a84:	40 f5       	brcc	.+80     	; 0xad6 <.L8>
 a86:	9b 32       	cpi	r25, 0x2B	; 43
 a88:	d9 f0       	breq	.+54     	; 0xac0 <.L9>
 a8a:	58 f4       	brcc	.+22     	; 0xaa2 <.L10>
 a8c:	90 32       	cpi	r25, 0x20	; 32
 a8e:	d1 f0       	breq	.+52     	; 0xac4 <.L11>
 a90:	93 32       	cpi	r25, 0x23	; 35
 a92:	f1 f0       	breq	.+60     	; 0xad0 <.L12>

00000a94 <.L13>:
 a94:	9e 32       	cpi	r25, 0x2E	; 46
 a96:	99 f5       	brne	.+102    	; 0xafe <.L19>
 a98:	76 fc       	sbrc	r7, 6
 a9a:	ff c0       	rjmp	.+510    	; 0xc9a <.L4>
 a9c:	68 94       	set
 a9e:	76 f8       	bld	r7, 6
 aa0:	06 c0       	rjmp	.+12     	; 0xaae <.L16>

00000aa2 <.L10>:
 aa2:	9d 32       	cpi	r25, 0x2D	; 45
 aa4:	91 f0       	breq	.+36     	; 0xaca <.L14>
 aa6:	90 33       	cpi	r25, 0x30	; 48
 aa8:	c1 f4       	brne	.+48     	; 0xada <.L15>
 aaa:	68 94       	set
 aac:	70 f8       	bld	r7, 0

00000aae <.L16>:
 aae:	f7 01       	movw	r30, r14
 ab0:	23 fd       	sbrc	r18, 3
 ab2:	95 91       	lpm	r25, Z+
 ab4:	23 ff       	sbrs	r18, 3
 ab6:	91 91       	ld	r25, Z+
 ab8:	7f 01       	movw	r14, r30
 aba:	91 11       	cpse	r25, r1
 abc:	e1 cf       	rjmp	.-62     	; 0xa80 <.L6>
 abe:	29 c0       	rjmp	.+82     	; 0xb12 <.L17>

00000ac0 <.L9>:
 ac0:	68 94       	set
 ac2:	71 f8       	bld	r7, 1

00000ac4 <.L11>:
 ac4:	68 94       	set
 ac6:	72 f8       	bld	r7, 2
 ac8:	f2 cf       	rjmp	.-28     	; 0xaae <.L16>

00000aca <.L14>:
 aca:	68 94       	set
 acc:	73 f8       	bld	r7, 3
 ace:	ef cf       	rjmp	.-34     	; 0xaae <.L16>

00000ad0 <.L12>:
 ad0:	68 94       	set
 ad2:	74 f8       	bld	r7, 4
 ad4:	ec cf       	rjmp	.-40     	; 0xaae <.L16>

00000ad6 <.L8>:
 ad6:	77 fc       	sbrc	r7, 7
 ad8:	1c c0       	rjmp	.+56     	; 0xb12 <.L17>

00000ada <.L15>:
 ada:	80 ed       	ldi	r24, 0xD0	; 208
 adc:	89 0f       	add	r24, r25
 ade:	8a 30       	cpi	r24, 0x0A	; 10
 ae0:	c8 f6       	brcc	.-78     	; 0xa94 <.L13>
 ae2:	76 fe       	sbrs	r7, 6
 ae4:	05 c0       	rjmp	.+10     	; 0xaf0 <.L18>
 ae6:	95 9c       	mul	r9, r5
 ae8:	80 0d       	add	r24, r0
 aea:	11 24       	eor	r1, r1
 aec:	98 2e       	mov	r9, r24
 aee:	df cf       	rjmp	.-66     	; 0xaae <.L16>

00000af0 <.L18>:
 af0:	65 9c       	mul	r6, r5
 af2:	80 0d       	add	r24, r0
 af4:	11 24       	eor	r1, r1
 af6:	68 2e       	mov	r6, r24
 af8:	68 94       	set
 afa:	75 f8       	bld	r7, 5
 afc:	d8 cf       	rjmp	.-80     	; 0xaae <.L16>

00000afe <.L19>:
 afe:	9c 36       	cpi	r25, 0x6C	; 108
 b00:	19 f4       	brne	.+6      	; 0xb08 <.L20>
 b02:	68 94       	set
 b04:	77 f8       	bld	r7, 7
 b06:	d3 cf       	rjmp	.-90     	; 0xaae <.L16>

00000b08 <.L20>:
 b08:	9c 34       	cpi	r25, 0x4C	; 76
 b0a:	09 f4       	brne	.+2      	; 0xb0e <L0^A+0x2>

00000b0c <L0^A>:
 b0c:	4b c0       	rjmp	.+150    	; 0xba4 <.L83>
 b0e:	98 36       	cpi	r25, 0x68	; 104
 b10:	71 f2       	breq	.-100    	; 0xaae <.L16>

00000b12 <.L17>:
 b12:	89 2f       	mov	r24, r25
 b14:	8f 7d       	andi	r24, 0xDF	; 223
 b16:	85 54       	subi	r24, 0x45	; 69
 b18:	83 30       	cpi	r24, 0x03	; 3
 b1a:	08 f4       	brcc	.+2      	; 0xb1e <L0^A+0x2>

00000b1c <L0^A>:
 b1c:	45 c0       	rjmp	.+138    	; 0xba8 <.L21>
 b1e:	93 36       	cpi	r25, 0x63	; 99
 b20:	09 f4       	brne	.+2      	; 0xb24 <L0^A+0x2>

00000b22 <L0^A>:
 b22:	66 c0       	rjmp	.+204    	; 0xbf0 <.L22>
 b24:	93 37       	cpi	r25, 0x73	; 115
 b26:	09 f4       	brne	.+2      	; 0xb2a <L0^A+0x2>

00000b28 <L0^A>:
 b28:	69 c0       	rjmp	.+210    	; 0xbfc <.L23>
 b2a:	93 35       	cpi	r25, 0x53	; 83
 b2c:	09 f4       	brne	.+2      	; 0xb30 <L0^A+0x2>

00000b2e <L0^A>:
 b2e:	75 c0       	rjmp	.+234    	; 0xc1a <.L24>
 b30:	94 36       	cpi	r25, 0x64	; 100
 b32:	19 f0       	breq	.+6      	; 0xb3a <.L39>
 b34:	99 36       	cpi	r25, 0x69	; 105
 b36:	09 f0       	breq	.+2      	; 0xb3a <.L39>

00000b38 <L0^A>:
 b38:	9f c0       	rjmp	.+318    	; 0xc78 <.L40>

00000b3a <.L39>:
 b3a:	f8 01       	movw	r30, r16
 b3c:	77 fe       	sbrs	r7, 7
 b3e:	95 c0       	rjmp	.+298    	; 0xc6a <.L41>
 b40:	61 91       	ld	r22, Z+
 b42:	71 91       	ld	r23, Z+
 b44:	81 91       	ld	r24, Z+
 b46:	91 91       	ld	r25, Z+

00000b48 <.L128>:
 b48:	8f 01       	movw	r16, r30
 b4a:	27 2d       	mov	r18, r7
 b4c:	2f 76       	andi	r18, 0x6F	; 111
 b4e:	82 2e       	mov	r8, r18
 b50:	97 ff       	sbrs	r25, 7
 b52:	09 c0       	rjmp	.+18     	; 0xb66 <.L43>
 b54:	90 95       	com	r25
 b56:	80 95       	com	r24
 b58:	70 95       	com	r23
 b5a:	61 95       	neg	r22
 b5c:	7f 4f       	sbci	r23, 0xFF	; 255
 b5e:	8f 4f       	sbci	r24, 0xFF	; 255
 b60:	9f 4f       	sbci	r25, 0xFF	; 255
 b62:	68 94       	set
 b64:	87 f8       	bld	r8, 7

00000b66 <.L43>:
 b66:	2a e0       	ldi	r18, 0x0A	; 10
 b68:	30 e0       	ldi	r19, 0x00	; 0
 b6a:	ae 01       	movw	r20, r28
 b6c:	4f 5f       	subi	r20, 0xFF	; 255
 b6e:	5f 4f       	sbci	r21, 0xFF	; 255
 b70:	5a 01       	movw	r10, r20
 b72:	0e 94 43 07 	call	0xe86	; 0xe86 <__ultoa_invert>
 b76:	8a 19       	sub	r24, r10
 b78:	a8 2e       	mov	r10, r24

00000b7a <.L44>:
 b7a:	86 fe       	sbrs	r8, 6
 b7c:	c4 c0       	rjmp	.+392    	; 0xd06 <.L54>
 b7e:	88 2d       	mov	r24, r8
 b80:	8e 7f       	andi	r24, 0xFE	; 254
 b82:	a9 14       	cp	r10, r9
 b84:	08 f0       	brcs	.+2      	; 0xb88 <L0^A+0x2>

00000b86 <L0^A>:
 b86:	be c0       	rjmp	.+380    	; 0xd04 <.L89>
 b88:	84 fe       	sbrs	r8, 4
 b8a:	11 c1       	rjmp	.+546    	; 0xdae <.L90>
 b8c:	82 fc       	sbrc	r8, 2
 b8e:	05 c1       	rjmp	.+522    	; 0xd9a <.L91>
 b90:	f8 2d       	mov	r31, r8
 b92:	fe 7e       	andi	r31, 0xEE	; 238
 b94:	8f 2e       	mov	r8, r31
 b96:	b9 2c       	mov	r11, r9

00000b98 <.L55>:
 b98:	88 2d       	mov	r24, r8
 b9a:	86 78       	andi	r24, 0x86	; 134
 b9c:	81 15       	cp	r24, r1
 b9e:	09 f4       	brne	.+2      	; 0xba2 <L0^A+0x2>

00000ba0 <L0^A>:
 ba0:	bf c0       	rjmp	.+382    	; 0xd20 <.L58>
 ba2:	00 c1       	rjmp	.+512    	; 0xda4 <.L130>

00000ba4 <.L83>:
 ba4:	31 e0       	ldi	r19, 0x01	; 1
 ba6:	83 cf       	rjmp	.-250    	; 0xaae <.L16>

00000ba8 <.L21>:
 ba8:	31 15       	cp	r19, r1
 baa:	f9 f0       	breq	.+62     	; 0xbea <.L26>
 bac:	08 5f       	subi	r16, 0xF8	; 248
 bae:	1f 4f       	sbci	r17, 0xFF	; 255

00000bb0 <.L27>:
 bb0:	8f e3       	ldi	r24, 0x3F	; 63
 bb2:	89 83       	std	Y+1, r24	; 0x01

00000bb4 <.L127>:
 bb4:	88 24       	eor	r8, r8
 bb6:	83 94       	inc	r8
 bb8:	91 2c       	mov	r9, r1
 bba:	ae 01       	movw	r20, r28
 bbc:	4f 5f       	subi	r20, 0xFF	; 255
 bbe:	5f 4f       	sbci	r21, 0xFF	; 255
 bc0:	5a 01       	movw	r10, r20

00000bc2 <.L28>:
 bc2:	e8 94       	clt
 bc4:	77 f8       	bld	r7, 7

00000bc6 <.L30>:
 bc6:	73 fc       	sbrc	r7, 3
 bc8:	03 c0       	rjmp	.+6      	; 0xbd0 <.L33>

00000bca <.L32>:
 bca:	86 14       	cp	r8, r6
 bcc:	91 04       	cpc	r9, r1
 bce:	b0 f1       	brcs	.+108    	; 0xc3c <.L34>

00000bd0 <.L33>:
 bd0:	81 14       	cp	r8, r1
 bd2:	91 04       	cpc	r9, r1
 bd4:	d1 f5       	brne	.+116    	; 0xc4a <.L37>

00000bd6 <.L38>:
 bd6:	61 14       	cp	r6, r1
 bd8:	09 f4       	brne	.+2      	; 0xbdc <L0^A+0x2>

00000bda <L0^A>:
 bda:	35 cf       	rjmp	.-406    	; 0xa46 <.L3>
 bdc:	b6 01       	movw	r22, r12
 bde:	80 e2       	ldi	r24, 0x20	; 32
 be0:	90 e0       	ldi	r25, 0x00	; 0
 be2:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 be6:	6a 94       	dec	r6
 be8:	f6 cf       	rjmp	.-20     	; 0xbd6 <.L38>

00000bea <.L26>:
 bea:	0c 5f       	subi	r16, 0xFC	; 252
 bec:	1f 4f       	sbci	r17, 0xFF	; 255
 bee:	e0 cf       	rjmp	.-64     	; 0xbb0 <.L27>

00000bf0 <.L22>:
 bf0:	f8 01       	movw	r30, r16
 bf2:	80 81       	ld	r24, Z
 bf4:	89 83       	std	Y+1, r24	; 0x01
 bf6:	0e 5f       	subi	r16, 0xFE	; 254
 bf8:	1f 4f       	sbci	r17, 0xFF	; 255
 bfa:	dc cf       	rjmp	.-72     	; 0xbb4 <.L127>

00000bfc <.L23>:
 bfc:	f8 01       	movw	r30, r16
 bfe:	a1 90       	ld	r10, Z+
 c00:	b1 90       	ld	r11, Z+
 c02:	8f 01       	movw	r16, r30
 c04:	69 2d       	mov	r22, r9
 c06:	70 e0       	ldi	r23, 0x00	; 0
 c08:	76 fc       	sbrc	r7, 6
 c0a:	02 c0       	rjmp	.+4      	; 0xc10 <.L29>
 c0c:	6f ef       	ldi	r22, 0xFF	; 255
 c0e:	7f ef       	ldi	r23, 0xFF	; 255

00000c10 <.L29>:
 c10:	c5 01       	movw	r24, r10
 c12:	0e 94 08 07 	call	0xe10	; 0xe10 <strnlen>
 c16:	4c 01       	movw	r8, r24
 c18:	d4 cf       	rjmp	.-88     	; 0xbc2 <.L28>

00000c1a <.L24>:
 c1a:	f8 01       	movw	r30, r16
 c1c:	a1 90       	ld	r10, Z+
 c1e:	b1 90       	ld	r11, Z+
 c20:	8f 01       	movw	r16, r30
 c22:	69 2d       	mov	r22, r9
 c24:	70 e0       	ldi	r23, 0x00	; 0
 c26:	76 fc       	sbrc	r7, 6
 c28:	02 c0       	rjmp	.+4      	; 0xc2e <.L31>
 c2a:	6f ef       	ldi	r22, 0xFF	; 255
 c2c:	7f ef       	ldi	r23, 0xFF	; 255

00000c2e <.L31>:
 c2e:	c5 01       	movw	r24, r10
 c30:	0e 94 fd 06 	call	0xdfa	; 0xdfa <strnlen_P>
 c34:	4c 01       	movw	r8, r24
 c36:	68 94       	set
 c38:	77 f8       	bld	r7, 7
 c3a:	c5 cf       	rjmp	.-118    	; 0xbc6 <.L30>

00000c3c <.L34>:
 c3c:	b6 01       	movw	r22, r12
 c3e:	80 e2       	ldi	r24, 0x20	; 32
 c40:	90 e0       	ldi	r25, 0x00	; 0
 c42:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 c46:	6a 94       	dec	r6
 c48:	c0 cf       	rjmp	.-128    	; 0xbca <.L32>

00000c4a <.L37>:
 c4a:	f5 01       	movw	r30, r10
 c4c:	77 fc       	sbrc	r7, 7
 c4e:	85 91       	lpm	r24, Z+
 c50:	77 fe       	sbrs	r7, 7
 c52:	81 91       	ld	r24, Z+
 c54:	5f 01       	movw	r10, r30
 c56:	b6 01       	movw	r22, r12
 c58:	90 e0       	ldi	r25, 0x00	; 0
 c5a:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 c5e:	61 10       	cpse	r6, r1
 c60:	6a 94       	dec	r6
 c62:	f1 e0       	ldi	r31, 0x01	; 1
 c64:	8f 1a       	sub	r8, r31
 c66:	91 08       	sbc	r9, r1
 c68:	b3 cf       	rjmp	.-154    	; 0xbd0 <.L33>

00000c6a <.L41>:
 c6a:	61 91       	ld	r22, Z+
 c6c:	71 91       	ld	r23, Z+
 c6e:	07 2e       	mov	r0, r23
 c70:	00 0c       	add	r0, r0
 c72:	88 0b       	sbc	r24, r24
 c74:	99 0b       	sbc	r25, r25
 c76:	68 cf       	rjmp	.-304    	; 0xb48 <.L128>

00000c78 <.L40>:
 c78:	87 2c       	mov	r8, r7
 c7a:	e8 94       	clt
 c7c:	84 f8       	bld	r8, 4
 c7e:	2a e0       	ldi	r18, 0x0A	; 10
 c80:	30 e0       	ldi	r19, 0x00	; 0
 c82:	95 37       	cpi	r25, 0x75	; 117
 c84:	39 f1       	breq	.+78     	; 0xcd4 <.L46>
 c86:	57 2d       	mov	r21, r7
 c88:	59 7f       	andi	r21, 0xF9	; 249
 c8a:	85 2e       	mov	r8, r21
 c8c:	90 37       	cpi	r25, 0x70	; 112
 c8e:	99 f0       	breq	.+38     	; 0xcb6 <.L47>
 c90:	58 f4       	brcc	.+22     	; 0xca8 <.L48>
 c92:	98 35       	cpi	r25, 0x58	; 88
 c94:	a9 f0       	breq	.+42     	; 0xcc0 <.L49>
 c96:	9f 36       	cpi	r25, 0x6F	; 111
 c98:	d9 f0       	breq	.+54     	; 0xcd0 <.L86>

00000c9a <.L4>:
 c9a:	f6 01       	movw	r30, r12
 c9c:	86 81       	ldd	r24, Z+6	; 0x06
 c9e:	97 81       	ldd	r25, Z+7	; 0x07

00000ca0 <.L1>:
 ca0:	2b 96       	adiw	r28, 0x0b	; 11
 ca2:	ef e0       	ldi	r30, 0x0F	; 15
 ca4:	0c 94 c0 07 	jmp	0xf80	; 0xf80 <__epilogue_restores__+0x6>

00000ca8 <.L48>:
 ca8:	98 37       	cpi	r25, 0x78	; 120
 caa:	b9 f7       	brne	.-18     	; 0xc9a <.L4>
 cac:	74 fc       	sbrc	r7, 4
 cae:	05 c0       	rjmp	.+10     	; 0xcba <.L51>

00000cb0 <.L87>:
 cb0:	20 e1       	ldi	r18, 0x10	; 16
 cb2:	30 e0       	ldi	r19, 0x00	; 0
 cb4:	0f c0       	rjmp	.+30     	; 0xcd4 <.L46>

00000cb6 <.L47>:
 cb6:	68 94       	set
 cb8:	84 f8       	bld	r8, 4

00000cba <.L51>:
 cba:	68 94       	set
 cbc:	82 f8       	bld	r8, 2
 cbe:	f8 cf       	rjmp	.-16     	; 0xcb0 <.L87>

00000cc0 <.L49>:
 cc0:	74 fe       	sbrs	r7, 4
 cc2:	03 c0       	rjmp	.+6      	; 0xcca <.L88>
 cc4:	87 2d       	mov	r24, r7
 cc6:	86 60       	ori	r24, 0x06	; 6
 cc8:	88 2e       	mov	r8, r24

00000cca <.L88>:
 cca:	20 e1       	ldi	r18, 0x10	; 16
 ccc:	32 e0       	ldi	r19, 0x02	; 2
 cce:	02 c0       	rjmp	.+4      	; 0xcd4 <.L46>

00000cd0 <.L86>:
 cd0:	28 e0       	ldi	r18, 0x08	; 8
 cd2:	30 e0       	ldi	r19, 0x00	; 0

00000cd4 <.L46>:
 cd4:	f8 01       	movw	r30, r16
 cd6:	87 fe       	sbrs	r8, 7
 cd8:	10 c0       	rjmp	.+32     	; 0xcfa <.L52>
 cda:	61 91       	ld	r22, Z+
 cdc:	71 91       	ld	r23, Z+
 cde:	81 91       	ld	r24, Z+
 ce0:	91 91       	ld	r25, Z+

00000ce2 <.L129>:
 ce2:	8f 01       	movw	r16, r30
 ce4:	fe 01       	movw	r30, r28
 ce6:	31 96       	adiw	r30, 0x01	; 1
 ce8:	5f 01       	movw	r10, r30
 cea:	af 01       	movw	r20, r30
 cec:	0e 94 43 07 	call	0xe86	; 0xe86 <__ultoa_invert>
 cf0:	8a 19       	sub	r24, r10
 cf2:	a8 2e       	mov	r10, r24
 cf4:	e8 94       	clt
 cf6:	87 f8       	bld	r8, 7
 cf8:	40 cf       	rjmp	.-384    	; 0xb7a <.L44>

00000cfa <.L52>:
 cfa:	61 91       	ld	r22, Z+
 cfc:	71 91       	ld	r23, Z+
 cfe:	80 e0       	ldi	r24, 0x00	; 0
 d00:	90 e0       	ldi	r25, 0x00	; 0
 d02:	ef cf       	rjmp	.-34     	; 0xce2 <.L129>

00000d04 <.L89>:
 d04:	88 2e       	mov	r8, r24

00000d06 <.L54>:
 d06:	ba 2c       	mov	r11, r10
 d08:	84 fe       	sbrs	r8, 4
 d0a:	46 cf       	rjmp	.-372    	; 0xb98 <.L55>

00000d0c <.L56>:
 d0c:	fe 01       	movw	r30, r28
 d0e:	ea 0d       	add	r30, r10
 d10:	f1 1d       	adc	r31, r1
 d12:	80 81       	ld	r24, Z
 d14:	80 33       	cpi	r24, 0x30	; 48
 d16:	09 f0       	breq	.+2      	; 0xd1a <L0^A+0x2>

00000d18 <L0^A>:
 d18:	43 c0       	rjmp	.+134    	; 0xda0 <.L57>
 d1a:	28 2d       	mov	r18, r8
 d1c:	29 7e       	andi	r18, 0xE9	; 233
 d1e:	82 2e       	mov	r8, r18

00000d20 <.L58>:
 d20:	83 fc       	sbrc	r8, 3
 d22:	0e c0       	rjmp	.+28     	; 0xd40 <.L60>
 d24:	80 fe       	sbrs	r8, 0
 d26:	4f c0       	rjmp	.+158    	; 0xdc6 <.L93>
 d28:	9a 2c       	mov	r9, r10
 d2a:	b6 14       	cp	r11, r6
 d2c:	18 f4       	brcc	.+6      	; 0xd34 <.L80>
 d2e:	96 0c       	add	r9, r6
 d30:	9b 18       	sub	r9, r11
 d32:	b6 2c       	mov	r11, r6

00000d34 <.L80>:
 d34:	86 2d       	mov	r24, r6
 d36:	8b 19       	sub	r24, r11
 d38:	6b 14       	cp	r6, r11
 d3a:	08 f4       	brcc	.+2      	; 0xd3e <.L65>
 d3c:	80 e0       	ldi	r24, 0x00	; 0

00000d3e <.L65>:
 d3e:	b8 0e       	add	r11, r24

00000d40 <.L60>:
 d40:	b6 14       	cp	r11, r6
 d42:	08 f0       	brcs	.+2      	; 0xd46 <L0^A+0x2>

00000d44 <L0^A>:
 d44:	42 c0       	rjmp	.+132    	; 0xdca <.L95>
 d46:	6b 18       	sub	r6, r11

00000d48 <.L67>:
 d48:	84 fe       	sbrs	r8, 4
 d4a:	41 c0       	rjmp	.+130    	; 0xdce <.L68>
 d4c:	b6 01       	movw	r22, r12
 d4e:	80 e3       	ldi	r24, 0x30	; 48
 d50:	90 e0       	ldi	r25, 0x00	; 0
 d52:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 d56:	82 fe       	sbrs	r8, 2
 d58:	09 c0       	rjmp	.+18     	; 0xd6c <.L75>
 d5a:	88 e5       	ldi	r24, 0x58	; 88
 d5c:	90 e0       	ldi	r25, 0x00	; 0
 d5e:	81 fc       	sbrc	r8, 1
 d60:	02 c0       	rjmp	.+4      	; 0xd66 <.L71>
 d62:	88 e7       	ldi	r24, 0x78	; 120
 d64:	90 e0       	ldi	r25, 0x00	; 0

00000d66 <.L71>:
 d66:	b6 01       	movw	r22, r12

00000d68 <.L131>:
 d68:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>

00000d6c <.L75>:
 d6c:	a9 14       	cp	r10, r9
 d6e:	d8 f1       	brcs	.+118    	; 0xde6 <.L76>
 d70:	aa 94       	dec	r10
 d72:	b1 2c       	mov	r11, r1
 d74:	4f ef       	ldi	r20, 0xFF	; 255
 d76:	a4 1a       	sub	r10, r20
 d78:	b4 0a       	sbc	r11, r20
 d7a:	ce 01       	movw	r24, r28
 d7c:	01 96       	adiw	r24, 0x01	; 1
 d7e:	4c 01       	movw	r8, r24
 d80:	a8 0e       	add	r10, r24
 d82:	b9 1e       	adc	r11, r25

00000d84 <.L77>:
 d84:	f5 01       	movw	r30, r10
 d86:	82 91       	ld	r24, -Z
 d88:	5f 01       	movw	r10, r30
 d8a:	b6 01       	movw	r22, r12
 d8c:	90 e0       	ldi	r25, 0x00	; 0
 d8e:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 d92:	8a 14       	cp	r8, r10
 d94:	9b 04       	cpc	r9, r11
 d96:	b1 f7       	brne	.-20     	; 0xd84 <.L77>
 d98:	1e cf       	rjmp	.-452    	; 0xbd6 <.L38>

00000d9a <.L91>:
 d9a:	b9 2c       	mov	r11, r9
 d9c:	88 2e       	mov	r8, r24
 d9e:	b6 cf       	rjmp	.-148    	; 0xd0c <.L56>

00000da0 <.L57>:
 da0:	82 fc       	sbrc	r8, 2
 da2:	02 c0       	rjmp	.+4      	; 0xda8 <.L59>

00000da4 <.L130>:
 da4:	b3 94       	inc	r11
 da6:	bc cf       	rjmp	.-136    	; 0xd20 <.L58>

00000da8 <.L59>:
 da8:	b3 94       	inc	r11
 daa:	b3 94       	inc	r11
 dac:	b9 cf       	rjmp	.-142    	; 0xd20 <.L58>

00000dae <.L90>:
 dae:	b9 2c       	mov	r11, r9
 db0:	88 2e       	mov	r8, r24
 db2:	f2 ce       	rjmp	.-540    	; 0xb98 <.L55>

00000db4 <.L63>:
 db4:	b6 01       	movw	r22, r12
 db6:	80 e2       	ldi	r24, 0x20	; 32
 db8:	90 e0       	ldi	r25, 0x00	; 0
 dba:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 dbe:	73 94       	inc	r7

00000dc0 <.L61>:
 dc0:	76 14       	cp	r7, r6
 dc2:	c0 f3       	brcs	.-16     	; 0xdb4 <.L63>
 dc4:	b7 cf       	rjmp	.-146    	; 0xd34 <.L80>

00000dc6 <.L93>:
 dc6:	7b 2c       	mov	r7, r11
 dc8:	fb cf       	rjmp	.-10     	; 0xdc0 <.L61>

00000dca <.L95>:
 dca:	61 2c       	mov	r6, r1
 dcc:	bd cf       	rjmp	.-134    	; 0xd48 <.L67>

00000dce <.L68>:
 dce:	88 2d       	mov	r24, r8
 dd0:	86 78       	andi	r24, 0x86	; 134
 dd2:	81 15       	cp	r24, r1
 dd4:	59 f2       	breq	.-106    	; 0xd6c <.L75>
 dd6:	80 e2       	ldi	r24, 0x20	; 32
 dd8:	81 fc       	sbrc	r8, 1
 dda:	8b e2       	ldi	r24, 0x2B	; 43
 ddc:	87 fc       	sbrc	r8, 7
 dde:	8d e2       	ldi	r24, 0x2D	; 45
 de0:	b6 01       	movw	r22, r12
 de2:	90 e0       	ldi	r25, 0x00	; 0
 de4:	c1 cf       	rjmp	.-126    	; 0xd68 <.L131>

00000de6 <.L76>:
 de6:	b6 01       	movw	r22, r12
 de8:	80 e3       	ldi	r24, 0x30	; 48
 dea:	90 e0       	ldi	r25, 0x00	; 0
 dec:	0e 94 13 07 	call	0xe26	; 0xe26 <fputc>
 df0:	9a 94       	dec	r9
 df2:	bc cf       	rjmp	.-136    	; 0xd6c <.L75>

00000df4 <.L81>:
 df4:	8f ef       	ldi	r24, 0xFF	; 255
 df6:	9f ef       	ldi	r25, 0xFF	; 255
 df8:	53 cf       	rjmp	.-346    	; 0xca0 <.L1>

00000dfa <strnlen_P>:
 dfa:	fc 01       	movw	r30, r24

00000dfc <.L_strnlen_P_loop>:
 dfc:	05 90       	lpm	r0, Z+
 dfe:	61 50       	subi	r22, 0x01	; 1
 e00:	70 40       	sbci	r23, 0x00	; 0
 e02:	01 10       	cpse	r0, r1
 e04:	d8 f7       	brcc	.-10     	; 0xdfc <.L_strnlen_P_loop>
 e06:	80 95       	com	r24
 e08:	90 95       	com	r25
 e0a:	8e 0f       	add	r24, r30
 e0c:	9f 1f       	adc	r25, r31
 e0e:	08 95       	ret

00000e10 <strnlen>:
 e10:	fc 01       	movw	r30, r24

00000e12 <.L_strnlen_loop>:
 e12:	61 50       	subi	r22, 0x01	; 1
 e14:	70 40       	sbci	r23, 0x00	; 0
 e16:	01 90       	ld	r0, Z+
 e18:	01 10       	cpse	r0, r1
 e1a:	d8 f7       	brcc	.-10     	; 0xe12 <.L_strnlen_loop>
 e1c:	80 95       	com	r24
 e1e:	90 95       	com	r25
 e20:	8e 0f       	add	r24, r30
 e22:	9f 1f       	adc	r25, r31
 e24:	08 95       	ret

00000e26 <fputc>:
 e26:	0f 93       	push	r16
 e28:	1f 93       	push	r17
 e2a:	cf 93       	push	r28
 e2c:	df 93       	push	r29
 e2e:	18 2f       	mov	r17, r24
 e30:	09 2f       	mov	r16, r25
 e32:	eb 01       	movw	r28, r22
 e34:	8b 81       	ldd	r24, Y+3	; 0x03
 e36:	81 fd       	sbrc	r24, 1
 e38:	09 c0       	rjmp	.+18     	; 0xe4c <.L2>

00000e3a <.L7>:
 e3a:	1f ef       	ldi	r17, 0xFF	; 255
 e3c:	0f ef       	ldi	r16, 0xFF	; 255

00000e3e <.L3>:
 e3e:	81 2f       	mov	r24, r17
 e40:	90 2f       	mov	r25, r16
 e42:	df 91       	pop	r29
 e44:	cf 91       	pop	r28
 e46:	1f 91       	pop	r17
 e48:	0f 91       	pop	r16
 e4a:	08 95       	ret

00000e4c <.L2>:
 e4c:	82 ff       	sbrs	r24, 2
 e4e:	14 c0       	rjmp	.+40     	; 0xe78 <.L4>
 e50:	2e 81       	ldd	r18, Y+6	; 0x06
 e52:	3f 81       	ldd	r19, Y+7	; 0x07
 e54:	8c 81       	ldd	r24, Y+4	; 0x04
 e56:	9d 81       	ldd	r25, Y+5	; 0x05
 e58:	28 17       	cp	r18, r24
 e5a:	39 07       	cpc	r19, r25
 e5c:	3c f4       	brge	.+14     	; 0xe6c <.L8>
 e5e:	e8 81       	ld	r30, Y
 e60:	f9 81       	ldd	r31, Y+1	; 0x01
 e62:	cf 01       	movw	r24, r30
 e64:	01 96       	adiw	r24, 0x01	; 1
 e66:	99 83       	std	Y+1, r25	; 0x01
 e68:	88 83       	st	Y, r24
 e6a:	10 83       	st	Z, r17

00000e6c <.L8>:
 e6c:	8e 81       	ldd	r24, Y+6	; 0x06
 e6e:	9f 81       	ldd	r25, Y+7	; 0x07
 e70:	01 96       	adiw	r24, 0x01	; 1
 e72:	9f 83       	std	Y+7, r25	; 0x07
 e74:	8e 83       	std	Y+6, r24	; 0x06
 e76:	e3 cf       	rjmp	.-58     	; 0xe3e <.L3>

00000e78 <.L4>:
 e78:	e8 85       	ldd	r30, Y+8	; 0x08
 e7a:	f9 85       	ldd	r31, Y+9	; 0x09
 e7c:	81 2f       	mov	r24, r17
 e7e:	09 95       	icall
 e80:	89 2b       	or	r24, r25
 e82:	a1 f3       	breq	.-24     	; 0xe6c <.L8>
 e84:	da cf       	rjmp	.-76     	; 0xe3a <.L7>

00000e86 <__ultoa_invert>:
 e86:	fa 01       	movw	r30, r20
 e88:	aa 27       	eor	r26, r26
 e8a:	28 30       	cpi	r18, 0x08	; 8
 e8c:	51 f1       	breq	.+84     	; 0xee2 <.L_oct>
 e8e:	20 31       	cpi	r18, 0x10	; 16
 e90:	81 f1       	breq	.+96     	; 0xef2 <.L_hex>
 e92:	e8 94       	clt

00000e94 <.L_dec_loop>:
 e94:	6f 93       	push	r22
 e96:	6e 7f       	andi	r22, 0xFE	; 254
 e98:	6e 5f       	subi	r22, 0xFE	; 254
 e9a:	7f 4f       	sbci	r23, 0xFF	; 255
 e9c:	8f 4f       	sbci	r24, 0xFF	; 255
 e9e:	9f 4f       	sbci	r25, 0xFF	; 255
 ea0:	af 4f       	sbci	r26, 0xFF	; 255
 ea2:	b1 e0       	ldi	r27, 0x01	; 1
 ea4:	3e d0       	rcall	.+124    	; 0xf22 <.L_div_add>
 ea6:	b4 e0       	ldi	r27, 0x04	; 4
 ea8:	3c d0       	rcall	.+120    	; 0xf22 <.L_div_add>
 eaa:	67 0f       	add	r22, r23
 eac:	78 1f       	adc	r23, r24
 eae:	89 1f       	adc	r24, r25
 eb0:	9a 1f       	adc	r25, r26
 eb2:	a1 1d       	adc	r26, r1
 eb4:	68 0f       	add	r22, r24
 eb6:	79 1f       	adc	r23, r25
 eb8:	8a 1f       	adc	r24, r26
 eba:	91 1d       	adc	r25, r1
 ebc:	a1 1d       	adc	r26, r1
 ebe:	6a 0f       	add	r22, r26
 ec0:	71 1d       	adc	r23, r1
 ec2:	81 1d       	adc	r24, r1
 ec4:	91 1d       	adc	r25, r1
 ec6:	a1 1d       	adc	r26, r1
 ec8:	20 d0       	rcall	.+64     	; 0xf0a <.L_lsr_4>
 eca:	09 f4       	brne	.+2      	; 0xece <.L1^B1>
 ecc:	68 94       	set

00000ece <.L1^B1>:
 ece:	3f 91       	pop	r19
 ed0:	2a e0       	ldi	r18, 0x0A	; 10
 ed2:	26 9f       	mul	r18, r22
 ed4:	11 24       	eor	r1, r1
 ed6:	30 19       	sub	r19, r0
 ed8:	30 5d       	subi	r19, 0xD0	; 208
 eda:	31 93       	st	Z+, r19
 edc:	de f6       	brtc	.-74     	; 0xe94 <.L_dec_loop>

00000ede <.L_eos>:
 ede:	cf 01       	movw	r24, r30
 ee0:	08 95       	ret

00000ee2 <.L_oct>:
 ee2:	46 2f       	mov	r20, r22
 ee4:	47 70       	andi	r20, 0x07	; 7
 ee6:	40 5d       	subi	r20, 0xD0	; 208
 ee8:	41 93       	st	Z+, r20
 eea:	b3 e0       	ldi	r27, 0x03	; 3
 eec:	0f d0       	rcall	.+30     	; 0xf0c <.L_lsr>
 eee:	c9 f7       	brne	.-14     	; 0xee2 <.L_oct>
 ef0:	f6 cf       	rjmp	.-20     	; 0xede <.L_eos>

00000ef2 <.L_hex>:
 ef2:	46 2f       	mov	r20, r22
 ef4:	4f 70       	andi	r20, 0x0F	; 15
 ef6:	40 5d       	subi	r20, 0xD0	; 208
 ef8:	4a 33       	cpi	r20, 0x3A	; 58
 efa:	18 f0       	brcs	.+6      	; 0xf02 <.L3^B1>
 efc:	49 5d       	subi	r20, 0xD9	; 217
 efe:	31 fd       	sbrc	r19, 1
 f00:	40 52       	subi	r20, 0x20	; 32

00000f02 <.L3^B1>:
 f02:	41 93       	st	Z+, r20
 f04:	02 d0       	rcall	.+4      	; 0xf0a <.L_lsr_4>
 f06:	a9 f7       	brne	.-22     	; 0xef2 <.L_hex>
 f08:	ea cf       	rjmp	.-44     	; 0xede <.L_eos>

00000f0a <.L_lsr_4>:
 f0a:	b4 e0       	ldi	r27, 0x04	; 4

00000f0c <.L_lsr>:
 f0c:	a6 95       	lsr	r26
 f0e:	97 95       	ror	r25
 f10:	87 95       	ror	r24
 f12:	77 95       	ror	r23
 f14:	67 95       	ror	r22
 f16:	ba 95       	dec	r27
 f18:	c9 f7       	brne	.-14     	; 0xf0c <.L_lsr>
 f1a:	00 97       	sbiw	r24, 0x00	; 0
 f1c:	61 05       	cpc	r22, r1
 f1e:	71 05       	cpc	r23, r1
 f20:	08 95       	ret

00000f22 <.L_div_add>:
 f22:	9b 01       	movw	r18, r22
 f24:	ac 01       	movw	r20, r24
 f26:	0a 2e       	mov	r0, r26

00000f28 <.L7^B1>:
 f28:	06 94       	lsr	r0
 f2a:	57 95       	ror	r21
 f2c:	47 95       	ror	r20
 f2e:	37 95       	ror	r19
 f30:	27 95       	ror	r18
 f32:	ba 95       	dec	r27
 f34:	c9 f7       	brne	.-14     	; 0xf28 <.L7^B1>
 f36:	62 0f       	add	r22, r18
 f38:	73 1f       	adc	r23, r19
 f3a:	84 1f       	adc	r24, r20
 f3c:	95 1f       	adc	r25, r21
 f3e:	a0 1d       	adc	r26, r0
 f40:	08 95       	ret

00000f42 <__prologue_saves__>:
 f42:	2f 92       	push	r2
 f44:	3f 92       	push	r3
 f46:	4f 92       	push	r4
 f48:	5f 92       	push	r5
 f4a:	6f 92       	push	r6
 f4c:	7f 92       	push	r7
 f4e:	8f 92       	push	r8
 f50:	9f 92       	push	r9
 f52:	af 92       	push	r10
 f54:	bf 92       	push	r11
 f56:	cf 92       	push	r12
 f58:	df 92       	push	r13
 f5a:	ef 92       	push	r14
 f5c:	ff 92       	push	r15
 f5e:	0f 93       	push	r16
 f60:	1f 93       	push	r17
 f62:	cf 93       	push	r28
 f64:	df 93       	push	r29
 f66:	cd b7       	in	r28, 0x3d	; 61
 f68:	de b7       	in	r29, 0x3e	; 62
 f6a:	ca 1b       	sub	r28, r26
 f6c:	db 0b       	sbc	r29, r27
 f6e:	0f b6       	in	r0, 0x3f	; 63
 f70:	f8 94       	cli
 f72:	de bf       	out	0x3e, r29	; 62
 f74:	0f be       	out	0x3f, r0	; 63
 f76:	cd bf       	out	0x3d, r28	; 61
 f78:	09 94       	ijmp

00000f7a <__epilogue_restores__>:
 f7a:	2a 88       	ldd	r2, Y+18	; 0x12
 f7c:	39 88       	ldd	r3, Y+17	; 0x11
 f7e:	48 88       	ldd	r4, Y+16	; 0x10
 f80:	5f 84       	ldd	r5, Y+15	; 0x0f
 f82:	6e 84       	ldd	r6, Y+14	; 0x0e
 f84:	7d 84       	ldd	r7, Y+13	; 0x0d
 f86:	8c 84       	ldd	r8, Y+12	; 0x0c
 f88:	9b 84       	ldd	r9, Y+11	; 0x0b
 f8a:	aa 84       	ldd	r10, Y+10	; 0x0a
 f8c:	b9 84       	ldd	r11, Y+9	; 0x09
 f8e:	c8 84       	ldd	r12, Y+8	; 0x08
 f90:	df 80       	ldd	r13, Y+7	; 0x07
 f92:	ee 80       	ldd	r14, Y+6	; 0x06
 f94:	fd 80       	ldd	r15, Y+5	; 0x05
 f96:	0c 81       	ldd	r16, Y+4	; 0x04
 f98:	1b 81       	ldd	r17, Y+3	; 0x03
 f9a:	aa 81       	ldd	r26, Y+2	; 0x02
 f9c:	b9 81       	ldd	r27, Y+1	; 0x01
 f9e:	ce 0f       	add	r28, r30
 fa0:	d1 1d       	adc	r29, r1
 fa2:	0f b6       	in	r0, 0x3f	; 63
 fa4:	f8 94       	cli
 fa6:	de bf       	out	0x3e, r29	; 62
 fa8:	0f be       	out	0x3f, r0	; 63
 faa:	cd bf       	out	0x3d, r28	; 61
 fac:	ed 01       	movw	r28, r26
 fae:	08 95       	ret

00000fb0 <_exit>:
 fb0:	f8 94       	cli

00000fb2 <__stop_program>:
 fb2:	ff cf       	rjmp	.-2      	; 0xfb2 <__stop_program>
