
build/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
       4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
       8:	0c 94 99 03 	jmp	0x732	; 0x732 <__vector_2>
       c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      14:	0c 94 8c 03 	jmp	0x718	; 0x718 <__vector_5>
      18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      1c:	0c 94 82 03 	jmp	0x704	; 0x704 <__vector_7>
      20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
      38:	0c 94 a3 03 	jmp	0x746	; 0x746 <__vector_14>
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
      7a:	e6 e0       	ldi	r30, 0x06	; 6
      7c:	f2 e1       	ldi	r31, 0x12	; 18
      7e:	02 c0       	rjmp	.+4      	; 0x84 <.Lname22+0x1>
      80:	05 90       	lpm	r0, Z+
      82:	0d 92       	st	X+, r0
      84:	ac 33       	cpi	r26, 0x3C	; 60
      86:	b1 07       	cpc	r27, r17
      88:	d9 f7       	brne	.-10     	; 0x80 <.Lname21+0x4>
      8a:	0e 94 b8 03 	call	0x770	; 0x770 <main>
      8e:	0c 94 01 09 	jmp	0x1202	; 0x1202 <_exit>

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
      e6:	0e 94 1d 05 	call	0xa3a	; 0xa3a <__floatunsisf>
      ea:	26 ef       	ldi	r18, 0xF6	; 246
      ec:	38 e2       	ldi	r19, 0x28	; 40
      ee:	4c e9       	ldi	r20, 0x9C	; 156
      f0:	50 e4       	ldi	r21, 0x40	; 64
      f2:	0e 94 ab 05 	call	0xb56	; 0xb56 <__mulsf3>
      f6:	0e 94 ee 04 	call	0x9dc	; 0x9dc <__fixunssfsi>
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
     1ba:	0e 94 1d 05 	call	0xa3a	; 0xa3a <__floatunsisf>
     1be:	20 e0       	ldi	r18, 0x00	; 0
     1c0:	30 e0       	ldi	r19, 0x00	; 0
     1c2:	4a e7       	ldi	r20, 0x7A	; 122
     1c4:	56 e4       	ldi	r21, 0x46	; 70
     1c6:	0e 94 ab 05 	call	0xb56	; 0xb56 <__mulsf3>
     1ca:	20 e0       	ldi	r18, 0x00	; 0
     1cc:	30 e4       	ldi	r19, 0x40	; 64
     1ce:	4c e9       	ldi	r20, 0x9C	; 156
     1d0:	55 e4       	ldi	r21, 0x45	; 69
     1d2:	0e 94 7c 04 	call	0x8f8	; 0x8f8 <__divsf3>
     1d6:	20 e0       	ldi	r18, 0x00	; 0
     1d8:	30 e0       	ldi	r19, 0x00	; 0
     1da:	40 e8       	ldi	r20, 0x80	; 128
     1dc:	5f e3       	ldi	r21, 0x3F	; 63
     1de:	0e 94 0f 04 	call	0x81e	; 0x81e <__subsf3>
     1e2:	0e 94 ee 04 	call	0x9dc	; 0x9dc <__fixunssfsi>
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
     27e:	0e 94 fb 03 	call	0x7f6	; 0x7f6 <__udivmodhi4>
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
     30a:	0e 94 18 06 	call	0xc30	; 0xc30 <sprintf>
     30e:	c8 01       	movw	r24, r16
     310:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
     314:	8e e1       	ldi	r24, 0x1E	; 30
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
     35a:	88 e4       	ldi	r24, 0x48	; 72
     35c:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7f80b8>
     360:	84 e0       	ldi	r24, 0x04	; 4
     362:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     366:	86 e0       	ldi	r24, 0x06	; 6
     368:	90 e0       	ldi	r25, 0x00	; 0
     36a:	08 95       	ret

0000036c <I2C_start>:
     36c:	84 ea       	ldi	r24, 0xA4	; 164
     36e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

00000372 <.L3>:
     372:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     376:	87 ff       	sbrs	r24, 7
     378:	fc cf       	rjmp	.-8      	; 0x372 <.L3>
     37a:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     37e:	88 7f       	andi	r24, 0xF8	; 248
     380:	88 30       	cpi	r24, 0x08	; 8
     382:	19 f4       	brne	.+6      	; 0x38a <.L5>
     384:	86 e0       	ldi	r24, 0x06	; 6
     386:	90 e0       	ldi	r25, 0x00	; 0
     388:	08 95       	ret

0000038a <.L5>:
     38a:	81 e0       	ldi	r24, 0x01	; 1
     38c:	90 e0       	ldi	r25, 0x00	; 0
     38e:	08 95       	ret

00000390 <I2C_connect_address>:
     390:	88 0f       	add	r24, r24
     392:	86 2b       	or	r24, r22
     394:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     398:	84 e8       	ldi	r24, 0x84	; 132
     39a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000039e <.L8>:
     39e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3a2:	87 ff       	sbrs	r24, 7
     3a4:	fc cf       	rjmp	.-8      	; 0x39e <.L8>
     3a6:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3aa:	88 7f       	andi	r24, 0xF8	; 248
     3ac:	88 31       	cpi	r24, 0x18	; 24
     3ae:	41 f4       	brne	.+16     	; 0x3c0 <.L10>
     3b0:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3b4:	88 7f       	andi	r24, 0xF8	; 248
     3b6:	88 34       	cpi	r24, 0x48	; 72
     3b8:	31 f0       	breq	.+12     	; 0x3c6 <.L11>
     3ba:	84 e0       	ldi	r24, 0x04	; 4
     3bc:	90 e0       	ldi	r25, 0x00	; 0
     3be:	08 95       	ret

000003c0 <.L10>:
     3c0:	83 e0       	ldi	r24, 0x03	; 3
     3c2:	90 e0       	ldi	r25, 0x00	; 0
     3c4:	08 95       	ret

000003c6 <.L11>:
     3c6:	86 e0       	ldi	r24, 0x06	; 6
     3c8:	90 e0       	ldi	r25, 0x00	; 0
     3ca:	08 95       	ret

000003cc <I2C_write>:
     3cc:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     3d0:	84 e8       	ldi	r24, 0x84	; 132
     3d2:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003d6 <.L14>:
     3d6:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3da:	87 ff       	sbrs	r24, 7
     3dc:	fc cf       	rjmp	.-8      	; 0x3d6 <.L14>
     3de:	80 91 b9 00 	lds	r24, 0x00B9	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7f80b9>
     3e2:	88 7f       	andi	r24, 0xF8	; 248
     3e4:	88 32       	cpi	r24, 0x28	; 40
     3e6:	19 f0       	breq	.+6      	; 0x3ee <.L16>
     3e8:	82 e0       	ldi	r24, 0x02	; 2
     3ea:	90 e0       	ldi	r25, 0x00	; 0
     3ec:	08 95       	ret

000003ee <.L16>:
     3ee:	86 e0       	ldi	r24, 0x06	; 6
     3f0:	90 e0       	ldi	r25, 0x00	; 0
     3f2:	08 95       	ret

000003f4 <I2C_read_ACK>:
     3f4:	84 ec       	ldi	r24, 0xC4	; 196
     3f6:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

000003fa <.L19>:
     3fa:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     3fe:	87 ff       	sbrs	r24, 7
     400:	fc cf       	rjmp	.-8      	; 0x3fa <.L19>
     402:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     406:	08 95       	ret

00000408 <I2C_read_NACK>:
     408:	84 e8       	ldi	r24, 0x84	; 132
     40a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>

0000040e <.L22>:
     40e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     412:	87 ff       	sbrs	r24, 7
     414:	fc cf       	rjmp	.-8      	; 0x40e <.L22>
     416:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7f80bb>
     41a:	08 95       	ret

0000041c <I2C_stop>:
     41c:	84 e9       	ldi	r24, 0x94	; 148
     41e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7f80bc>
     422:	08 95       	ret

00000424 <NUN_init>:
     424:	0e 94 a8 01 	call	0x350	; 0x350 <I2C_init>
     428:	06 97       	sbiw	r24, 0x06	; 6
     42a:	11 f0       	breq	.+4      	; 0x430 <.L2>
     42c:	0e 94 ad 03 	call	0x75a	; 0x75a <Error_Handler>

00000430 <.L2>:
     430:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     434:	06 97       	sbiw	r24, 0x06	; 6
     436:	11 f0       	breq	.+4      	; 0x43c <.L3>
     438:	0e 94 ad 03 	call	0x75a	; 0x75a <Error_Handler>

0000043c <.L3>:
     43c:	60 e0       	ldi	r22, 0x00	; 0
     43e:	70 e0       	ldi	r23, 0x00	; 0
     440:	84 ea       	ldi	r24, 0xA4	; 164
     442:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     446:	80 ef       	ldi	r24, 0xF0	; 240
     448:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     44c:	85 e5       	ldi	r24, 0x55	; 85
     44e:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     452:	0e 94 0e 02 	call	0x41c	; 0x41c <I2C_stop>
     456:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     45a:	06 97       	sbiw	r24, 0x06	; 6
     45c:	11 f0       	breq	.+4      	; 0x462 <.L4>
     45e:	0e 94 ad 03 	call	0x75a	; 0x75a <Error_Handler>

00000462 <.L4>:
     462:	60 e0       	ldi	r22, 0x00	; 0
     464:	70 e0       	ldi	r23, 0x00	; 0
     466:	84 ea       	ldi	r24, 0xA4	; 164
     468:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     46c:	8b ef       	ldi	r24, 0xFB	; 251
     46e:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     472:	80 e0       	ldi	r24, 0x00	; 0
     474:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     478:	0e 94 0e 02 	call	0x41c	; 0x41c <I2C_stop>
     47c:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     480:	06 97       	sbiw	r24, 0x06	; 6
     482:	11 f0       	breq	.+4      	; 0x488 <.L5>
     484:	0e 94 ad 03 	call	0x75a	; 0x75a <Error_Handler>

00000488 <.L5>:
     488:	60 e0       	ldi	r22, 0x00	; 0
     48a:	70 e0       	ldi	r23, 0x00	; 0
     48c:	84 ea       	ldi	r24, 0xA4	; 164
     48e:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     492:	80 e0       	ldi	r24, 0x00	; 0
     494:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     498:	0c 94 0e 02 	jmp	0x41c	; 0x41c <I2C_stop>

0000049c <NUN_get_raw>:
     49c:	ef 92       	push	r14
     49e:	ff 92       	push	r15
     4a0:	0f 93       	push	r16
     4a2:	1f 93       	push	r17
     4a4:	cf 93       	push	r28
     4a6:	df 93       	push	r29
     4a8:	ec 01       	movw	r28, r24
     4aa:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     4ae:	06 97       	sbiw	r24, 0x06	; 6
     4b0:	11 f0       	breq	.+4      	; 0x4b6 <.L19>
     4b2:	0e 94 ad 03 	call	0x75a	; 0x75a <Error_Handler>

000004b6 <.L19>:
     4b6:	61 e0       	ldi	r22, 0x01	; 1
     4b8:	70 e0       	ldi	r23, 0x00	; 0
     4ba:	85 ea       	ldi	r24, 0xA5	; 165
     4bc:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     4c0:	8e 01       	movw	r16, r28
     4c2:	7e 01       	movw	r14, r28
     4c4:	85 e0       	ldi	r24, 0x05	; 5
     4c6:	e8 0e       	add	r14, r24
     4c8:	f1 1c       	adc	r15, r1

000004ca <.L20>:
     4ca:	0e 94 fa 01 	call	0x3f4	; 0x3f4 <I2C_read_ACK>
     4ce:	f8 01       	movw	r30, r16
     4d0:	81 93       	st	Z+, r24
     4d2:	8f 01       	movw	r16, r30
     4d4:	ee 15       	cp	r30, r14
     4d6:	ff 05       	cpc	r31, r15
     4d8:	c1 f7       	brne	.-16     	; 0x4ca <.L20>
     4da:	0e 94 04 02 	call	0x408	; 0x408 <I2C_read_NACK>
     4de:	8d 83       	std	Y+5, r24	; 0x05
     4e0:	df 91       	pop	r29
     4e2:	cf 91       	pop	r28
     4e4:	1f 91       	pop	r17
     4e6:	0f 91       	pop	r16
     4e8:	ff 90       	pop	r15
     4ea:	ef 90       	pop	r14
     4ec:	0c 94 0e 02 	jmp	0x41c	; 0x41c <I2C_stop>

000004f0 <NUN_get_joystick>:
     4f0:	0f 93       	push	r16
     4f2:	1f 93       	push	r17
     4f4:	cf 93       	push	r28
     4f6:	df 93       	push	r29
     4f8:	00 d0       	rcall	.+0      	; 0x4fa <L0^A>

000004fa <L0^A>:
     4fa:	00 d0       	rcall	.+0      	; 0x4fc <L0^A>

000004fc <L0^A>:
     4fc:	00 d0       	rcall	.+0      	; 0x4fe <L0^A>

000004fe <L0^A>:
     4fe:	cd b7       	in	r28, 0x3d	; 61
     500:	de b7       	in	r29, 0x3e	; 62
     502:	8c 01       	movw	r16, r24
     504:	ce 01       	movw	r24, r28
     506:	01 96       	adiw	r24, 0x01	; 1
     508:	26 e0       	ldi	r18, 0x06	; 6
     50a:	fc 01       	movw	r30, r24

0000050c <.L0^B1>:
     50c:	11 92       	st	Z+, r1
     50e:	2a 95       	dec	r18
     510:	e9 f7       	brne	.-6      	; 0x50c <.L0^B1>
     512:	0e 94 4e 02 	call	0x49c	; 0x49c <NUN_get_raw>
     516:	8a 81       	ldd	r24, Y+2	; 0x02
     518:	99 81       	ldd	r25, Y+1	; 0x01
     51a:	f8 01       	movw	r30, r16
     51c:	90 83       	st	Z, r25
     51e:	81 83       	std	Z+1, r24	; 0x01
     520:	0f 90       	pop	r0
     522:	0f 90       	pop	r0
     524:	0f 90       	pop	r0
     526:	0f 90       	pop	r0
     528:	0f 90       	pop	r0
     52a:	0f 90       	pop	r0
     52c:	df 91       	pop	r29
     52e:	cf 91       	pop	r28
     530:	1f 91       	pop	r17
     532:	0f 91       	pop	r16
     534:	08 95       	ret

00000536 <NUN_get_CZ>:
     536:	cf 93       	push	r28
     538:	df 93       	push	r29
     53a:	00 d0       	rcall	.+0      	; 0x53c <L0^A>

