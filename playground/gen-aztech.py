#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# It should support more or less everything that is supported by BWIPP, but these types are specifically verified in the tests:

# qrcode - QR Code
# azteccode - Aztec Code
# pdf417 - PDF417
# interleaved2of5 - Interleaved 2 of 5
# code128 - Code 128
# code39 - Code 39

payload = "9e8180047d31c7faf37c22c5f920464cec0191a07bef7ce3e6c6005434982905791d714aa25a2619da541f24d5047b9f4fbf256f91d26e96c10b8a2071c47dc8ff4ae4d4d130b5de94d1734c57afcc971b1703c959371528908ce15ff7a6bcedd762c2b6aad71e8235c8c9feff8bbd2127a143a07a9ca31a2e0d8cc75a83f47006c4af9a542fe00100002fe0009287000000d7215439383462633462626664373065393236663764666136366130386234386335302328003268232834a1a1c4d400007b23298a00000000000000002fdf00928756445611097f2181c85f3781c00f977b91270484f8dfe528c85f3d556d8c1974c9ded29009ce1f151ba433f38212dcacd291abc7dec204b3f20fc1115723a13d1cae692c08d958763c5895298d681b4b5cd8182158bdcb8980e225160d4eca548cebbb956b7dfd734ff2330b2aef65bbeb9c8fdb4df86f9cc6aef48ecc80b69114c43eeb8abc7a7719c78d2eebe0a2964f0b4a2e7984794c4f58226b600317e12e38dfe5cf4caef0136e000669fd4e2f9690f1a2a6703d4b044fc03e806fce8b0a54480a52e2ba72922e1cbf645f38018142084c55564456111014"

import treepoem
image = treepoem.generate_barcode(
  'azteccode',  # One of the BWIPP supported codes.
  payload,
  {},
)
image.save('../images/barcode.png')  # This is an instance of `PIL.EpsImagePlugin.EpsImageFile`