0000053c <L0^A>:
     53c:	00 d0       	rcall	.+0      	; 0x53e <L0^A>

0000053e <L0^A>:
     53e:	00 d0       	rcall	.+0      	; 0x540 <L0^A>

00000540 <L0^A>:
     540:	cd b7       	in	r28, 0x3d	; 61
     542:	de b7       	in	r29, 0x3e	; 62
     544:	ce 01       	movw	r24, r28
     546:	01 96       	adiw	r24, 0x01	; 1
     548:	0e 94 4e 02 	call	0x49c	; 0x49c <NUN_get_raw>
     54c:	8e 81       	ldd	r24, Y+6	; 0x06
     54e:	8c 7f       	andi	r24, 0xFC	; 252
     550:	0f 90       	pop	r0
     552:	0f 90       	pop	r0
     554:	0f 90       	pop	r0
     556:	0f 90       	pop	r0
     558:	0f 90       	pop	r0
     55a:	0f 90       	pop	r0
     55c:	df 91       	pop	r29
     55e:	cf 91       	pop	r28
     560:	08 95       	ret

00000562 <SERVO_set_angulo>:
     562:	9c 01       	movw	r18, r24
     564:	cb 01       	movw	r24, r22
     566:	89 2b       	or	r24, r25
     568:	a1 f0       	breq	.+40     	; 0x592 <.L2>
     56a:	61 30       	cpi	r22, 0x01	; 1
     56c:	71 05       	cpc	r23, r1
     56e:	09 f5       	brne	.+66     	; 0x5b2 <.L1>
     570:	44 e1       	ldi	r20, 0x14	; 20
     572:	42 9f       	mul	r20, r18
     574:	c0 01       	movw	r24, r0
     576:	43 9f       	mul	r20, r19
     578:	90 0d       	add	r25, r0
     57a:	11 24       	eor	r1, r1
     57c:	69 e0       	ldi	r22, 0x09	; 9
     57e:	70 e0       	ldi	r23, 0x00	; 0
     580:	0e 94 fb 03 	call	0x7f6	; 0x7f6 <__udivmodhi4>
     584:	69 51       	subi	r22, 0x19	; 25
     586:	7c 4f       	sbci	r23, 0xFC	; 252
     588:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7f808b>
     58c:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7f808a>
     590:	08 95       	ret

00000592 <.L2>:
     592:	44 e1       	ldi	r20, 0x14	; 20
     594:	42 9f       	mul	r20, r18
     596:	c0 01       	movw	r24, r0
     598:	43 9f       	mul	r20, r19
     59a:	90 0d       	add	r25, r0
     59c:	11 24       	eor	r1, r1
     59e:	69 e0       	ldi	r22, 0x09	; 9
     5a0:	70 e0       	ldi	r23, 0x00	; 0
     5a2:	0e 94 fb 03 	call	0x7f6	; 0x7f6 <__udivmodhi4>
     5a6:	69 51       	subi	r22, 0x19	; 25
     5a8:	7c 4f       	sbci	r23, 0xFC	; 252
     5aa:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7f8089>
     5ae:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7f8088>

000005b2 <.L1>:
     5b2:	08 95       	ret

000005b4 <SERVO_test>:
     5b4:	ef 92       	push	r14
     5b6:	ff 92       	push	r15
     5b8:	0f 93       	push	r16
     5ba:	1f 93       	push	r17
     5bc:	cf 93       	push	r28
     5be:	df 93       	push	r29
     5c0:	8c 01       	movw	r16, r24
     5c2:	d6 2f       	mov	r29, r22
     5c4:	c7 2f       	mov	r28, r23
     5c6:	bc 01       	movw	r22, r24
     5c8:	80 e0       	ldi	r24, 0x00	; 0
     5ca:	90 e0       	ldi	r25, 0x00	; 0
     5cc:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     5d0:	6d 2f       	mov	r22, r29
     5d2:	7c 2f       	mov	r23, r28
     5d4:	80 e0       	ldi	r24, 0x00	; 0
     5d6:	90 e0       	ldi	r25, 0x00	; 0
     5d8:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     5dc:	2f ef       	ldi	r18, 0xFF	; 255
     5de:	83 ed       	ldi	r24, 0xD3	; 211
     5e0:	90 e3       	ldi	r25, 0x30	; 48

000005e2 <.L1^B1>:
     5e2:	21 50       	subi	r18, 0x01	; 1
     5e4:	80 40       	sbci	r24, 0x00	; 0
     5e6:	90 40       	sbci	r25, 0x00	; 0
     5e8:	e1 f7       	brne	.-8      	; 0x5e2 <.L1^B1>
     5ea:	00 c0       	rjmp	.+0      	; 0x5ec <L0^A>

000005ec <L0^A>:
     5ec:	00 00       	nop
     5ee:	e1 2c       	mov	r14, r1
     5f0:	f1 2c       	mov	r15, r1

000005f2 <.L5>:
     5f2:	b8 01       	movw	r22, r16
     5f4:	c7 01       	movw	r24, r14
     5f6:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     5fa:	6d 2f       	mov	r22, r29
     5fc:	7c 2f       	mov	r23, r28
     5fe:	c7 01       	movw	r24, r14
     600:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     604:	8f e9       	ldi	r24, 0x9F	; 159
     606:	9f e0       	ldi	r25, 0x0F	; 15

00000608 <.L1^B2>:
     608:	01 97       	sbiw	r24, 0x01	; 1
     60a:	f1 f7       	brne	.-4      	; 0x608 <.L1^B2>
     60c:	00 c0       	rjmp	.+0      	; 0x60e <L0^A>

0000060e <L0^A>:
     60e:	00 00       	nop
     610:	9f ef       	ldi	r25, 0xFF	; 255
     612:	e9 1a       	sub	r14, r25
     614:	f9 0a       	sbc	r15, r25
     616:	29 e0       	ldi	r18, 0x09	; 9
     618:	e2 16       	cp	r14, r18
     61a:	27 e0       	ldi	r18, 0x07	; 7
     61c:	f2 06       	cpc	r15, r18
     61e:	49 f7       	brne	.-46     	; 0x5f2 <.L5>
     620:	88 e0       	ldi	r24, 0x08	; 8
     622:	e8 2e       	mov	r14, r24
     624:	87 e0       	ldi	r24, 0x07	; 7
     626:	f8 2e       	mov	r15, r24

00000628 <.L6>:
     628:	b8 01       	movw	r22, r16
     62a:	c7 01       	movw	r24, r14
     62c:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     630:	6d 2f       	mov	r22, r29
     632:	7c 2f       	mov	r23, r28
     634:	c7 01       	movw	r24, r14
     636:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     63a:	8f e9       	ldi	r24, 0x9F	; 159
     63c:	9f e0       	ldi	r25, 0x0F	; 15

0000063e <.L1^B3>:
     63e:	01 97       	sbiw	r24, 0x01	; 1
     640:	f1 f7       	brne	.-4      	; 0x63e <.L1^B3>
     642:	00 c0       	rjmp	.+0      	; 0x644 <L0^A>

00000644 <L0^A>:
     644:	00 00       	nop
     646:	91 e0       	ldi	r25, 0x01	; 1
     648:	e9 1a       	sub	r14, r25
     64a:	f1 08       	sbc	r15, r1
     64c:	68 f7       	brcc	.-38     	; 0x628 <.L6>
     64e:	b8 01       	movw	r22, r16
     650:	80 e0       	ldi	r24, 0x00	; 0
     652:	90 e0       	ldi	r25, 0x00	; 0
     654:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     658:	6d 2f       	mov	r22, r29
     65a:	7c 2f       	mov	r23, r28
     65c:	80 e0       	ldi	r24, 0x00	; 0
     65e:	90 e0       	ldi	r25, 0x00	; 0
     660:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     664:	b8 01       	movw	r22, r16
     666:	88 e0       	ldi	r24, 0x08	; 8
     668:	97 e0       	ldi	r25, 0x07	; 7
     66a:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     66e:	6d 2f       	mov	r22, r29
     670:	7c 2f       	mov	r23, r28
     672:	88 e0       	ldi	r24, 0x08	; 8
     674:	97 e0       	ldi	r25, 0x07	; 7
     676:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     67a:	8f ef       	ldi	r24, 0xFF	; 255
     67c:	93 ed       	ldi	r25, 0xD3	; 211
     67e:	20 e3       	ldi	r18, 0x30	; 48

00000680 <.L1^B4>:
     680:	81 50       	subi	r24, 0x01	; 1
     682:	90 40       	sbci	r25, 0x00	; 0
     684:	20 40       	sbci	r18, 0x00	; 0
     686:	e1 f7       	brne	.-8      	; 0x680 <.L1^B4>
     688:	00 c0       	rjmp	.+0      	; 0x68a <L0^A>

0000068a <L0^A>:
     68a:	00 00       	nop
     68c:	b8 01       	movw	r22, r16
     68e:	80 e0       	ldi	r24, 0x00	; 0
     690:	90 e0       	ldi	r25, 0x00	; 0
     692:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     696:	6d 2f       	mov	r22, r29
     698:	7c 2f       	mov	r23, r28
     69a:	80 e0       	ldi	r24, 0x00	; 0
     69c:	90 e0       	ldi	r25, 0x00	; 0
     69e:	0e 94 b1 02 	call	0x562	; 0x562 <SERVO_set_angulo>
     6a2:	8f ef       	ldi	r24, 0xFF	; 255
     6a4:	93 ed       	ldi	r25, 0xD3	; 211
     6a6:	20 e3       	ldi	r18, 0x30	; 48

000006a8 <.L1^B5>:
     6a8:	81 50       	subi	r24, 0x01	; 1
     6aa:	90 40       	sbci	r25, 0x00	; 0
     6ac:	20 40       	sbci	r18, 0x00	; 0
     6ae:	e1 f7       	brne	.-8      	; 0x6a8 <.L1^B5>
     6b0:	00 c0       	rjmp	.+0      	; 0x6b2 <L0^A>

000006b2 <L0^A>:
     6b2:	00 00       	nop
     6b4:	df 91       	pop	r29
     6b6:	cf 91       	pop	r28
     6b8:	1f 91       	pop	r17
     6ba:	0f 91       	pop	r16
     6bc:	ff 90       	pop	r15
     6be:	ef 90       	pop	r14
     6c0:	08 95       	ret

000006c2 <VL53L0X_test>:
     6c2:	cf 93       	push	r28
     6c4:	0e 94 a8 01 	call	0x350	; 0x350 <I2C_init>
     6c8:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     6cc:	60 e0       	ldi	r22, 0x00	; 0
     6ce:	70 e0       	ldi	r23, 0x00	; 0
     6d0:	89 e2       	ldi	r24, 0x29	; 41
     6d2:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     6d6:	80 ec       	ldi	r24, 0xC0	; 192
     6d8:	0e 94 e6 01 	call	0x3cc	; 0x3cc <I2C_write>
     6dc:	0e 94 0e 02 	call	0x41c	; 0x41c <I2C_stop>
     6e0:	0e 94 b6 01 	call	0x36c	; 0x36c <I2C_start>
     6e4:	61 e0       	ldi	r22, 0x01	; 1
     6e6:	70 e0       	ldi	r23, 0x00	; 0
     6e8:	89 e2       	ldi	r24, 0x29	; 41
     6ea:	0e 94 c8 01 	call	0x390	; 0x390 <I2C_connect_address>
     6ee:	0e 94 04 02 	call	0x408	; 0x408 <I2C_read_NACK>
     6f2:	c8 2f       	mov	r28, r24
     6f4:	0e 94 0e 02 	call	0x41c	; 0x41c <I2C_stop>
     6f8:	81 e0       	ldi	r24, 0x01	; 1
     6fa:	ce 3e       	cpi	r28, 0xEE	; 238
     6fc:	09 f0       	breq	.+2      	; 0x700 <.L2>
     6fe:	80 e0       	ldi	r24, 0x00	; 0

00000700 <.L2>:
     700:	cf 91       	pop	r28
     702:	08 95       	ret

00000704 <__vector_7>:
     704:	1f 92       	push	r1
     706:	0f 92       	push	r0
     708:	0f b6       	in	r0, 0x3f	; 63
     70a:	0f 92       	push	r0
     70c:	11 24       	eor	r1, r1
     70e:	0f 90       	pop	r0
     710:	0f be       	out	0x3f, r0	; 63
     712:	0f 90       	pop	r0
     714:	1f 90       	pop	r1
     716:	18 95       	reti

00000718 <__vector_5>:
     718:	1f 92       	push	r1
     71a:	0f 92       	push	r0
     71c:	0f b6       	in	r0, 0x3f	; 63
     71e:	0f 92       	push	r0
     720:	11 24       	eor	r1, r1
     722:	8f 93       	push	r24
     724:	89 b1       	in	r24, 0x09	; 9
     726:	8f 91       	pop	r24
     728:	0f 90       	pop	r0
     72a:	0f be       	out	0x3f, r0	; 63
     72c:	0f 90       	pop	r0
     72e:	1f 90       	pop	r1
     730:	18 95       	reti

00000732 <__vector_2>:
     732:	1f 92       	push	r1
     734:	0f 92       	push	r0
     736:	0f b6       	in	r0, 0x3f	; 63
     738:	0f 92       	push	r0
     73a:	11 24       	eor	r1, r1
     73c:	0f 90       	pop	r0
     73e:	0f be       	out	0x3f, r0	; 63
     740:	0f 90       	pop	r0
     742:	1f 90       	pop	r1
     744:	18 95       	reti

00000746 <__vector_14>:
     746:	1f 92       	push	r1
     748:	0f 92       	push	r0
     74a:	0f b6       	in	r0, 0x3f	; 63
     74c:	0f 92       	push	r0
     74e:	11 24       	eor	r1, r1
     750:	0f 90       	pop	r0
     752:	0f be       	out	0x3f, r0	; 63
     754:	0f 90       	pop	r0
     756:	1f 90       	pop	r1
     758:	18 95       	reti

0000075a <Error_Handler>:
     75a:	88 e1       	ldi	r24, 0x18	; 24
     75c:	98 e0       	ldi	r25, 0x08	; 8
     75e:	0f b6       	in	r0, 0x3f	; 63
     760:	f8 94       	cli
     762:	a8 95       	wdr
     764:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>
     768:	0f be       	out	0x3f, r0	; 63
     76a:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__TEXT_REGION_LENGTH__+0x7f8060>

0000076e <.L2>:
     76e:	ff cf       	rjmp	.-2      	; 0x76e <.L2>

00000770 <main>:
     770:	0e 94 a8 01 	call	0x350	; 0x350 <I2C_init>
     774:	2f ef       	ldi	r18, 0xFF	; 255
     776:	83 e2       	ldi	r24, 0x23	; 35
     778:	94 ef       	ldi	r25, 0xF4	; 244

0000077a <.L1^B1>:
     77a:	21 50       	subi	r18, 0x01	; 1
     77c:	80 40       	sbci	r24, 0x00	; 0
     77e:	90 40       	sbci	r25, 0x00	; 0
     780:	e1 f7       	brne	.-8      	; 0x77a <.L1^B1>
     782:	00 c0       	rjmp	.+0      	; 0x784 <L0^A>

00000784 <L0^A>:
     784:	00 00       	nop
     786:	0e 94 48 01 	call	0x290	; 0x290 <USART_init>
     78a:	0e 94 46 01 	call	0x28c	; 0x28c <DEBUG_init>
     78e:	78 94       	sei

00000790 <.L8>:
     790:	83 e0       	ldi	r24, 0x03	; 3
     792:	91 e0       	ldi	r25, 0x01	; 1
     794:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
     798:	2f ef       	ldi	r18, 0xFF	; 255
     79a:	83 e2       	ldi	r24, 0x23	; 35
     79c:	94 ef       	ldi	r25, 0xF4	; 244

0000079e <.L1^B2>:
     79e:	21 50       	subi	r18, 0x01	; 1
     7a0:	80 40       	sbci	r24, 0x00	; 0
     7a2:	90 40       	sbci	r25, 0x00	; 0
     7a4:	e1 f7       	brne	.-8      	; 0x79e <.L1^B2>
     7a6:	00 c0       	rjmp	.+0      	; 0x7a8 <L0^A>

000007a8 <L0^A>:
     7a8:	00 00       	nop
     7aa:	0e 94 61 03 	call	0x6c2	; 0x6c2 <VL53L0X_test>
     7ae:	81 15       	cp	r24, r1
     7b0:	f9 f0       	breq	.+62     	; 0x7f0 <.L6>
     7b2:	86 e1       	ldi	r24, 0x16	; 22
     7b4:	91 e0       	ldi	r25, 0x01	; 1

000007b6 <.L9>:
     7b6:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
     7ba:	80 e3       	ldi	r24, 0x30	; 48
     7bc:	91 e0       	ldi	r25, 0x01	; 1
     7be:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
     7c2:	2f ef       	ldi	r18, 0xFF	; 255
     7c4:	83 ed       	ldi	r24, 0xD3	; 211
     7c6:	90 e3       	ldi	r25, 0x30	; 48

000007c8 <.L1^B3>:
     7c8:	21 50       	subi	r18, 0x01	; 1
     7ca:	80 40       	sbci	r24, 0x00	; 0
     7cc:	90 40       	sbci	r25, 0x00	; 0
     7ce:	e1 f7       	brne	.-8      	; 0x7c8 <.L1^B3>
     7d0:	00 c0       	rjmp	.+0      	; 0x7d2 <L0^A>

000007d2 <L0^A>:
     7d2:	00 00       	nop
     7d4:	86 e3       	ldi	r24, 0x36	; 54
     7d6:	91 e0       	ldi	r25, 0x01	; 1
     7d8:	0e 94 62 01 	call	0x2c4	; 0x2c4 <USART_putstring>
     7dc:	2f ef       	ldi	r18, 0xFF	; 255
     7de:	83 ed       	ldi	r24, 0xD3	; 211
     7e0:	90 e3       	ldi	r25, 0x30	; 48

000007e2 <.L1^B4>:
     7e2:	21 50       	subi	r18, 0x01	; 1
     7e4:	80 40       	sbci	r24, 0x00	; 0
     7e6:	90 40       	sbci	r25, 0x00	; 0
     7e8:	e1 f7       	brne	.-8      	; 0x7e2 <.L1^B4>
     7ea:	00 c0       	rjmp	.+0      	; 0x7ec <L0^A>

000007ec <L0^A>:
     7ec:	00 00       	nop
     7ee:	d0 cf       	rjmp	.-96     	; 0x790 <.L8>

000007f0 <.L6>:
     7f0:	81 e2       	ldi	r24, 0x21	; 33
     7f2:	91 e0       	ldi	r25, 0x01	; 1
     7f4:	e0 cf       	rjmp	.-64     	; 0x7b6 <.L9>

000007f6 <__udivmodhi4>:
     7f6:	aa 1b       	sub	r26, r26
     7f8:	bb 1b       	sub	r27, r27
     7fa:	51 e1       	ldi	r21, 0x11	; 17
     7fc:	07 c0       	rjmp	.+14     	; 0x80c <__udivmodhi4_ep>

000007fe <__udivmodhi4_loop>:
     7fe:	aa 1f       	adc	r26, r26
     800:	bb 1f       	adc	r27, r27
     802:	a6 17       	cp	r26, r22
     804:	b7 07       	cpc	r27, r23
     806:	10 f0       	brcs	.+4      	; 0x80c <__udivmodhi4_ep>
     808:	a6 1b       	sub	r26, r22
     80a:	b7 0b       	sbc	r27, r23

0000080c <__udivmodhi4_ep>:
     80c:	88 1f       	adc	r24, r24
     80e:	99 1f       	adc	r25, r25
     810:	5a 95       	dec	r21
     812:	a9 f7       	brne	.-22     	; 0x7fe <__udivmodhi4_loop>
     814:	80 95       	com	r24
     816:	90 95       	com	r25
     818:	bc 01       	movw	r22, r24
     81a:	cd 01       	movw	r24, r26
     81c:	08 95       	ret

0000081e <__subsf3>:
     81e:	50 58       	subi	r21, 0x80	; 128

00000820 <__addsf3>:
     820:	bb 27       	eor	r27, r27
     822:	aa 27       	eor	r26, r26
     824:	0e 94 27 04 	call	0x84e	; 0x84e <__addsf3x>
     828:	0c 94 71 05 	jmp	0xae2	; 0xae2 <__fp_round>

0000082c <.L0^B1>:
     82c:	0e 94 63 05 	call	0xac6	; 0xac6 <__fp_pscA>
     830:	38 f0       	brcs	.+14     	; 0x840 <.L_nan>
     832:	0e 94 6a 05 	call	0xad4	; 0xad4 <__fp_pscB>
     836:	20 f0       	brcs	.+8      	; 0x840 <.L_nan>
     838:	39 f4       	brne	.+14     	; 0x848 <.L_inf>
     83a:	9f 3f       	cpi	r25, 0xFF	; 255
     83c:	19 f4       	brne	.+6      	; 0x844 <.L_infB>
     83e:	26 f4       	brtc	.+8      	; 0x848 <.L_inf>

00000840 <.L_nan>:
     840:	0c 94 60 05 	jmp	0xac0	; 0xac0 <__fp_nan>

00000844 <.L_infB>:
     844:	0e f4       	brtc	.+2      	; 0x848 <.L_inf>
     846:	e0 95       	com	r30

00000848 <.L_inf>:
     848:	e7 fb       	bst	r30, 7
     84a:	0c 94 5a 05 	jmp	0xab4	; 0xab4 <__fp_inf>

0000084e <__addsf3x>:
     84e:	e9 2f       	mov	r30, r25
     850:	0e 94 82 05 	call	0xb04	; 0xb04 <__fp_split3>
     854:	58 f3       	brcs	.-42     	; 0x82c <.L0^B1>
     856:	ba 17       	cp	r27, r26
     858:	62 07       	cpc	r22, r18
     85a:	73 07       	cpc	r23, r19
     85c:	84 07       	cpc	r24, r20
     85e:	95 07       	cpc	r25, r21
     860:	20 f0       	brcs	.+8      	; 0x86a <.L2^B1>
     862:	79 f4       	brne	.+30     	; 0x882 <.L4^B1>
     864:	a6 f5       	brtc	.+104    	; 0x8ce <.L_add>
     866:	0c 94 a4 05 	jmp	0xb48	; 0xb48 <__fp_zero>

0000086a <.L2^B1>:
     86a:	0e f4       	brtc	.+2      	; 0x86e <.L3^B1>
     86c:	e0 95       	com	r30

0000086e <.L3^B1>:
     86e:	0b 2e       	mov	r0, r27
     870:	ba 2f       	mov	r27, r26
     872:	a0 2d       	mov	r26, r0
     874:	0b 01       	movw	r0, r22
     876:	b9 01       	movw	r22, r18
     878:	90 01       	movw	r18, r0
     87a:	0c 01       	movw	r0, r24
     87c:	ca 01       	movw	r24, r20
     87e:	a0 01       	movw	r20, r0
     880:	11 24       	eor	r1, r1

00000882 <.L4^B1>:
     882:	ff 27       	eor	r31, r31
     884:	59 1b       	sub	r21, r25

00000886 <.L5^B1>:
     886:	99 f0       	breq	.+38     	; 0x8ae <.L7^B1>
     888:	59 3f       	cpi	r21, 0xF9	; 249
     88a:	50 f4       	brcc	.+20     	; 0x8a0 <.L6^B1>
     88c:	50 3e       	cpi	r21, 0xE0	; 224
     88e:	68 f1       	brcs	.+90     	; 0x8ea <.L_ret>
     890:	1a 16       	cp	r1, r26
     892:	f0 40       	sbci	r31, 0x00	; 0
     894:	a2 2f       	mov	r26, r18
     896:	23 2f       	mov	r18, r19
     898:	34 2f       	mov	r19, r20
     89a:	44 27       	eor	r20, r20
     89c:	58 5f       	subi	r21, 0xF8	; 248
     89e:	f3 cf       	rjmp	.-26     	; 0x886 <.L5^B1>

000008a0 <.L6^B1>:
     8a0:	46 95       	lsr	r20
     8a2:	37 95       	ror	r19
     8a4:	27 95       	ror	r18
     8a6:	a7 95       	ror	r26
     8a8:	f0 40       	sbci	r31, 0x00	; 0
     8aa:	53 95       	inc	r21
     8ac:	c9 f7       	brne	.-14     	; 0x8a0 <.L6^B1>

000008ae <.L7^B1>:
     8ae:	7e f4       	brtc	.+30     	; 0x8ce <.L_add>
     8b0:	1f 16       	cp	r1, r31
     8b2:	ba 0b       	sbc	r27, r26
     8b4:	62 0b       	sbc	r22, r18
     8b6:	73 0b       	sbc	r23, r19
     8b8:	84 0b       	sbc	r24, r20
     8ba:	ba f0       	brmi	.+46     	; 0x8ea <.L_ret>

000008bc <.L8^B1>:
     8bc:	91 50       	subi	r25, 0x01	; 1
     8be:	a1 f0       	breq	.+40     	; 0x8e8 <.L9^B1>
     8c0:	ff 0f       	add	r31, r31
     8c2:	bb 1f       	adc	r27, r27
     8c4:	66 1f       	adc	r22, r22
     8c6:	77 1f       	adc	r23, r23
     8c8:	88 1f       	adc	r24, r24
     8ca:	c2 f7       	brpl	.-16     	; 0x8bc <.L8^B1>
     8cc:	0e c0       	rjmp	.+28     	; 0x8ea <.L_ret>

000008ce <.L_add>:
     8ce:	ba 0f       	add	r27, r26
     8d0:	62 1f       	adc	r22, r18
     8d2:	73 1f       	adc	r23, r19
     8d4:	84 1f       	adc	r24, r20
     8d6:	48 f4       	brcc	.+18     	; 0x8ea <.L_ret>
     8d8:	87 95       	ror	r24
     8da:	77 95       	ror	r23
     8dc:	67 95       	ror	r22
     8de:	b7 95       	ror	r27
     8e0:	f7 95       	ror	r31
     8e2:	9e 3f       	cpi	r25, 0xFE	; 254
     8e4:	08 f0       	brcs	.+2      	; 0x8e8 <.L9^B1>
     8e6:	b0 cf       	rjmp	.-160    	; 0x848 <.L_inf>

000008e8 <.L9^B1>:
     8e8:	93 95       	inc	r25

000008ea <.L_ret>:
     8ea:	88 0f       	add	r24, r24
     8ec:	08 f0       	brcs	.+2      	; 0x8f0 <.L1^B1>
     8ee:	99 27       	eor	r25, r25

000008f0 <.L1^B1>:
     8f0:	ee 0f       	add	r30, r30
     8f2:	97 95       	ror	r25
     8f4:	87 95       	ror	r24
     8f6:	08 95       	ret

000008f8 <__divsf3>:
     8f8:	0e 94 90 04 	call	0x920	; 0x920 <__divsf3x>
     8fc:	0c 94 71 05 	jmp	0xae2	; 0xae2 <__fp_round>

00000900 <.L0^B1>:
     900:	0e 94 6a 05 	call	0xad4	; 0xad4 <__fp_pscB>
     904:	58 f0       	brcs	.+22     	; 0x91c <.L_nan>
     906:	0e 94 63 05 	call	0xac6	; 0xac6 <__fp_pscA>
     90a:	40 f0       	brcs	.+16     	; 0x91c <.L_nan>
     90c:	29 f4       	brne	.+10     	; 0x918 <.L_zr>
     90e:	5f 3f       	cpi	r21, 0xFF	; 255
     910:	29 f0       	breq	.+10     	; 0x91c <.L_nan>

00000912 <.L_inf>:
     912:	0c 94 5a 05 	jmp	0xab4	; 0xab4 <__fp_inf>

00000916 <.L1^B1>:
     916:	51 11       	cpse	r21, r1

00000918 <.L_zr>:
     918:	0c 94 a5 05 	jmp	0xb4a	; 0xb4a <__fp_szero>

0000091c <.L_nan>:
     91c:	0c 94 60 05 	jmp	0xac0	; 0xac0 <__fp_nan>

00000920 <__divsf3x>:
     920:	0e 94 82 05 	call	0xb04	; 0xb04 <__fp_split3>
     924:	68 f3       	brcs	.-38     	; 0x900 <.L0^B1>

00000926 <__divsf3_pse>:
     926:	99 23       	and	r25, r25
     928:	b1 f3       	breq	.-20     	; 0x916 <.L1^B1>
     92a:	55 23       	and	r21, r21
     92c:	91 f3       	breq	.-28     	; 0x912 <.L_inf>
     92e:	95 1b       	sub	r25, r21
     930:	55 0b       	sbc	r21, r21
     932:	bb 27       	eor	r27, r27
     934:	aa 27       	eor	r26, r26

00000936 <.L2^B1>:
     936:	62 17       	cp	r22, r18
     938:	73 07       	cpc	r23, r19
     93a:	84 07       	cpc	r24, r20
     93c:	38 f0       	brcs	.+14     	; 0x94c <.L3^B1>
     93e:	9f 5f       	subi	r25, 0xFF	; 255
     940:	5f 4f       	sbci	r21, 0xFF	; 255
     942:	22 0f       	add	r18, r18
     944:	33 1f       	adc	r19, r19
     946:	44 1f       	adc	r20, r20
     948:	aa 1f       	adc	r26, r26
     94a:	a9 f3       	breq	.-22     	; 0x936 <.L2^B1>

0000094c <.L3^B1>:
     94c:	35 d0       	rcall	.+106    	; 0x9b8 <.L_div>
     94e:	0e 2e       	mov	r0, r30
     950:	3a f0       	brmi	.+14     	; 0x960 <.L5^B1>

00000952 <.L4^B1>:
     952:	e0 e8       	ldi	r30, 0x80	; 128
     954:	32 d0       	rcall	.+100    	; 0x9ba <.L_div1>
     956:	91 50       	subi	r25, 0x01	; 1
     958:	50 40       	sbci	r21, 0x00	; 0
     95a:	e6 95       	lsr	r30
     95c:	00 1c       	adc	r0, r0
     95e:	ca f7       	brpl	.-14     	; 0x952 <.L4^B1>

00000960 <.L5^B1>:
     960:	2b d0       	rcall	.+86     	; 0x9b8 <.L_div>
     962:	fe 2f       	mov	r31, r30
     964:	29 d0       	rcall	.+82     	; 0x9b8 <.L_div>
     966:	66 0f       	add	r22, r22
     968:	77 1f       	adc	r23, r23
     96a:	88 1f       	adc	r24, r24
     96c:	bb 1f       	adc	r27, r27
     96e:	26 17       	cp	r18, r22
     970:	37 07       	cpc	r19, r23
     972:	48 07       	cpc	r20, r24
     974:	ab 07       	cpc	r26, r27
     976:	b0 e8       	ldi	r27, 0x80	; 128
     978:	09 f0       	breq	.+2      	; 0x97c <.L4^B2>
     97a:	bb 0b       	sbc	r27, r27

0000097c <.L4^B2>:
     97c:	80 2d       	mov	r24, r0
     97e:	bf 01       	movw	r22, r30
     980:	ff 27       	eor	r31, r31
     982:	93 58       	subi	r25, 0x83	; 131
     984:	5f 4f       	sbci	r21, 0xFF	; 255
     986:	3a f0       	brmi	.+14     	; 0x996 <.L13^B1>
     988:	9e 3f       	cpi	r25, 0xFE	; 254
     98a:	51 05       	cpc	r21, r1
     98c:	78 f0       	brcs	.+30     	; 0x9ac <.L15^B1>
     98e:	0c 94 5a 05 	jmp	0xab4	; 0xab4 <__fp_inf>

00000992 <.L12^B1>:
     992:	0c 94 a5 05 	jmp	0xb4a	; 0xb4a <__fp_szero>

00000996 <.L13^B1>:
     996:	5f 3f       	cpi	r21, 0xFF	; 255
     998:	e4 f3       	brlt	.-8      	; 0x992 <.L12^B1>
     99a:	98 3e       	cpi	r25, 0xE8	; 232
     99c:	d4 f3       	brlt	.-12     	; 0x992 <.L12^B1>

0000099e <.L14^B1>:
     99e:	86 95       	lsr	r24
     9a0:	77 95       	ror	r23
     9a2:	67 95       	ror	r22
     9a4:	b7 95       	ror	r27
     9a6:	f7 95       	ror	r31
     9a8:	9f 5f       	subi	r25, 0xFF	; 255
     9aa:	c9 f7       	brne	.-14     	; 0x99e <.L14^B1>

000009ac <.L15^B1>:
     9ac:	88 0f       	add	r24, r24
     9ae:	91 1d       	adc	r25, r1
     9b0:	96 95       	lsr	r25
     9b2:	87 95       	ror	r24
     9b4:	97 f9       	bld	r25, 7
     9b6:	08 95       	ret

000009b8 <.L_div>:
     9b8:	e1 e0       	ldi	r30, 0x01	; 1

000009ba <.L_div1>:
     9ba:	66 0f       	add	r22, r22
     9bc:	77 1f       	adc	r23, r23
     9be:	88 1f       	adc	r24, r24
     9c0:	bb 1f       	adc	r27, r27
     9c2:	62 17       	cp	r22, r18
     9c4:	73 07       	cpc	r23, r19
     9c6:	84 07       	cpc	r24, r20
     9c8:	ba 07       	cpc	r27, r26
     9ca:	20 f0       	brcs	.+8      	; 0x9d4 <.L2^B2>
     9cc:	62 1b       	sub	r22, r18
     9ce:	73 0b       	sbc	r23, r19
     9d0:	84 0b       	sbc	r24, r20
     9d2:	ba 0b       	sbc	r27, r26

000009d4 <.L2^B2>:
     9d4:	ee 1f       	adc	r30, r30
     9d6:	88 f7       	brcc	.-30     	; 0x9ba <.L_div1>
     9d8:	e0 95       	com	r30
     9da:	08 95       	ret

000009dc <__fixunssfsi>:
     9dc:	0e 94 8a 05 	call	0xb14	; 0xb14 <__fp_splitA>
     9e0:	88 f0       	brcs	.+34     	; 0xa04 <.L_err>
     9e2:	9f 57       	subi	r25, 0x7F	; 127
     9e4:	98 f0       	brcs	.+38     	; 0xa0c <.L_zr>
     9e6:	b9 2f       	mov	r27, r25
     9e8:	99 27       	eor	r25, r25
     9ea:	b7 51       	subi	r27, 0x17	; 23
     9ec:	b0 f0       	brcs	.+44     	; 0xa1a <.L4^B1>
     9ee:	e1 f0       	breq	.+56     	; 0xa28 <.L_sign>

000009f0 <.L1^B1>:
     9f0:	66 0f       	add	r22, r22
     9f2:	77 1f       	adc	r23, r23
     9f4:	88 1f       	adc	r24, r24
     9f6:	99 1f       	adc	r25, r25
     9f8:	1a f0       	brmi	.+6      	; 0xa00 <.L2^B1>
     9fa:	ba 95       	dec	r27
     9fc:	c9 f7       	brne	.-14     	; 0x9f0 <.L1^B1>
     9fe:	14 c0       	rjmp	.+40     	; 0xa28 <.L_sign>

00000a00 <.L2^B1>:
     a00:	b1 30       	cpi	r27, 0x01	; 1
     a02:	91 f0       	breq	.+36     	; 0xa28 <.L_sign>

00000a04 <.L_err>:
     a04:	0e 94 a4 05 	call	0xb48	; 0xb48 <__fp_zero>
     a08:	b1 e0       	ldi	r27, 0x01	; 1
     a0a:	08 95       	ret

00000a0c <.L_zr>:
     a0c:	0c 94 a4 05 	jmp	0xb48	; 0xb48 <__fp_zero>

00000a10 <.L3^B1>:
     a10:	67 2f       	mov	r22, r23
     a12:	78 2f       	mov	r23, r24
     a14:	88 27       	eor	r24, r24
     a16:	b8 5f       	subi	r27, 0xF8	; 248
     a18:	39 f0       	breq	.+14     	; 0xa28 <.L_sign>

00000a1a <.L4^B1>:
     a1a:	b9 3f       	cpi	r27, 0xF9	; 249
     a1c:	cc f3       	brlt	.-14     	; 0xa10 <.L3^B1>

00000a1e <.L5^B1>:
     a1e:	86 95       	lsr	r24
     a20:	77 95       	ror	r23
     a22:	67 95       	ror	r22
     a24:	b3 95       	inc	r27
     a26:	d9 f7       	brne	.-10     	; 0xa1e <.L5^B1>

00000a28 <.L_sign>:
     a28:	3e f4       	brtc	.+14     	; 0xa38 <.L6^B1>
     a2a:	90 95       	com	r25
     a2c:	80 95       	com	r24
     a2e:	70 95       	com	r23
     a30:	61 95       	neg	r22
     a32:	7f 4f       	sbci	r23, 0xFF	; 255
     a34:	8f 4f       	sbci	r24, 0xFF	; 255
     a36:	9f 4f       	sbci	r25, 0xFF	; 255

00000a38 <.L6^B1>:
     a38:	08 95       	ret

00000a3a <__floatunsisf>:
     a3a:	e8 94       	clt
     a3c:	09 c0       	rjmp	.+18     	; 0xa50 <.L1^B1>

00000a3e <__floatsisf>:
     a3e:	97 fb       	bst	r25, 7
     a40:	3e f4       	brtc	.+14     	; 0xa50 <.L1^B1>
     a42:	90 95       	com	r25
     a44:	80 95       	com	r24
     a46:	70 95       	com	r23
     a48:	61 95       	neg	r22
     a4a:	7f 4f       	sbci	r23, 0xFF	; 255
     a4c:	8f 4f       	sbci	r24, 0xFF	; 255
     a4e:	9f 4f       	sbci	r25, 0xFF	; 255

00000a50 <.L1^B1>:
     a50:	99 23       	and	r25, r25
     a52:	a9 f0       	breq	.+42     	; 0xa7e <.L4^B1>
     a54:	f9 2f       	mov	r31, r25
     a56:	96 e9       	ldi	r25, 0x96	; 150
     a58:	bb 27       	eor	r27, r27

00000a5a <.L2^B1>:
     a5a:	93 95       	inc	r25
     a5c:	f6 95       	lsr	r31
     a5e:	87 95       	ror	r24
     a60:	77 95       	ror	r23
     a62:	67 95       	ror	r22
     a64:	b7 95       	ror	r27
     a66:	f1 11       	cpse	r31, r1
     a68:	f8 cf       	rjmp	.-16     	; 0xa5a <.L2^B1>
     a6a:	fa f4       	brpl	.+62     	; 0xaaa <.L_pack>
     a6c:	bb 0f       	add	r27, r27
     a6e:	11 f4       	brne	.+4      	; 0xa74 <.L3^B1>
     a70:	60 ff       	sbrs	r22, 0
     a72:	1b c0       	rjmp	.+54     	; 0xaaa <.L_pack>

00000a74 <.L3^B1>:
     a74:	6f 5f       	subi	r22, 0xFF	; 255
     a76:	7f 4f       	sbci	r23, 0xFF	; 255
     a78:	8f 4f       	sbci	r24, 0xFF	; 255
     a7a:	9f 4f       	sbci	r25, 0xFF	; 255
     a7c:	16 c0       	rjmp	.+44     	; 0xaaa <.L_pack>

00000a7e <.L4^B1>:
     a7e:	88 23       	and	r24, r24
     a80:	11 f0       	breq	.+4      	; 0xa86 <.L5^B1>
     a82:	96 e9       	ldi	r25, 0x96	; 150
     a84:	11 c0       	rjmp	.+34     	; 0xaa8 <.L8^B1>

00000a86 <.L5^B1>:
     a86:	77 23       	and	r23, r23
     a88:	21 f0       	breq	.+8      	; 0xa92 <.L6^B1>
     a8a:	9e e8       	ldi	r25, 0x8E	; 142
     a8c:	87 2f       	mov	r24, r23
     a8e:	76 2f       	mov	r23, r22
     a90:	05 c0       	rjmp	.+10     	; 0xa9c <.L7^B1>

00000a92 <.L6^B1>:
     a92:	66 23       	and	r22, r22
     a94:	71 f0       	breq	.+28     	; 0xab2 <.L9^B1>
     a96:	96 e8       	ldi	r25, 0x86	; 134
     a98:	86 2f       	mov	r24, r22
     a9a:	70 e0       	ldi	r23, 0x00	; 0

00000a9c <.L7^B1>:
     a9c:	60 e0       	ldi	r22, 0x00	; 0
     a9e:	2a f0       	brmi	.+10     	; 0xaaa <.L_pack>

00000aa0 <.L10^B1>:
     aa0:	9a 95       	dec	r25
     aa2:	66 0f       	add	r22, r22
     aa4:	77 1f       	adc	r23, r23
     aa6:	88 1f       	adc	r24, r24

00000aa8 <.L8^B1>:
     aa8:	da f7       	brpl	.-10     	; 0xaa0 <.L10^B1>

00000aaa <.L_pack>:
     aaa:	88 0f       	add	r24, r24
     aac:	96 95       	lsr	r25
     aae:	87 95       	ror	r24
     ab0:	97 f9       	bld	r25, 7

00000ab2 <.L9^B1>:
     ab2:	08 95       	ret

00000ab4 <__fp_inf>:
     ab4:	97 f9       	bld	r25, 7
     ab6:	9f 67       	ori	r25, 0x7F	; 127
     ab8:	80 e8       	ldi	r24, 0x80	; 128
     aba:	70 e0       	ldi	r23, 0x00	; 0
     abc:	60 e0       	ldi	r22, 0x00	; 0
     abe:	08 95       	ret

00000ac0 <__fp_nan>:
     ac0:	9f ef       	ldi	r25, 0xFF	; 255
     ac2:	80 ec       	ldi	r24, 0xC0	; 192
     ac4:	08 95       	ret

00000ac6 <__fp_pscA>:
     ac6:	00 24       	eor	r0, r0
     ac8:	0a 94       	dec	r0
     aca:	16 16       	cp	r1, r22
     acc:	17 06       	cpc	r1, r23
     ace:	18 06       	cpc	r1, r24
     ad0:	09 06       	cpc	r0, r25
     ad2:	08 95       	ret

00000ad4 <__fp_pscB>:
     ad4:	00 24       	eor	r0, r0
     ad6:	0a 94       	dec	r0
     ad8:	12 16       	cp	r1, r18
     ada:	13 06       	cpc	r1, r19
     adc:	14 06       	cpc	r1, r20
     ade:	05 06       	cpc	r0, r21
     ae0:	08 95       	ret

00000ae2 <__fp_round>:
     ae2:	09 2e       	mov	r0, r25
     ae4:	03 94       	inc	r0
     ae6:	00 0c       	add	r0, r0
     ae8:	11 f4       	brne	.+4      	; 0xaee <.L1^B1>
     aea:	88 23       	and	r24, r24
     aec:	52 f0       	brmi	.+20     	; 0xb02 <.L3^B1>

00000aee <.L1^B1>:
     aee:	bb 0f       	add	r27, r27
     af0:	40 f4       	brcc	.+16     	; 0xb02 <.L3^B1>
     af2:	bf 2b       	or	r27, r31
     af4:	11 f4       	brne	.+4      	; 0xafa <.L2^B1>
     af6:	60 ff       	sbrs	r22, 0
     af8:	04 c0       	rjmp	.+8      	; 0xb02 <.L3^B1>

00000afa <.L2^B1>:
     afa:	6f 5f       	subi	r22, 0xFF	; 255
     afc:	7f 4f       	sbci	r23, 0xFF	; 255
     afe:	8f 4f       	sbci	r24, 0xFF	; 255
     b00:	9f 4f       	sbci	r25, 0xFF	; 255

00000b02 <.L3^B1>:
     b02:	08 95       	ret

00000b04 <__fp_split3>:
     b04:	57 fd       	sbrc	r21, 7
     b06:	90 58       	subi	r25, 0x80	; 128
     b08:	44 0f       	add	r20, r20
     b0a:	55 1f       	adc	r21, r21
     b0c:	59 f0       	breq	.+22     	; 0xb24 <.L4^B1>
     b0e:	5f 3f       	cpi	r21, 0xFF	; 255
     b10:	71 f0       	breq	.+28     	; 0xb2e <.L5^B1>

00000b12 <.L1^B1>:
     b12:	47 95       	ror	r20

00000b14 <__fp_splitA>:
     b14:	88 0f       	add	r24, r24
     b16:	97 fb       	bst	r25, 7
     b18:	99 1f       	adc	r25, r25
     b1a:	61 f0       	breq	.+24     	; 0xb34 <.L6^B1>
     b1c:	9f 3f       	cpi	r25, 0xFF	; 255
     b1e:	79 f0       	breq	.+30     	; 0xb3e <.L7^B1>

00000b20 <.L3^B1>:
     b20:	87 95       	ror	r24
     b22:	08 95       	ret

00000b24 <.L4^B1>:
     b24:	12 16       	cp	r1, r18
     b26:	13 06       	cpc	r1, r19
     b28:	14 06       	cpc	r1, r20
     b2a:	55 1f       	adc	r21, r21
     b2c:	f2 cf       	rjmp	.-28     	; 0xb12 <.L1^B1>

00000b2e <.L5^B1>:
     b2e:	46 95       	lsr	r20
     b30:	f1 df       	rcall	.-30     	; 0xb14 <__fp_splitA>
     b32:	08 c0       	rjmp	.+16     	; 0xb44 <.L8^B1>

00000b34 <.L6^B1>:
     b34:	16 16       	cp	r1, r22
     b36:	17 06       	cpc	r1, r23
     b38:	18 06       	cpc	r1, r24
     b3a:	99 1f       	adc	r25, r25
     b3c:	f1 cf       	rjmp	.-30     	; 0xb20 <.L3^B1>

00000b3e <.L7^B1>:
     b3e:	86 95       	lsr	r24
     b40:	71 05       	cpc	r23, r1
     b42:	61 05       	cpc	r22, r1

00000b44 <.L8^B1>:
     b44:	08 94       	sec
     b46:	08 95       	ret

00000b48 <__fp_zero>:
     b48:	e8 94       	clt

00000b4a <__fp_szero>:
     b4a:	bb 27       	eor	r27, r27
     b4c:	66 27       	eor	r22, r22
     b4e:	77 27       	eor	r23, r23
     b50:	cb 01       	movw	r24, r22
     b52:	97 f9       	bld	r25, 7
     b54:	08 95       	ret

00000b56 <__mulsf3>:
     b56:	0e 94 be 05 	call	0xb7c	; 0xb7c <__mulsf3x>
     b5a:	0c 94 71 05 	jmp	0xae2	; 0xae2 <__fp_round>

00000b5e <.L0^B1>:
     b5e:	0e 94 63 05 	call	0xac6	; 0xac6 <__fp_pscA>
     b62:	38 f0       	brcs	.+14     	; 0xb72 <.L1^B1>
     b64:	0e 94 6a 05 	call	0xad4	; 0xad4 <__fp_pscB>
     b68:	20 f0       	brcs	.+8      	; 0xb72 <.L1^B1>
     b6a:	95 23       	and	r25, r21
     b6c:	11 f0       	breq	.+4      	; 0xb72 <.L1^B1>
     b6e:	0c 94 5a 05 	jmp	0xab4	; 0xab4 <__fp_inf>

00000b72 <.L1^B1>:
     b72:	0c 94 60 05 	jmp	0xac0	; 0xac0 <__fp_nan>

00000b76 <.L2^B1>:
     b76:	11 24       	eor	r1, r1
     b78:	0c 94 a5 05 	jmp	0xb4a	; 0xb4a <__fp_szero>

00000b7c <__mulsf3x>:
     b7c:	0e 94 82 05 	call	0xb04	; 0xb04 <__fp_split3>
     b80:	70 f3       	brcs	.-36     	; 0xb5e <.L0^B1>

00000b82 <__mulsf3_pse>:
     b82:	95 9f       	mul	r25, r21
     b84:	c1 f3       	breq	.-16     	; 0xb76 <.L2^B1>
     b86:	95 0f       	add	r25, r21
     b88:	50 e0       	ldi	r21, 0x00	; 0
     b8a:	55 1f       	adc	r21, r21
     b8c:	62 9f       	mul	r22, r18
     b8e:	f0 01       	movw	r30, r0
     b90:	72 9f       	mul	r23, r18
     b92:	bb 27       	eor	r27, r27
     b94:	f0 0d       	add	r31, r0
     b96:	b1 1d       	adc	r27, r1
     b98:	63 9f       	mul	r22, r19
     b9a:	aa 27       	eor	r26, r26
     b9c:	f0 0d       	add	r31, r0
     b9e:	b1 1d       	adc	r27, r1
     ba0:	aa 1f       	adc	r26, r26
     ba2:	64 9f       	mul	r22, r20
     ba4:	66 27       	eor	r22, r22
     ba6:	b0 0d       	add	r27, r0
     ba8:	a1 1d       	adc	r26, r1
     baa:	66 1f       	adc	r22, r22
     bac:	82 9f       	mul	r24, r18
     bae:	22 27       	eor	r18, r18
     bb0:	b0 0d       	add	r27, r0
     bb2:	a1 1d       	adc	r26, r1
     bb4:	62 1f       	adc	r22, r18
     bb6:	73 9f       	mul	r23, r19
     bb8:	b0 0d       	add	r27, r0
     bba:	a1 1d       	adc	r26, r1
     bbc:	62 1f       	adc	r22, r18
     bbe:	83 9f       	mul	r24, r19
     bc0:	a0 0d       	add	r26, r0
     bc2:	61 1d       	adc	r22, r1
     bc4:	22 1f       	adc	r18, r18
     bc6:	74 9f       	mul	r23, r20
     bc8:	33 27       	eor	r19, r19
     bca:	a0 0d       	add	r26, r0
     bcc:	61 1d       	adc	r22, r1
     bce:	23 1f       	adc	r18, r19
     bd0:	84 9f       	mul	r24, r20
     bd2:	60 0d       	add	r22, r0
     bd4:	21 1d       	adc	r18, r1
     bd6:	82 2f       	mov	r24, r18
     bd8:	76 2f       	mov	r23, r22
     bda:	6a 2f       	mov	r22, r26
     bdc:	11 24       	eor	r1, r1
     bde:	9f 57       	subi	r25, 0x7F	; 127
     be0:	50 40       	sbci	r21, 0x00	; 0
     be2:	9a f0       	brmi	.+38     	; 0xc0a <.L13^B1>
     be4:	f1 f0       	breq	.+60     	; 0xc22 <.L15^B1>

00000be6 <.L10^B1>:
     be6:	88 23       	and	r24, r24
     be8:	4a f0       	brmi	.+18     	; 0xbfc <.L11^B1>
     bea:	ee 0f       	add	r30, r30
     bec:	ff 1f       	adc	r31, r31
     bee:	bb 1f       	adc	r27, r27
     bf0:	66 1f       	adc	r22, r22
     bf2:	77 1f       	adc	r23, r23
     bf4:	88 1f       	adc	r24, r24
     bf6:	91 50       	subi	r25, 0x01	; 1
     bf8:	50 40       	sbci	r21, 0x00	; 0
     bfa:	a9 f7       	brne	.-22     	; 0xbe6 <.L10^B1>

00000bfc <.L11^B1>:
     bfc:	9e 3f       	cpi	r25, 0xFE	; 254
     bfe:	51 05       	cpc	r21, r1
     c00:	80 f0       	brcs	.+32     	; 0xc22 <.L15^B1>
     c02:	0c 94 5a 05 	jmp	0xab4	; 0xab4 <__fp_inf>

00000c06 <.L12^B1>:
     c06:	0c 94 a5 05 	jmp	0xb4a	; 0xb4a <__fp_szero>

00000c0a <.L13^B1>:
     c0a:	5f 3f       	cpi	r21, 0xFF	; 255
     c0c:	e4 f3       	brlt	.-8      	; 0xc06 <.L12^B1>
     c0e:	98 3e       	cpi	r25, 0xE8	; 232
     c10:	d4 f3       	brlt	.-12     	; 0xc06 <.L12^B1>

00000c12 <.L14^B1>:
     c12:	86 95       	lsr	r24
     c14:	77 95       	ror	r23
     c16:	67 95       	ror	r22
     c18:	b7 95       	ror	r27
     c1a:	f7 95       	ror	r31
     c1c:	e7 95       	ror	r30
     c1e:	9f 5f       	subi	r25, 0xFF	; 255
     c20:	c1 f7       	brne	.-16     	; 0xc12 <.L14^B1>

00000c22 <.L15^B1>:
     c22:	fe 2b       	or	r31, r30
     c24:	88 0f       	add	r24, r24
     c26:	91 1d       	adc	r25, r1
     c28:	96 95       	lsr	r25
     c2a:	87 95       	ror	r24
     c2c:	97 f9       	bld	r25, 7
     c2e:	08 95       	ret

00000c30 <sprintf>:
     c30:	ae e0       	ldi	r26, 0x0E	; 14
     c32:	b0 e0       	ldi	r27, 0x00	; 0
     c34:	ee e1       	ldi	r30, 0x1E	; 30
     c36:	f6 e0       	ldi	r31, 0x06	; 6
     c38:	0c 94 d8 08 	jmp	0x11b0	; 0x11b0 <__prologue_saves__+0x1c>

00000c3c <.L1^B1>:
     c3c:	0d 89       	ldd	r16, Y+21	; 0x15
     c3e:	1e 89       	ldd	r17, Y+22	; 0x16
     c40:	86 e0       	ldi	r24, 0x06	; 6
     c42:	8c 83       	std	Y+4, r24	; 0x04
     c44:	1a 83       	std	Y+2, r17	; 0x02
     c46:	09 83       	std	Y+1, r16	; 0x01
     c48:	8f ef       	ldi	r24, 0xFF	; 255
     c4a:	9f e7       	ldi	r25, 0x7F	; 127
     c4c:	9e 83       	std	Y+6, r25	; 0x06
     c4e:	8d 83       	std	Y+5, r24	; 0x05
     c50:	ae 01       	movw	r20, r28
     c52:	47 5e       	subi	r20, 0xE7	; 231
     c54:	5f 4f       	sbci	r21, 0xFF	; 255
     c56:	6f 89       	ldd	r22, Y+23	; 0x17
     c58:	78 8d       	ldd	r23, Y+24	; 0x18
     c5a:	ce 01       	movw	r24, r28
     c5c:	01 96       	adiw	r24, 0x01	; 1
     c5e:	0e 94 3b 06 	call	0xc76	; 0xc76 <vfprintf>
     c62:	2f 81       	ldd	r18, Y+7	; 0x07
     c64:	38 85       	ldd	r19, Y+8	; 0x08
     c66:	02 0f       	add	r16, r18
     c68:	13 1f       	adc	r17, r19
     c6a:	f8 01       	movw	r30, r16
     c6c:	10 82       	st	Z, r1
     c6e:	2e 96       	adiw	r28, 0x0e	; 14
     c70:	e4 e0       	ldi	r30, 0x04	; 4
     c72:	0c 94 f4 08 	jmp	0x11e8	; 0x11e8 <__epilogue_restores__+0x1c>

00000c76 <vfprintf>:
     c76:	ab e0       	ldi	r26, 0x0B	; 11
     c78:	b0 e0       	ldi	r27, 0x00	; 0
     c7a:	e1 e4       	ldi	r30, 0x41	; 65
     c7c:	f6 e0       	ldi	r31, 0x06	; 6
     c7e:	0c 94 cd 08 	jmp	0x119a	; 0x119a <__prologue_saves__+0x6>

00000c82 <.L1^B1>:
     c82:	6c 01       	movw	r12, r24
     c84:	7b 01       	movw	r14, r22
     c86:	8a 01       	movw	r16, r20
     c88:	fc 01       	movw	r30, r24
     c8a:	17 82       	std	Z+7, r1	; 0x07
     c8c:	16 82       	std	Z+6, r1	; 0x06
     c8e:	83 81       	ldd	r24, Z+3	; 0x03
     c90:	81 ff       	sbrs	r24, 1
     c92:	d9 c1       	rjmp	.+946    	; 0x1046 <.L81>
     c94:	9a e0       	ldi	r25, 0x0A	; 10
     c96:	59 2e       	mov	r5, r25

00000c98 <.L3>:
     c98:	f6 01       	movw	r30, r12
     c9a:	23 81       	ldd	r18, Z+3	; 0x03
     c9c:	f7 01       	movw	r30, r14
     c9e:	23 fd       	sbrc	r18, 3
     ca0:	85 91       	lpm	r24, Z+
     ca2:	23 ff       	sbrs	r18, 3
     ca4:	81 91       	ld	r24, Z+
     ca6:	7f 01       	movw	r14, r30
     ca8:	81 15       	cp	r24, r1
     caa:	09 f4       	brne	.+2      	; 0xcae <L0^A+0x2>

00000cac <L0^A>:
     cac:	1f c1       	rjmp	.+574    	; 0xeec <.L4>
     cae:	85 32       	cpi	r24, 0x25	; 37
     cb0:	39 f4       	brne	.+14     	; 0xcc0 <.L5>
     cb2:	23 fd       	sbrc	r18, 3
     cb4:	95 91       	lpm	r25, Z+
     cb6:	23 ff       	sbrs	r18, 3
     cb8:	91 91       	ld	r25, Z+
     cba:	7f 01       	movw	r14, r30
     cbc:	95 32       	cpi	r25, 0x25	; 37
     cbe:	29 f4       	brne	.+10     	; 0xcca <.L82>

00000cc0 <.L5>:
     cc0:	b6 01       	movw	r22, r12
     cc2:	90 e0       	ldi	r25, 0x00	; 0
     cc4:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     cc8:	e7 cf       	rjmp	.-50     	; 0xc98 <.L3>

00000cca <.L82>:
     cca:	30 e0       	ldi	r19, 0x00	; 0
     ccc:	91 2c       	mov	r9, r1
     cce:	61 2c       	mov	r6, r1
     cd0:	71 2c       	mov	r7, r1

00000cd2 <.L6>:
     cd2:	f0 e2       	ldi	r31, 0x20	; 32
     cd4:	7f 16       	cp	r7, r31
     cd6:	40 f5       	brcc	.+80     	; 0xd28 <.L8>
     cd8:	9b 32       	cpi	r25, 0x2B	; 43
     cda:	d9 f0       	breq	.+54     	; 0xd12 <.L9>
     cdc:	58 f4       	brcc	.+22     	; 0xcf4 <.L10>
     cde:	90 32       	cpi	r25, 0x20	; 32
     ce0:	d1 f0       	breq	.+52     	; 0xd16 <.L11>
     ce2:	93 32       	cpi	r25, 0x23	; 35
     ce4:	f1 f0       	breq	.+60     	; 0xd22 <.L12>

00000ce6 <.L13>:
     ce6:	9e 32       	cpi	r25, 0x2E	; 46
     ce8:	99 f5       	brne	.+102    	; 0xd50 <.L19>
     cea:	76 fc       	sbrc	r7, 6
     cec:	ff c0       	rjmp	.+510    	; 0xeec <.L4>
     cee:	68 94       	set
     cf0:	76 f8       	bld	r7, 6
     cf2:	06 c0       	rjmp	.+12     	; 0xd00 <.L16>

00000cf4 <.L10>:
     cf4:	9d 32       	cpi	r25, 0x2D	; 45
     cf6:	91 f0       	breq	.+36     	; 0xd1c <.L14>
     cf8:	90 33       	cpi	r25, 0x30	; 48
     cfa:	c1 f4       	brne	.+48     	; 0xd2c <.L15>
     cfc:	68 94       	set
     cfe:	70 f8       	bld	r7, 0

00000d00 <.L16>:
     d00:	f7 01       	movw	r30, r14
     d02:	23 fd       	sbrc	r18, 3
     d04:	95 91       	lpm	r25, Z+
     d06:	23 ff       	sbrs	r18, 3
     d08:	91 91       	ld	r25, Z+
     d0a:	7f 01       	movw	r14, r30
     d0c:	91 11       	cpse	r25, r1
     d0e:	e1 cf       	rjmp	.-62     	; 0xcd2 <.L6>
     d10:	29 c0       	rjmp	.+82     	; 0xd64 <.L17>

00000d12 <.L9>:
     d12:	68 94       	set
     d14:	71 f8       	bld	r7, 1

00000d16 <.L11>:
     d16:	68 94       	set
     d18:	72 f8       	bld	r7, 2
     d1a:	f2 cf       	rjmp	.-28     	; 0xd00 <.L16>

00000d1c <.L14>:
     d1c:	68 94       	set
     d1e:	73 f8       	bld	r7, 3
     d20:	ef cf       	rjmp	.-34     	; 0xd00 <.L16>

00000d22 <.L12>:
     d22:	68 94       	set
     d24:	74 f8       	bld	r7, 4
     d26:	ec cf       	rjmp	.-40     	; 0xd00 <.L16>

00000d28 <.L8>:
     d28:	77 fc       	sbrc	r7, 7
     d2a:	1c c0       	rjmp	.+56     	; 0xd64 <.L17>

00000d2c <.L15>:
     d2c:	80 ed       	ldi	r24, 0xD0	; 208
     d2e:	89 0f       	add	r24, r25
     d30:	8a 30       	cpi	r24, 0x0A	; 10
     d32:	c8 f6       	brcc	.-78     	; 0xce6 <.L13>
     d34:	76 fe       	sbrs	r7, 6
     d36:	05 c0       	rjmp	.+10     	; 0xd42 <.L18>
     d38:	95 9c       	mul	r9, r5
     d3a:	80 0d       	add	r24, r0
     d3c:	11 24       	eor	r1, r1
     d3e:	98 2e       	mov	r9, r24
     d40:	df cf       	rjmp	.-66     	; 0xd00 <.L16>

00000d42 <.L18>:
     d42:	65 9c       	mul	r6, r5
     d44:	80 0d       	add	r24, r0
     d46:	11 24       	eor	r1, r1
     d48:	68 2e       	mov	r6, r24
     d4a:	68 94       	set
     d4c:	75 f8       	bld	r7, 5
     d4e:	d8 cf       	rjmp	.-80     	; 0xd00 <.L16>

00000d50 <.L19>:
     d50:	9c 36       	cpi	r25, 0x6C	; 108
     d52:	19 f4       	brne	.+6      	; 0xd5a <.L20>
     d54:	68 94       	set
     d56:	77 f8       	bld	r7, 7
     d58:	d3 cf       	rjmp	.-90     	; 0xd00 <.L16>

00000d5a <.L20>:
     d5a:	9c 34       	cpi	r25, 0x4C	; 76
     d5c:	09 f4       	brne	.+2      	; 0xd60 <L0^A+0x2>

00000d5e <L0^A>:
     d5e:	4b c0       	rjmp	.+150    	; 0xdf6 <.L83>
     d60:	98 36       	cpi	r25, 0x68	; 104
     d62:	71 f2       	breq	.-100    	; 0xd00 <.L16>

00000d64 <.L17>:
     d64:	89 2f       	mov	r24, r25
     d66:	8f 7d       	andi	r24, 0xDF	; 223
     d68:	85 54       	subi	r24, 0x45	; 69
     d6a:	83 30       	cpi	r24, 0x03	; 3
     d6c:	08 f4       	brcc	.+2      	; 0xd70 <L0^A+0x2>

00000d6e <L0^A>:
     d6e:	45 c0       	rjmp	.+138    	; 0xdfa <.L21>
     d70:	93 36       	cpi	r25, 0x63	; 99
     d72:	09 f4       	brne	.+2      	; 0xd76 <L0^A+0x2>

00000d74 <L0^A>:
     d74:	66 c0       	rjmp	.+204    	; 0xe42 <.L22>
     d76:	93 37       	cpi	r25, 0x73	; 115
     d78:	09 f4       	brne	.+2      	; 0xd7c <L0^A+0x2>

00000d7a <L0^A>:
     d7a:	69 c0       	rjmp	.+210    	; 0xe4e <.L23>
     d7c:	93 35       	cpi	r25, 0x53	; 83
     d7e:	09 f4       	brne	.+2      	; 0xd82 <L0^A+0x2>

00000d80 <L0^A>:
     d80:	75 c0       	rjmp	.+234    	; 0xe6c <.L24>
     d82:	94 36       	cpi	r25, 0x64	; 100
     d84:	19 f0       	breq	.+6      	; 0xd8c <.L39>
     d86:	99 36       	cpi	r25, 0x69	; 105
     d88:	09 f0       	breq	.+2      	; 0xd8c <.L39>

00000d8a <L0^A>:
     d8a:	9f c0       	rjmp	.+318    	; 0xeca <.L40>

00000d8c <.L39>:
     d8c:	f8 01       	movw	r30, r16
     d8e:	77 fe       	sbrs	r7, 7
     d90:	95 c0       	rjmp	.+298    	; 0xebc <.L41>
     d92:	61 91       	ld	r22, Z+
     d94:	71 91       	ld	r23, Z+
     d96:	81 91       	ld	r24, Z+
     d98:	91 91       	ld	r25, Z+

00000d9a <.L128>:
     d9a:	8f 01       	movw	r16, r30
     d9c:	27 2d       	mov	r18, r7
     d9e:	2f 76       	andi	r18, 0x6F	; 111
     da0:	82 2e       	mov	r8, r18
     da2:	97 ff       	sbrs	r25, 7
     da4:	09 c0       	rjmp	.+18     	; 0xdb8 <.L43>
     da6:	90 95       	com	r25
     da8:	80 95       	com	r24
     daa:	70 95       	com	r23
     dac:	61 95       	neg	r22
     dae:	7f 4f       	sbci	r23, 0xFF	; 255
     db0:	8f 4f       	sbci	r24, 0xFF	; 255
     db2:	9f 4f       	sbci	r25, 0xFF	; 255
     db4:	68 94       	set
     db6:	87 f8       	bld	r8, 7

00000db8 <.L43>:
     db8:	2a e0       	ldi	r18, 0x0A	; 10
     dba:	30 e0       	ldi	r19, 0x00	; 0
     dbc:	ae 01       	movw	r20, r28
     dbe:	4f 5f       	subi	r20, 0xFF	; 255
     dc0:	5f 4f       	sbci	r21, 0xFF	; 255
     dc2:	5a 01       	movw	r10, r20
     dc4:	0e 94 6c 08 	call	0x10d8	; 0x10d8 <__ultoa_invert>
     dc8:	8a 19       	sub	r24, r10
     dca:	a8 2e       	mov	r10, r24

00000dcc <.L44>:
     dcc:	86 fe       	sbrs	r8, 6
     dce:	c4 c0       	rjmp	.+392    	; 0xf58 <.L54>
     dd0:	88 2d       	mov	r24, r8
     dd2:	8e 7f       	andi	r24, 0xFE	; 254
     dd4:	a9 14       	cp	r10, r9
     dd6:	08 f0       	brcs	.+2      	; 0xdda <L0^A+0x2>

00000dd8 <L0^A>:
     dd8:	be c0       	rjmp	.+380    	; 0xf56 <.L89>
     dda:	84 fe       	sbrs	r8, 4
     ddc:	11 c1       	rjmp	.+546    	; 0x1000 <.L90>
     dde:	82 fc       	sbrc	r8, 2
     de0:	05 c1       	rjmp	.+522    	; 0xfec <.L91>
     de2:	f8 2d       	mov	r31, r8
     de4:	fe 7e       	andi	r31, 0xEE	; 238
     de6:	8f 2e       	mov	r8, r31
     de8:	b9 2c       	mov	r11, r9

00000dea <.L55>:
     dea:	88 2d       	mov	r24, r8
     dec:	86 78       	andi	r24, 0x86	; 134
     dee:	81 15       	cp	r24, r1
     df0:	09 f4       	brne	.+2      	; 0xdf4 <L0^A+0x2>

00000df2 <L0^A>:
     df2:	bf c0       	rjmp	.+382    	; 0xf72 <.L58>
     df4:	00 c1       	rjmp	.+512    	; 0xff6 <.L130>

00000df6 <.L83>:
     df6:	31 e0       	ldi	r19, 0x01	; 1
     df8:	83 cf       	rjmp	.-250    	; 0xd00 <.L16>

00000dfa <.L21>:
     dfa:	31 15       	cp	r19, r1
     dfc:	f9 f0       	breq	.+62     	; 0xe3c <.L26>
     dfe:	08 5f       	subi	r16, 0xF8	; 248
     e00:	1f 4f       	sbci	r17, 0xFF	; 255

00000e02 <.L27>:
     e02:	8f e3       	ldi	r24, 0x3F	; 63
     e04:	89 83       	std	Y+1, r24	; 0x01

00000e06 <.L127>:
     e06:	88 24       	eor	r8, r8
     e08:	83 94       	inc	r8
     e0a:	91 2c       	mov	r9, r1
     e0c:	ae 01       	movw	r20, r28
     e0e:	4f 5f       	subi	r20, 0xFF	; 255
     e10:	5f 4f       	sbci	r21, 0xFF	; 255
     e12:	5a 01       	movw	r10, r20

00000e14 <.L28>:
     e14:	e8 94       	clt
     e16:	77 f8       	bld	r7, 7

00000e18 <.L30>:
     e18:	73 fc       	sbrc	r7, 3
     e1a:	03 c0       	rjmp	.+6      	; 0xe22 <.L33>

00000e1c <.L32>:
     e1c:	86 14       	cp	r8, r6
     e1e:	91 04       	cpc	r9, r1
     e20:	b0 f1       	brcs	.+108    	; 0xe8e <.L34>

00000e22 <.L33>:
     e22:	81 14       	cp	r8, r1
     e24:	91 04       	cpc	r9, r1
     e26:	d1 f5       	brne	.+116    	; 0xe9c <.L37>

00000e28 <.L38>:
     e28:	61 14       	cp	r6, r1
     e2a:	09 f4       	brne	.+2      	; 0xe2e <L0^A+0x2>

00000e2c <L0^A>:
     e2c:	35 cf       	rjmp	.-406    	; 0xc98 <.L3>
     e2e:	b6 01       	movw	r22, r12
     e30:	80 e2       	ldi	r24, 0x20	; 32
     e32:	90 e0       	ldi	r25, 0x00	; 0
     e34:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     e38:	6a 94       	dec	r6
     e3a:	f6 cf       	rjmp	.-20     	; 0xe28 <.L38>

00000e3c <.L26>:
     e3c:	0c 5f       	subi	r16, 0xFC	; 252
     e3e:	1f 4f       	sbci	r17, 0xFF	; 255
     e40:	e0 cf       	rjmp	.-64     	; 0xe02 <.L27>

00000e42 <.L22>:
     e42:	f8 01       	movw	r30, r16
     e44:	80 81       	ld	r24, Z
     e46:	89 83       	std	Y+1, r24	; 0x01
     e48:	0e 5f       	subi	r16, 0xFE	; 254
     e4a:	1f 4f       	sbci	r17, 0xFF	; 255
     e4c:	dc cf       	rjmp	.-72     	; 0xe06 <.L127>

00000e4e <.L23>:
     e4e:	f8 01       	movw	r30, r16
     e50:	a1 90       	ld	r10, Z+
     e52:	b1 90       	ld	r11, Z+
     e54:	8f 01       	movw	r16, r30
     e56:	69 2d       	mov	r22, r9
     e58:	70 e0       	ldi	r23, 0x00	; 0
     e5a:	76 fc       	sbrc	r7, 6
     e5c:	02 c0       	rjmp	.+4      	; 0xe62 <.L29>
     e5e:	6f ef       	ldi	r22, 0xFF	; 255
     e60:	7f ef       	ldi	r23, 0xFF	; 255

00000e62 <.L29>:
     e62:	c5 01       	movw	r24, r10
     e64:	0e 94 31 08 	call	0x1062	; 0x1062 <strnlen>
     e68:	4c 01       	movw	r8, r24
     e6a:	d4 cf       	rjmp	.-88     	; 0xe14 <.L28>

00000e6c <.L24>:
     e6c:	f8 01       	movw	r30, r16
     e6e:	a1 90       	ld	r10, Z+
     e70:	b1 90       	ld	r11, Z+
     e72:	8f 01       	movw	r16, r30
     e74:	69 2d       	mov	r22, r9
     e76:	70 e0       	ldi	r23, 0x00	; 0
     e78:	76 fc       	sbrc	r7, 6
     e7a:	02 c0       	rjmp	.+4      	; 0xe80 <.L31>
     e7c:	6f ef       	ldi	r22, 0xFF	; 255
     e7e:	7f ef       	ldi	r23, 0xFF	; 255

00000e80 <.L31>:
     e80:	c5 01       	movw	r24, r10
     e82:	0e 94 26 08 	call	0x104c	; 0x104c <strnlen_P>
     e86:	4c 01       	movw	r8, r24
     e88:	68 94       	set
     e8a:	77 f8       	bld	r7, 7
     e8c:	c5 cf       	rjmp	.-118    	; 0xe18 <.L30>

00000e8e <.L34>:
     e8e:	b6 01       	movw	r22, r12
     e90:	80 e2       	ldi	r24, 0x20	; 32
     e92:	90 e0       	ldi	r25, 0x00	; 0
     e94:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     e98:	6a 94       	dec	r6
     e9a:	c0 cf       	rjmp	.-128    	; 0xe1c <.L32>

00000e9c <.L37>:
     e9c:	f5 01       	movw	r30, r10
     e9e:	77 fc       	sbrc	r7, 7
     ea0:	85 91       	lpm	r24, Z+
     ea2:	77 fe       	sbrs	r7, 7
     ea4:	81 91       	ld	r24, Z+
     ea6:	5f 01       	movw	r10, r30
     ea8:	b6 01       	movw	r22, r12
     eaa:	90 e0       	ldi	r25, 0x00	; 0
     eac:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     eb0:	61 10       	cpse	r6, r1
     eb2:	6a 94       	dec	r6
     eb4:	f1 e0       	ldi	r31, 0x01	; 1
     eb6:	8f 1a       	sub	r8, r31
     eb8:	91 08       	sbc	r9, r1
     eba:	b3 cf       	rjmp	.-154    	; 0xe22 <.L33>

00000ebc <.L41>:
     ebc:	61 91       	ld	r22, Z+
     ebe:	71 91       	ld	r23, Z+
     ec0:	07 2e       	mov	r0, r23
     ec2:	00 0c       	add	r0, r0
     ec4:	88 0b       	sbc	r24, r24
     ec6:	99 0b       	sbc	r25, r25
     ec8:	68 cf       	rjmp	.-304    	; 0xd9a <.L128>

00000eca <.L40>:
     eca:	87 2c       	mov	r8, r7
     ecc:	e8 94       	clt
     ece:	84 f8       	bld	r8, 4
     ed0:	2a e0       	ldi	r18, 0x0A	; 10
     ed2:	30 e0       	ldi	r19, 0x00	; 0
     ed4:	95 37       	cpi	r25, 0x75	; 117
     ed6:	39 f1       	breq	.+78     	; 0xf26 <.L46>
     ed8:	57 2d       	mov	r21, r7
     eda:	59 7f       	andi	r21, 0xF9	; 249
     edc:	85 2e       	mov	r8, r21
     ede:	90 37       	cpi	r25, 0x70	; 112
     ee0:	99 f0       	breq	.+38     	; 0xf08 <.L47>
     ee2:	58 f4       	brcc	.+22     	; 0xefa <.L48>
     ee4:	98 35       	cpi	r25, 0x58	; 88
     ee6:	a9 f0       	breq	.+42     	; 0xf12 <.L49>
     ee8:	9f 36       	cpi	r25, 0x6F	; 111
     eea:	d9 f0       	breq	.+54     	; 0xf22 <.L86>

00000eec <.L4>:
     eec:	f6 01       	movw	r30, r12
     eee:	86 81       	ldd	r24, Z+6	; 0x06
     ef0:	97 81       	ldd	r25, Z+7	; 0x07

00000ef2 <.L1>:
     ef2:	2b 96       	adiw	r28, 0x0b	; 11
     ef4:	ef e0       	ldi	r30, 0x0F	; 15
     ef6:	0c 94 e9 08 	jmp	0x11d2	; 0x11d2 <__epilogue_restores__+0x6>

00000efa <.L48>:
     efa:	98 37       	cpi	r25, 0x78	; 120
     efc:	b9 f7       	brne	.-18     	; 0xeec <.L4>
     efe:	74 fc       	sbrc	r7, 4
     f00:	05 c0       	rjmp	.+10     	; 0xf0c <.L51>

00000f02 <.L87>:
     f02:	20 e1       	ldi	r18, 0x10	; 16
     f04:	30 e0       	ldi	r19, 0x00	; 0
     f06:	0f c0       	rjmp	.+30     	; 0xf26 <.L46>

00000f08 <.L47>:
     f08:	68 94       	set
     f0a:	84 f8       	bld	r8, 4

00000f0c <.L51>:
     f0c:	68 94       	set
     f0e:	82 f8       	bld	r8, 2
     f10:	f8 cf       	rjmp	.-16     	; 0xf02 <.L87>

00000f12 <.L49>:
     f12:	74 fe       	sbrs	r7, 4
     f14:	03 c0       	rjmp	.+6      	; 0xf1c <.L88>
     f16:	87 2d       	mov	r24, r7
     f18:	86 60       	ori	r24, 0x06	; 6
     f1a:	88 2e       	mov	r8, r24

00000f1c <.L88>:
     f1c:	20 e1       	ldi	r18, 0x10	; 16
     f1e:	32 e0       	ldi	r19, 0x02	; 2
     f20:	02 c0       	rjmp	.+4      	; 0xf26 <.L46>

00000f22 <.L86>:
     f22:	28 e0       	ldi	r18, 0x08	; 8
     f24:	30 e0       	ldi	r19, 0x00	; 0

00000f26 <.L46>:
     f26:	f8 01       	movw	r30, r16
     f28:	87 fe       	sbrs	r8, 7
     f2a:	10 c0       	rjmp	.+32     	; 0xf4c <.L52>
     f2c:	61 91       	ld	r22, Z+
     f2e:	71 91       	ld	r23, Z+
     f30:	81 91       	ld	r24, Z+
     f32:	91 91       	ld	r25, Z+

00000f34 <.L129>:
     f34:	8f 01       	movw	r16, r30
     f36:	fe 01       	movw	r30, r28
     f38:	31 96       	adiw	r30, 0x01	; 1
     f3a:	5f 01       	movw	r10, r30
     f3c:	af 01       	movw	r20, r30
     f3e:	0e 94 6c 08 	call	0x10d8	; 0x10d8 <__ultoa_invert>
     f42:	8a 19       	sub	r24, r10
     f44:	a8 2e       	mov	r10, r24
     f46:	e8 94       	clt
     f48:	87 f8       	bld	r8, 7
     f4a:	40 cf       	rjmp	.-384    	; 0xdcc <.L44>

00000f4c <.L52>:
     f4c:	61 91       	ld	r22, Z+
     f4e:	71 91       	ld	r23, Z+
     f50:	80 e0       	ldi	r24, 0x00	; 0
     f52:	90 e0       	ldi	r25, 0x00	; 0
     f54:	ef cf       	rjmp	.-34     	; 0xf34 <.L129>

00000f56 <.L89>:
     f56:	88 2e       	mov	r8, r24

00000f58 <.L54>:
     f58:	ba 2c       	mov	r11, r10
     f5a:	84 fe       	sbrs	r8, 4
     f5c:	46 cf       	rjmp	.-372    	; 0xdea <.L55>

00000f5e <.L56>:
     f5e:	fe 01       	movw	r30, r28
     f60:	ea 0d       	add	r30, r10
     f62:	f1 1d       	adc	r31, r1
     f64:	80 81       	ld	r24, Z
     f66:	80 33       	cpi	r24, 0x30	; 48
     f68:	09 f0       	breq	.+2      	; 0xf6c <L0^A+0x2>

00000f6a <L0^A>:
     f6a:	43 c0       	rjmp	.+134    	; 0xff2 <.L57>
     f6c:	28 2d       	mov	r18, r8
     f6e:	29 7e       	andi	r18, 0xE9	; 233
     f70:	82 2e       	mov	r8, r18

00000f72 <.L58>:
     f72:	83 fc       	sbrc	r8, 3
     f74:	0e c0       	rjmp	.+28     	; 0xf92 <.L60>
     f76:	80 fe       	sbrs	r8, 0
     f78:	4f c0       	rjmp	.+158    	; 0x1018 <.L93>
     f7a:	9a 2c       	mov	r9, r10
     f7c:	b6 14       	cp	r11, r6
     f7e:	18 f4       	brcc	.+6      	; 0xf86 <.L80>
     f80:	96 0c       	add	r9, r6
     f82:	9b 18       	sub	r9, r11
     f84:	b6 2c       	mov	r11, r6

00000f86 <.L80>:
     f86:	86 2d       	mov	r24, r6
     f88:	8b 19       	sub	r24, r11
     f8a:	6b 14       	cp	r6, r11
     f8c:	08 f4       	brcc	.+2      	; 0xf90 <.L65>
     f8e:	80 e0       	ldi	r24, 0x00	; 0

00000f90 <.L65>:
     f90:	b8 0e       	add	r11, r24

00000f92 <.L60>:
     f92:	b6 14       	cp	r11, r6
     f94:	08 f0       	brcs	.+2      	; 0xf98 <L0^A+0x2>

00000f96 <L0^A>:
     f96:	42 c0       	rjmp	.+132    	; 0x101c <.L95>
     f98:	6b 18       	sub	r6, r11

00000f9a <.L67>:
     f9a:	84 fe       	sbrs	r8, 4
     f9c:	41 c0       	rjmp	.+130    	; 0x1020 <.L68>
     f9e:	b6 01       	movw	r22, r12
     fa0:	80 e3       	ldi	r24, 0x30	; 48
     fa2:	90 e0       	ldi	r25, 0x00	; 0
     fa4:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     fa8:	82 fe       	sbrs	r8, 2
     faa:	09 c0       	rjmp	.+18     	; 0xfbe <.L75>
     fac:	88 e5       	ldi	r24, 0x58	; 88
     fae:	90 e0       	ldi	r25, 0x00	; 0
     fb0:	81 fc       	sbrc	r8, 1
     fb2:	02 c0       	rjmp	.+4      	; 0xfb8 <.L71>
     fb4:	88 e7       	ldi	r24, 0x78	; 120
     fb6:	90 e0       	ldi	r25, 0x00	; 0

00000fb8 <.L71>:
     fb8:	b6 01       	movw	r22, r12

00000fba <.L131>:
     fba:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>

00000fbe <.L75>:
     fbe:	a9 14       	cp	r10, r9
     fc0:	d8 f1       	brcs	.+118    	; 0x1038 <.L76>
     fc2:	aa 94       	dec	r10
     fc4:	b1 2c       	mov	r11, r1
     fc6:	4f ef       	ldi	r20, 0xFF	; 255
     fc8:	a4 1a       	sub	r10, r20
     fca:	b4 0a       	sbc	r11, r20
     fcc:	ce 01       	movw	r24, r28
     fce:	01 96       	adiw	r24, 0x01	; 1
     fd0:	4c 01       	movw	r8, r24
     fd2:	a8 0e       	add	r10, r24
     fd4:	b9 1e       	adc	r11, r25

00000fd6 <.L77>:
     fd6:	f5 01       	movw	r30, r10
     fd8:	82 91       	ld	r24, -Z
     fda:	5f 01       	movw	r10, r30
     fdc:	b6 01       	movw	r22, r12
     fde:	90 e0       	ldi	r25, 0x00	; 0
     fe0:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
     fe4:	8a 14       	cp	r8, r10
     fe6:	9b 04       	cpc	r9, r11
     fe8:	b1 f7       	brne	.-20     	; 0xfd6 <.L77>
     fea:	1e cf       	rjmp	.-452    	; 0xe28 <.L38>

00000fec <.L91>:
     fec:	b9 2c       	mov	r11, r9
     fee:	88 2e       	mov	r8, r24
     ff0:	b6 cf       	rjmp	.-148    	; 0xf5e <.L56>

00000ff2 <.L57>:
     ff2:	82 fc       	sbrc	r8, 2
     ff4:	02 c0       	rjmp	.+4      	; 0xffa <.L59>

00000ff6 <.L130>:
     ff6:	b3 94       	inc	r11
     ff8:	bc cf       	rjmp	.-136    	; 0xf72 <.L58>

00000ffa <.L59>:
     ffa:	b3 94       	inc	r11
     ffc:	b3 94       	inc	r11
     ffe:	b9 cf       	rjmp	.-142    	; 0xf72 <.L58>

00001000 <.L90>:
    1000:	b9 2c       	mov	r11, r9
    1002:	88 2e       	mov	r8, r24
    1004:	f2 ce       	rjmp	.-540    	; 0xdea <.L55>

00001006 <.L63>:
    1006:	b6 01       	movw	r22, r12
    1008:	80 e2       	ldi	r24, 0x20	; 32
    100a:	90 e0       	ldi	r25, 0x00	; 0
    100c:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
    1010:	73 94       	inc	r7

00001012 <.L61>:
    1012:	76 14       	cp	r7, r6
    1014:	c0 f3       	brcs	.-16     	; 0x1006 <.L63>
    1016:	b7 cf       	rjmp	.-146    	; 0xf86 <.L80>

00001018 <.L93>:
    1018:	7b 2c       	mov	r7, r11
    101a:	fb cf       	rjmp	.-10     	; 0x1012 <.L61>

0000101c <.L95>:
    101c:	61 2c       	mov	r6, r1
    101e:	bd cf       	rjmp	.-134    	; 0xf9a <.L67>

00001020 <.L68>:
    1020:	88 2d       	mov	r24, r8
    1022:	86 78       	andi	r24, 0x86	; 134
    1024:	81 15       	cp	r24, r1
    1026:	59 f2       	breq	.-106    	; 0xfbe <.L75>
    1028:	80 e2       	ldi	r24, 0x20	; 32
    102a:	81 fc       	sbrc	r8, 1
    102c:	8b e2       	ldi	r24, 0x2B	; 43
    102e:	87 fc       	sbrc	r8, 7
    1030:	8d e2       	ldi	r24, 0x2D	; 45
    1032:	b6 01       	movw	r22, r12
    1034:	90 e0       	ldi	r25, 0x00	; 0
    1036:	c1 cf       	rjmp	.-126    	; 0xfba <.L131>

00001038 <.L76>:
    1038:	b6 01       	movw	r22, r12
    103a:	80 e3       	ldi	r24, 0x30	; 48
    103c:	90 e0       	ldi	r25, 0x00	; 0
    103e:	0e 94 3c 08 	call	0x1078	; 0x1078 <fputc>
    1042:	9a 94       	dec	r9
    1044:	bc cf       	rjmp	.-136    	; 0xfbe <.L75>

00001046 <.L81>:
    1046:	8f ef       	ldi	r24, 0xFF	; 255
    1048:	9f ef       	ldi	r25, 0xFF	; 255
    104a:	53 cf       	rjmp	.-346    	; 0xef2 <.L1>

0000104c <strnlen_P>:
    104c:	fc 01       	movw	r30, r24

0000104e <.L_strnlen_P_loop>:
    104e:	05 90       	lpm	r0, Z+
    1050:	61 50       	subi	r22, 0x01	; 1
    1052:	70 40       	sbci	r23, 0x00	; 0
    1054:	01 10       	cpse	r0, r1
    1056:	d8 f7       	brcc	.-10     	; 0x104e <.L_strnlen_P_loop>
    1058:	80 95       	com	r24
    105a:	90 95       	com	r25
    105c:	8e 0f       	add	r24, r30
    105e:	9f 1f       	adc	r25, r31
    1060:	08 95       	ret

00001062 <strnlen>:
    1062:	fc 01       	movw	r30, r24

00001064 <.L_strnlen_loop>:
    1064:	61 50       	subi	r22, 0x01	; 1
    1066:	70 40       	sbci	r23, 0x00	; 0
    1068:	01 90       	ld	r0, Z+
    106a:	01 10       	cpse	r0, r1
    106c:	d8 f7       	brcc	.-10     	; 0x1064 <.L_strnlen_loop>
    106e:	80 95       	com	r24
    1070:	90 95       	com	r25
    1072:	8e 0f       	add	r24, r30
    1074:	9f 1f       	adc	r25, r31
    1076:	08 95       	ret

00001078 <fputc>:
    1078:	0f 93       	push	r16
    107a:	1f 93       	push	r17
    107c:	cf 93       	push	r28
    107e:	df 93       	push	r29
    1080:	18 2f       	mov	r17, r24
    1082:	09 2f       	mov	r16, r25
    1084:	eb 01       	movw	r28, r22
    1086:	8b 81       	ldd	r24, Y+3	; 0x03
    1088:	81 fd       	sbrc	r24, 1
    108a:	09 c0       	rjmp	.+18     	; 0x109e <.L2>

0000108c <.L7>:
    108c:	1f ef       	ldi	r17, 0xFF	; 255
    108e:	0f ef       	ldi	r16, 0xFF	; 255

00001090 <.L3>:
    1090:	81 2f       	mov	r24, r17
    1092:	90 2f       	mov	r25, r16
    1094:	df 91       	pop	r29
    1096:	cf 91       	pop	r28
    1098:	1f 91       	pop	r17
    109a:	0f 91       	pop	r16
    109c:	08 95       	ret

0000109e <.L2>:
    109e:	82 ff       	sbrs	r24, 2
    10a0:	14 c0       	rjmp	.+40     	; 0x10ca <.L4>
    10a2:	2e 81       	ldd	r18, Y+6	; 0x06
    10a4:	3f 81       	ldd	r19, Y+7	; 0x07
    10a6:	8c 81       	ldd	r24, Y+4	; 0x04
    10a8:	9d 81       	ldd	r25, Y+5	; 0x05
    10aa:	28 17       	cp	r18, r24
    10ac:	39 07       	cpc	r19, r25
    10ae:	3c f4       	brge	.+14     	; 0x10be <.L8>
    10b0:	e8 81       	ld	r30, Y
    10b2:	f9 81       	ldd	r31, Y+1	; 0x01
    10b4:	cf 01       	movw	r24, r30
    10b6:	01 96       	adiw	r24, 0x01	; 1
    10b8:	99 83       	std	Y+1, r25	; 0x01
    10ba:	88 83       	st	Y, r24
    10bc:	10 83       	st	Z, r17

000010be <.L8>:
    10be:	8e 81       	ldd	r24, Y+6	; 0x06
    10c0:	9f 81       	ldd	r25, Y+7	; 0x07
    10c2:	01 96       	adiw	r24, 0x01	; 1
    10c4:	9f 83       	std	Y+7, r25	; 0x07
    10c6:	8e 83       	std	Y+6, r24	; 0x06
    10c8:	e3 cf       	rjmp	.-58     	; 0x1090 <.L3>

000010ca <.L4>:
    10ca:	e8 85       	ldd	r30, Y+8	; 0x08
    10cc:	f9 85       	ldd	r31, Y+9	; 0x09
    10ce:	81 2f       	mov	r24, r17
    10d0:	09 95       	icall
    10d2:	89 2b       	or	r24, r25
    10d4:	a1 f3       	breq	.-24     	; 0x10be <.L8>
    10d6:	da cf       	rjmp	.-76     	; 0x108c <.L7>

000010d8 <__ultoa_invert>:
    10d8:	fa 01       	movw	r30, r20
    10da:	aa 27       	eor	r26, r26
    10dc:	28 30       	cpi	r18, 0x08	; 8
    10de:	51 f1       	breq	.+84     	; 0x1134 <.L_oct>
    10e0:	20 31       	cpi	r18, 0x10	; 16
    10e2:	81 f1       	breq	.+96     	; 0x1144 <.L_hex>
    10e4:	e8 94       	clt

000010e6 <.L_dec_loop>:
    10e6:	6f 93       	push	r22
    10e8:	6e 7f       	andi	r22, 0xFE	; 254
    10ea:	6e 5f       	subi	r22, 0xFE	; 254
    10ec:	7f 4f       	sbci	r23, 0xFF	; 255
    10ee:	8f 4f       	sbci	r24, 0xFF	; 255
    10f0:	9f 4f       	sbci	r25, 0xFF	; 255
    10f2:	af 4f       	sbci	r26, 0xFF	; 255
    10f4:	b1 e0       	ldi	r27, 0x01	; 1
    10f6:	3e d0       	rcall	.+124    	; 0x1174 <.L_div_add>
    10f8:	b4 e0       	ldi	r27, 0x04	; 4
    10fa:	3c d0       	rcall	.+120    	; 0x1174 <.L_div_add>
    10fc:	67 0f       	add	r22, r23
    10fe:	78 1f       	adc	r23, r24
    1100:	89 1f       	adc	r24, r25
    1102:	9a 1f       	adc	r25, r26
    1104:	a1 1d       	adc	r26, r1
    1106:	68 0f       	add	r22, r24
    1108:	79 1f       	adc	r23, r25
    110a:	8a 1f       	adc	r24, r26
    110c:	91 1d       	adc	r25, r1
    110e:	a1 1d       	adc	r26, r1
    1110:	6a 0f       	add	r22, r26
    1112:	71 1d       	adc	r23, r1
    1114:	81 1d       	adc	r24, r1
    1116:	91 1d       	adc	r25, r1
    1118:	a1 1d       	adc	r26, r1
    111a:	20 d0       	rcall	.+64     	; 0x115c <.L_lsr_4>
    111c:	09 f4       	brne	.+2      	; 0x1120 <.L1^B1>
    111e:	68 94       	set

00001120 <.L1^B1>:
    1120:	3f 91       	pop	r19
    1122:	2a e0       	ldi	r18, 0x0A	; 10
    1124:	26 9f       	mul	r18, r22
    1126:	11 24       	eor	r1, r1
    1128:	30 19       	sub	r19, r0
    112a:	30 5d       	subi	r19, 0xD0	; 208
    112c:	31 93       	st	Z+, r19
    112e:	de f6       	brtc	.-74     	; 0x10e6 <.L_dec_loop>

00001130 <.L_eos>:
    1130:	cf 01       	movw	r24, r30
    1132:	08 95       	ret

00001134 <.L_oct>:
    1134:	46 2f       	mov	r20, r22
    1136:	47 70       	andi	r20, 0x07	; 7
    1138:	40 5d       	subi	r20, 0xD0	; 208
    113a:	41 93       	st	Z+, r20
    113c:	b3 e0       	ldi	r27, 0x03	; 3
    113e:	0f d0       	rcall	.+30     	; 0x115e <.L_lsr>
    1140:	c9 f7       	brne	.-14     	; 0x1134 <.L_oct>
    1142:	f6 cf       	rjmp	.-20     	; 0x1130 <.L_eos>

00001144 <.L_hex>:
    1144:	46 2f       	mov	r20, r22
    1146:	4f 70       	andi	r20, 0x0F	; 15
    1148:	40 5d       	subi	r20, 0xD0	; 208
    114a:	4a 33       	cpi	r20, 0x3A	; 58
    114c:	18 f0       	brcs	.+6      	; 0x1154 <.L3^B1>
    114e:	49 5d       	subi	r20, 0xD9	; 217
    1150:	31 fd       	sbrc	r19, 1
    1152:	40 52       	subi	r20, 0x20	; 32

00001154 <.L3^B1>:
    1154:	41 93       	st	Z+, r20
    1156:	02 d0       	rcall	.+4      	; 0x115c <.L_lsr_4>
    1158:	a9 f7       	brne	.-22     	; 0x1144 <.L_hex>
    115a:	ea cf       	rjmp	.-44     	; 0x1130 <.L_eos>

0000115c <.L_lsr_4>:
    115c:	b4 e0       	ldi	r27, 0x04	; 4

0000115e <.L_lsr>:
    115e:	a6 95       	lsr	r26
    1160:	97 95       	ror	r25
    1162:	87 95       	ror	r24
    1164:	77 95       	ror	r23
    1166:	67 95       	ror	r22
    1168:	ba 95       	dec	r27
    116a:	c9 f7       	brne	.-14     	; 0x115e <.L_lsr>
    116c:	00 97       	sbiw	r24, 0x00	; 0
    116e:	61 05       	cpc	r22, r1
    1170:	71 05       	cpc	r23, r1
    1172:	08 95       	ret

00001174 <.L_div_add>:
    1174:	9b 01       	movw	r18, r22
    1176:	ac 01       	movw	r20, r24
    1178:	0a 2e       	mov	r0, r26

0000117a <.L7^B1>:
    117a:	06 94       	lsr	r0
    117c:	57 95       	ror	r21
    117e:	47 95       	ror	r20
    1180:	37 95       	ror	r19
    1182:	27 95       	ror	r18
    1184:	ba 95       	dec	r27
    1186:	c9 f7       	brne	.-14     	; 0x117a <.L7^B1>
    1188:	62 0f       	add	r22, r18
    118a:	73 1f       	adc	r23, r19
    118c:	84 1f       	adc	r24, r20
    118e:	95 1f       	adc	r25, r21
    1190:	a0 1d       	adc	r26, r0
    1192:	08 95       	ret

00001194 <__prologue_saves__>:
    1194:	2f 92       	push	r2
    1196:	3f 92       	push	r3
    1198:	4f 92       	push	r4
    119a:	5f 92       	push	r5
    119c:	6f 92       	push	r6
    119e:	7f 92       	push	r7
    11a0:	8f 92       	push	r8
    11a2:	9f 92       	push	r9
    11a4:	af 92       	push	r10
    11a6:	bf 92       	push	r11
    11a8:	cf 92       	push	r12
    11aa:	df 92       	push	r13
    11ac:	ef 92       	push	r14
    11ae:	ff 92       	push	r15
    11b0:	0f 93       	push	r16
    11b2:	1f 93       	push	r17
    11b4:	cf 93       	push	r28
    11b6:	df 93       	push	r29
    11b8:	cd b7       	in	r28, 0x3d	; 61
    11ba:	de b7       	in	r29, 0x3e	; 62
    11bc:	ca 1b       	sub	r28, r26
    11be:	db 0b       	sbc	r29, r27
    11c0:	0f b6       	in	r0, 0x3f	; 63
    11c2:	f8 94       	cli
    11c4:	de bf       	out	0x3e, r29	; 62
    11c6:	0f be       	out	0x3f, r0	; 63
    11c8:	cd bf       	out	0x3d, r28	; 61
    11ca:	09 94       	ijmp

000011cc <__epilogue_restores__>:
    11cc:	2a 88       	ldd	r2, Y+18	; 0x12
    11ce:	39 88       	ldd	r3, Y+17	; 0x11
    11d0:	48 88       	ldd	r4, Y+16	; 0x10
    11d2:	5f 84       	ldd	r5, Y+15	; 0x0f
    11d4:	6e 84       	ldd	r6, Y+14	; 0x0e
    11d6:	7d 84       	ldd	r7, Y+13	; 0x0d
    11d8:	8c 84       	ldd	r8, Y+12	; 0x0c
    11da:	9b 84       	ldd	r9, Y+11	; 0x0b
    11dc:	aa 84       	ldd	r10, Y+10	; 0x0a
    11de:	b9 84       	ldd	r11, Y+9	; 0x09
    11e0:	c8 84       	ldd	r12, Y+8	; 0x08
    11e2:	df 80       	ldd	r13, Y+7	; 0x07
    11e4:	ee 80       	ldd	r14, Y+6	; 0x06
    11e6:	fd 80       	ldd	r15, Y+5	; 0x05
    11e8:	0c 81       	ldd	r16, Y+4	; 0x04
    11ea:	1b 81       	ldd	r17, Y+3	; 0x03
    11ec:	aa 81       	ldd	r26, Y+2	; 0x02
    11ee:	b9 81       	ldd	r27, Y+1	; 0x01
    11f0:	ce 0f       	add	r28, r30
    11f2:	d1 1d       	adc	r29, r1
    11f4:	0f b6       	in	r0, 0x3f	; 63
    11f6:	f8 94       	cli
    11f8:	de bf       	out	0x3e, r29	; 62
    11fa:	0f be       	out	0x3f, r0	; 63
    11fc:	cd bf       	out	0x3d, r28	; 61
    11fe:	ed 01       	movw	r28, r26
    1200:	08 95       	ret

00001202 <_exit>:
    1202:	f8 94       	cli

00001204 <__stop_program>:
    1204:	ff cf       	rjmp	.-2      	; 0x1204 <__stop_program>
