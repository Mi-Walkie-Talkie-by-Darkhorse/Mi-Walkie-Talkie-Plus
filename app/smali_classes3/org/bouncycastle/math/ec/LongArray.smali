.class Lorg/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final INTERLEAVE2_TABLE:[S

.field private static final INTERLEAVE3_TABLE:[I

.field private static final INTERLEAVE4_TABLE:[I

.field private static final INTERLEAVE5_TABLE:[I

.field private static final INTERLEAVE7_TABLE:[J

.field private static final ZEROES:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000"

.field static final bitLengths:[B


# instance fields
.field private m_ints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x80

    const/16 v1, 0x100

    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    const/16 v0, 0x200

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 13

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/16 v12, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid F2m field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_3

    new-array v0, v0, [J

    aput-wide v6, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    array-length v2, v9

    aget-byte v3, v9, v1

    if-nez v3, :cond_7

    add-int/lit8 v2, v2, -0x1

    :goto_0
    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [J

    iput-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    if-ge v0, v2, :cond_6

    move-wide v4, v6

    :goto_1
    if-ge v0, v2, :cond_4

    shl-long/2addr v4, v12

    aget-byte v8, v9, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v10, v8

    or-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v3, -0x1

    aput-wide v4, v8, v3

    move v8, v2

    :goto_2
    if-ltz v8, :cond_2

    move v2, v0

    move-wide v4, v6

    move v0, v1

    :goto_3
    if-ge v0, v12, :cond_5

    shl-long/2addr v4, v12

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v10, v2

    or-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v4, v0, v8

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move v8, v3

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    :goto_0
    return-void

    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static add([JI[JII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static add([JI[JI[JII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addBoth([JI[JI[JII)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V
    .locals 8

    const/4 v3, 0x0

    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    ushr-int/lit8 v1, p3, 0x6

    and-int/lit8 v5, p3, 0x3f

    if-nez v5, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/2addr v1, v4

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method private static addShiftedDown([JI[JIII)J
    .locals 10

    rsub-int/lit8 v2, p5, 0x40

    const-wide/16 v0, 0x0

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    add-int v3, p3, p4

    aget-wide v4, p2, v3

    add-int v3, p1, p4

    aget-wide v6, p0, v3

    ushr-long v8, v4, p5

    or-long/2addr v0, v8

    xor-long/2addr v0, v6

    aput-wide v0, p0, v3

    shl-long v0, v4, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static addShiftedUp([JI[JIII)J
    .locals 14

    rsub-int/lit8 v3, p5, 0x40

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p4

    if-ge v2, v0, :cond_0

    add-int v6, p3, v2

    aget-wide v6, p2, v6

    add-int v8, p1, v2

    aget-wide v10, p0, v8

    shl-long v12, v6, p5

    or-long/2addr v4, v12

    xor-long/2addr v4, v10

    aput-wide v4, p0, v8

    ushr-long v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private static bitLength(J)I
    .locals 6

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v1, v2

    if-nez v1, :cond_0

    long-to-int v1, p0

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_2

    ushr-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v2, v0

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v0, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_2
    ushr-int/lit8 v0, v2, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v0, v2

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v2, v0

    add-int/lit8 v0, v0, 0x18

    goto :goto_1
.end method

.method private degreeFrom(I)I
    .locals 6

    add-int/lit8 v0, p1, 0x3e

    ushr-int/lit8 v0, v0, 0x6

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    shl-int/lit8 v0, v0, 0x6

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static distribute([JIIII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v1, p2, v0

    aget-wide v4, p0, v1

    xor-long/2addr v4, v2

    aput-wide v4, p0, v1

    add-int v1, p3, v0

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flipBit([JII)V
    .locals 6

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 v1, p2, 0x3f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    add-int/2addr v0, p1

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    return-void
.end method

.method private static flipVector([JI[JIII)V
    .locals 7

    ushr-int/lit8 v0, p5, 0x6

    add-int v6, p1, v0

    and-int/lit8 v0, p5, 0x3f

    if-nez v0, :cond_0

    invoke-static {p0, v6, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, v6, 0x1

    rsub-int/lit8 v5, v0, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide v0

    aget-wide v2, p0, v6

    xor-long/2addr v0, v2

    aput-wide v0, p0, v6

    goto :goto_0
.end method

.method private static flipWord([JIIJ)V
    .locals 7

    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr v0, p1

    and-int/lit8 v1, p2, 0x3f

    if-nez v1, :cond_1

    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-wide v2, p0, v0

    shl-long v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    rsub-int/lit8 v1, v1, 0x40

    ushr-long v2, p3, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    goto :goto_0
.end method

.method private static interleave([JI[JIII)V
    .locals 6

    packed-switch p5, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v0, p5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_n([JI[JIII)V

    :goto_0
    return-void

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave3([JI[JII)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave5([JI[JII)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave7([JI[JII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static interleave2_32to64(I)J
    .locals 6

    const-wide v4, 0xffffffffL

    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v3, p0, 0x18

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave2_n(JI)J
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x1

    const v7, 0xffff

    move-wide v0, p0

    :goto_0
    if-le p2, v8, :cond_0

    add-int/lit8 p2, p2, -0x2

    long-to-int v2, v0

    and-int/2addr v2, v7

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v2

    const/16 v4, 0x10

    ushr-long v4, v0, v4

    long-to-int v4, v4

    and-int/2addr v4, v7

    invoke-static {v4}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    ushr-long v4, v0, v9

    long-to-int v4, v4

    and-int/2addr v4, v7

    invoke-static {v4}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/16 v4, 0x30

    ushr-long/2addr v0, v4

    long-to-int v0, v0

    and-int/2addr v0, v7

    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v0

    const/4 v4, 0x3

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    long-to-int v2, v0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    ushr-long/2addr v0, v9

    long-to-int v0, v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v0

    shl-long/2addr v0, v8

    or-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private static interleave2_n([JI[JIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3, p5}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_n(JI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static interleave3(J)J
    .locals 6

    const v5, 0x1fffff

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    long-to-int v2, p0

    and-int/2addr v2, v5

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/16 v2, 0x15

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x2a

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v2

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave3([JI[JII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave3(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static interleave3_13to65(I)J
    .locals 6

    const-wide v4, 0xffffffffL

    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    ushr-int/lit8 v2, p0, 0x7

    aget v1, v1, v2

    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x23

    shl-long/2addr v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave3_21to63(I)J
    .locals 8

    const-wide v6, 0xffffffffL

    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 v2, p0, 0x7

    and-int/lit8 v2, v2, 0x7f

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 v3, p0, 0xe

    aget v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x2a

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x15

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave4_16to64(I)J
    .locals 6

    const-wide v4, 0xffffffffL

    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    ushr-int/lit8 v2, p0, 0x8

    aget v1, v1, v2

    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave5(J)J
    .locals 6

    long-to-int v0, p0

    and-int/lit16 v0, v0, 0x1fff

    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v0

    const/16 v2, 0xd

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x1a

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x27

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave5([JI[JII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave5(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static interleave7(J)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    long-to-int v3, p0

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x9

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x12

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x1b

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x24

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x2d

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x5

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x36

    ushr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x6

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static interleave7([JI[JII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave7(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static multiplyWord(J[JI[JI)V
    .locals 8

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p4, p5, p2, v0, p3}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const/4 v0, 0x1

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p5

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    add-int v2, p5, p3

    aget-wide v6, p4, v2

    xor-long/2addr v0, v6

    aput-wide v0, p4, v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static reduceBit([JIII[I)V
    .locals 3

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    sub-int v1, p2, p3

    array-length v0, p4

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v2, p4, v0

    add-int/2addr v2, v1

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    return-void
.end method

.method private static reduceBitWise([JIII[I)V
    .locals 1

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static reduceInPlace([JIII[I)I
    .locals 8

    const/4 v5, 0x1

    add-int/lit8 v0, p3, 0x3f

    ushr-int/lit8 v6, v0, 0x6

    if-ge p2, v6, :cond_0

    :goto_0
    return p2

    :cond_0
    shl-int/lit8 v0, p2, 0x6

    shl-int/lit8 v1, p3, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v0, p2, 0x6

    sub-int/2addr v0, v1

    move v3, v0

    move v2, p2

    :goto_1
    const/16 v0, 0x40

    if-lt v3, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v3, -0x40

    move v3, v0

    goto :goto_1

    :cond_1
    array-length v0, p4

    add-int/lit8 v4, v0, -0x1

    aget v4, p4, v4

    if-le v0, v5, :cond_2

    add-int/lit8 v0, v0, -0x2

    aget v0, p4, v0

    :goto_2
    add-int/lit8 v4, v4, 0x40

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v4, v1, v7

    sub-int v0, p3, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x6

    if-le v0, v5, :cond_6

    sub-int v3, v2, v0

    move-object v0, p0

    move v1, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    :goto_3
    if-le v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    add-int v0, p1, v2

    const-wide/16 v4, 0x0

    aput-wide v4, p0, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    shl-int/lit8 v0, v3, 0x6

    :goto_4
    if-le v0, v7, :cond_4

    move-object v0, p0

    move v1, p1

    move v3, v7

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    move v0, v7

    :cond_4
    if-le v0, p3, :cond_5

    invoke-static {p0, p1, v0, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    :cond_5
    move p2, v6

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method private static reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, p0, p1, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method private static reduceVectorWise([JIIII[I)V
    .locals 8

    shl-int/lit8 v0, p3, 0x6

    sub-int v7, v0, p4

    array-length v0, p5

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ltz v6, :cond_0

    add-int v3, p1, p3

    sub-int v4, p2, p3

    aget v0, p5, v6

    add-int v5, v7, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    move v0, v6

    goto :goto_0

    :cond_0
    add-int v3, p1, p3

    sub-int v4, p2, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    move v5, v7

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    return-void
.end method

.method private static reduceWord([JIIJI[I)V
    .locals 3

    sub-int v1, p2, p5

    array-length v0, p6

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v2, p6, v0

    add-int/2addr v2, v1

    invoke-static {p0, p1, v2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    return-void
.end method

.method private static reduceWordWise([JIIII[I)V
    .locals 10

    const-wide/16 v8, 0x0

    ushr-int/lit8 v0, p3, 0x6

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-le p2, v0, :cond_1

    add-int v1, p1, p2

    aget-wide v4, p0, v1

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    add-int v1, p1, p2

    aput-wide v8, p0, v1

    shl-int/lit8 v3, p2, 0x6

    move-object v1, p0

    move v2, p1

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p3, 0x3f

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    ushr-long v4, v2, v1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_2

    add-int/2addr v0, p1

    aget-wide v2, p0, v0

    shl-long v6, v4, v1

    xor-long/2addr v2, v6

    aput-wide v2, p0, v0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    :cond_2
    return-void
.end method

.method private resizedInts(I)[J
    .locals 4

    const/4 v3, 0x0

    new-array v0, p1, [J

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static shiftUp([JIII)J
    .locals 10

    rsub-int/lit8 v1, p3, 0x40

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p1, v0

    shl-long v8, v4, p3

    or-long/2addr v2, v8

    aput-wide v2, p0, v6

    ushr-long v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static shiftUp([JI[JIII)J
    .locals 10

    rsub-int/lit8 v1, p5, 0x40

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    shl-long v8, v4, p5

    or-long/2addr v2, v8

    aput-wide v2, p2, v6

    ushr-long v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static squareInPlace([JII[I)V
    .locals 6

    shl-int/lit8 v0, p1, 0x1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    aget-wide v2, p0, p1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    long-to-int v1, v4

    invoke-static {v1}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, p0, v0

    add-int/lit8 v0, v0, -0x1

    long-to-int v1, v2

    invoke-static {v1}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static testBit([JII)Z
    .locals 4

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 v1, p2, 0x3f

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    add-int/2addr v0, p1

    aget-wide v0, p0, v0

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOne()Lorg/bouncycastle/math/ec/LongArray;
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    new-array v1, v1, [J

    aput-wide v6, v1, v4

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v1

    aget-wide v2, v1, v4

    xor-long/2addr v2, v6

    aput-wide v2, v1, v4

    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    goto :goto_0
.end method

.method public addShiftedByWords(Lorg/bouncycastle/math/ec/LongArray;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int v1, v0, p2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, v0}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method public degree()I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    shl-int/lit8 v0, v0, 0x6

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/math/ec/LongArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v1

    iget-object v3, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v3, v1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    aget-wide v4, v2, v1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v2, v0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v2, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v0

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v3, v4

    xor-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isOne()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isZero()Z
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public modInverse(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 12

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-ne v1, v3, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/LongArray;

    add-int/lit8 v2, p1, 0x3f

    ushr-int/lit8 v2, v2, 0x6

    new-instance v4, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, v2}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    iget-object v5, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v5, v11, p1, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    new-instance v5, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v5, v2}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    iget-object v6, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v8, 0x1

    aput-wide v8, v6, v11

    new-instance v6, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v6, v2}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    new-array v7, v10, [I

    aput v1, v7, v11

    add-int/lit8 v1, p1, 0x1

    aput v1, v7, v3

    new-array v8, v10, [Lorg/bouncycastle/math/ec/LongArray;

    aput-object v0, v8, v11

    aput-object v4, v8, v3

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    new-array v10, v10, [Lorg/bouncycastle/math/ec/LongArray;

    aput-object v5, v10, v11

    aput-object v6, v10, v3

    aget v2, v7, v3

    aget v1, v9, v3

    aget v0, v7, v11

    sub-int v0, v2, v0

    :goto_1
    if-gez v0, :cond_2

    neg-int v0, v0

    aput v2, v7, v3

    aput v1, v9, v3

    rsub-int/lit8 v3, v3, 0x1

    aget v2, v7, v3

    aget v1, v9, v3

    :cond_2
    aget-object v4, v8, v3

    rsub-int/lit8 v5, v3, 0x1

    aget-object v5, v8, v5

    rsub-int/lit8 v6, v3, 0x1

    aget v6, v7, v6

    invoke-direct {v4, v5, v6, v0}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V

    aget-object v4, v8, v3

    invoke-direct {v4, v2}, Lorg/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v5

    if-nez v5, :cond_3

    rsub-int/lit8 v0, v3, 0x1

    aget-object p0, v10, v0

    goto :goto_0

    :cond_3
    rsub-int/lit8 v4, v3, 0x1

    aget v4, v9, v4

    aget-object v6, v10, v3

    rsub-int/lit8 v11, v3, 0x1

    aget-object v11, v10, v11

    invoke-direct {v6, v11, v4, v0}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V

    add-int/2addr v4, v0

    if-le v4, v1, :cond_5

    move v1, v4

    :cond_4
    :goto_2
    sub-int v2, v5, v2

    add-int/2addr v0, v2

    move v2, v5

    goto :goto_1

    :cond_5
    if-ne v4, v1, :cond_4

    aget-object v4, v10, v3

    invoke-direct {v4, v1}, Lorg/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v1

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public modMultiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 p0, p1

    goto :goto_0

    :cond_2
    if-le v4, v5, :cond_9

    :goto_1
    add-int/lit8 v6, v5, 0x3f

    ushr-int/lit8 v19, v6, 0x6

    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v7, v6, 0x6

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3e

    ushr-int/lit8 v20, v5, 0x6

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v8, 0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    move/from16 v0, v20

    new-array v8, v0, [J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    const/4 v4, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v8, v4, v0, v1, v2}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x3f

    ushr-int/lit8 v8, v4, 0x6

    const/16 v4, 0x10

    new-array v0, v4, [I

    move-object/from16 v21, v0

    shl-int/lit8 v4, v8, 0x4

    new-array v4, v4, [J

    const/4 v5, 0x1

    aput v8, v21, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    move/from16 v16, v5

    move v7, v8

    :goto_2
    const/16 v5, 0x10

    move/from16 v0, v16

    if-ge v0, v5, :cond_5

    add-int/2addr v7, v8

    aput v7, v21, v16

    and-int/lit8 v5, v16, 0x1

    if-nez v5, :cond_4

    ushr-int/lit8 v5, v7, 0x1

    const/4 v9, 0x1

    move-object v6, v4

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    :goto_3
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    goto :goto_2

    :cond_4
    sub-int v12, v7, v8

    move-object v9, v4

    move v10, v8

    move-object v11, v4

    move-object v13, v4

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    goto :goto_3

    :cond_5
    array-length v5, v4

    new-array v11, v5, [J

    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v4

    const/4 v14, 0x4

    move-object v9, v4

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v5, v20, 0x3

    new-array v12, v5, [J

    const/16 v10, 0xf

    const/4 v5, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    aget-wide v6, v9, v5

    move v13, v5

    :goto_5
    long-to-int v14, v6

    and-int/2addr v14, v10

    const/4 v15, 0x4

    ushr-long/2addr v6, v15

    long-to-int v15, v6

    and-int v16, v15, v10

    aget v15, v21, v14

    aget v17, v21, v16

    move-object v14, v4

    move-object/from16 v16, v11

    move/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    const/4 v14, 0x4

    ushr-long/2addr v6, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    add-int v13, v13, v20

    goto :goto_5

    :cond_7
    array-length v15, v12

    :goto_6
    sub-int v15, v15, v20

    if-eqz v15, :cond_8

    sub-int v13, v15, v20

    const/16 v17, 0x8

    move-object v14, v12

    move/from16 v16, v20

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v12, v4, v0, v1, v2}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v22, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v22

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    goto/16 :goto_1
.end method

.method public modMultiplyAlt(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 p0, p1

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_d

    :goto_1
    add-int/lit8 v4, v3, 0x3f

    ushr-int/lit8 v10, v4, 0x6

    add-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v5, v4, 0x6

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3e

    ushr-int/lit8 v12, v3, 0x6

    const/4 v3, 0x1

    if-ne v10, v3, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v6, 0x1

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    new-array v6, v12, [J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    const/4 v2, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v6, v2, v12, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v11, 0x4

    const/16 v13, 0x10

    const/16 v16, 0x40

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x3f

    ushr-int/lit8 v18, v2, 0x6

    mul-int v19, v18, v17

    const/16 v2, 0x10

    new-array v0, v2, [I

    move-object/from16 v20, v0

    const/4 v2, 0x0

    aput v10, v20, v2

    add-int v3, v10, v19

    const/4 v2, 0x1

    aput v3, v20, v2

    const/4 v2, 0x2

    :goto_2
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v2, v4, :cond_4

    add-int/2addr v3, v12

    aput v3, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int v2, v3, v12

    add-int/lit8 v2, v2, 0x1

    new-array v8, v2, [J

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/ec/LongArray;->interleave([JI[JIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static {v2, v3, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x1

    move v5, v10

    :goto_3
    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    add-int v5, v5, v18

    move-object v2, v8

    move v3, v10

    move-object v4, v8

    move/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const/16 v3, 0xf

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x0

    :cond_6
    aget-wide v6, v8, v4

    ushr-long/2addr v6, v2

    const/4 v5, 0x0

    move-wide v14, v6

    move v6, v5

    move v5, v10

    :goto_5
    long-to-int v7, v14

    and-int/2addr v7, v3

    if-eqz v7, :cond_7

    aget v7, v20, v7

    add-int/2addr v7, v4

    move/from16 v0, v18

    invoke-static {v8, v7, v8, v5, v0}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v10, :cond_6

    add-int/lit8 v2, v2, 0x20

    move/from16 v0, v16

    if-lt v2, v0, :cond_a

    const/16 v4, 0x40

    if-lt v2, v4, :cond_9

    move-object/from16 v0, v20

    array-length v2, v0

    :goto_6
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_b

    ushr-int/lit8 v3, v2, 0x1

    aget v9, v20, v3

    aget v11, v20, v2

    move-object v10, v8

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_6

    :cond_8
    add-int v5, v5, v18

    ushr-long/2addr v14, v11

    goto :goto_5

    :cond_9
    const/16 v2, 0x3c

    shl-int/lit8 v4, v3, 0x4

    and-int/2addr v3, v4

    :cond_a
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v8, v10, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    goto :goto_4

    :cond_b
    aget v3, v20, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, v20, v4

    const/4 v5, 0x1

    aget v5, v20, v5

    invoke-static {v8, v3, v4, v5, v12}, Lorg/bouncycastle/math/ec/LongArray;->distribute([JIIII)V

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    aget v2, v20, v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v2, v12, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    move/from16 v22, v3

    move v3, v2

    move/from16 v2, v22

    goto/16 :goto_1
.end method

.method public modMultiplyLD(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 p0, p1

    goto :goto_0

    :cond_2
    if-le v4, v5, :cond_b

    :goto_1
    add-int/lit8 v6, v5, 0x3f

    ushr-int/lit8 v19, v6, 0x6

    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v7, v6, 0x6

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3e

    ushr-int/lit8 v20, v5, 0x6

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v8, 0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_0

    move/from16 v0, v20

    new-array v8, v0, [J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    const/4 v4, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v8, v4, v0, v1, v2}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x3f

    ushr-int/lit8 v8, v4, 0x6

    const/16 v4, 0x10

    new-array v0, v4, [I

    move-object/from16 v21, v0

    shl-int/lit8 v4, v8, 0x4

    new-array v4, v4, [J

    const/4 v5, 0x1

    aput v8, v21, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    move/from16 v16, v5

    move v7, v8

    :goto_2
    const/16 v5, 0x10

    move/from16 v0, v16

    if-ge v0, v5, :cond_5

    add-int/2addr v7, v8

    aput v7, v21, v16

    and-int/lit8 v5, v16, 0x1

    if-nez v5, :cond_4

    ushr-int/lit8 v5, v7, 0x1

    const/4 v9, 0x1

    move-object v6, v4

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    :goto_3
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    goto :goto_2

    :cond_4
    sub-int v12, v7, v8

    move-object v9, v4

    move v10, v8

    move-object v11, v4

    move-object v13, v4

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    goto :goto_3

    :cond_5
    array-length v5, v4

    new-array v11, v5, [J

    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v4

    const/4 v14, 0x4

    move-object v9, v4

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    move/from16 v0, v20

    new-array v12, v0, [J

    const/16 v9, 0xf

    const/16 v5, 0x38

    move v6, v5

    :goto_4
    if-ltz v6, :cond_7

    const/4 v5, 0x1

    :goto_5
    move/from16 v0, v19

    if-ge v5, v0, :cond_6

    aget-wide v14, v7, v5

    ushr-long/2addr v14, v6

    long-to-int v10, v14

    and-int v14, v10, v9

    ushr-int/lit8 v10, v10, 0x4

    and-int/2addr v10, v9

    add-int/lit8 v13, v5, -0x1

    aget v15, v21, v14

    aget v17, v21, v10

    move-object v14, v4

    move-object/from16 v16, v11

    move/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    const/16 v10, 0x8

    move/from16 v0, v20

    invoke-static {v12, v5, v0, v10}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    add-int/lit8 v5, v6, -0x8

    move v6, v5

    goto :goto_4

    :cond_7
    const/16 v5, 0x38

    :goto_6
    if-ltz v5, :cond_a

    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v13, v0, :cond_8

    aget-wide v14, v7, v13

    ushr-long/2addr v14, v5

    long-to-int v6, v14

    and-int v10, v6, v9

    ushr-int/lit8 v6, v6, 0x4

    and-int/2addr v6, v9

    aget v15, v21, v10

    aget v17, v21, v6

    move-object v14, v4

    move-object/from16 v16, v11

    move/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_7

    :cond_8
    if-lez v5, :cond_9

    const/4 v6, 0x0

    const/16 v10, 0x8

    move/from16 v0, v20

    invoke-static {v12, v6, v0, v10}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    :cond_9
    add-int/lit8 v5, v5, -0x8

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v12, v4, v0, v1, v2}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v22, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v22

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    goto/16 :goto_1
.end method

.method public modReduce(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v3, v1, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    new-instance v2, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v2, v0, v3, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v2
.end method

.method public modSquare(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    shl-int/lit8 v2, v0, 0x1

    new-array v3, v2, [J

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v0, 0x1

    long-to-int v7, v4

    invoke-static {v7}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v3, v0

    add-int/lit8 v0, v6, 0x1

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, v3, v6

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/LongArray;

    array-length v0, v3

    invoke-static {v3, v1, v0, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    invoke-direct {p0, v3, v1, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public modSquareN(II[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    invoke-static {v1, v0, p2, p3}, Lorg/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    array-length v0, v1

    invoke-static {v1, v3, v0, p2, p3}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {p0, v1, v3, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 p0, p1

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_9

    :goto_1
    add-int/lit8 v4, v3, 0x3f

    ushr-int/lit8 v17, v4, 0x6

    add-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v5, v4, 0x6

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3e

    ushr-int/lit8 v18, v3, 0x6

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v6, 0x1

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    move/from16 v0, v18

    new-array v6, v0, [J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    new-instance p0, Lorg/bouncycastle/math/ec/LongArray;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v2, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x3f

    ushr-int/lit8 v6, v2, 0x6

    const/16 v2, 0x10

    new-array v0, v2, [I

    move-object/from16 v19, v0

    shl-int/lit8 v2, v6, 0x4

    new-array v2, v2, [J

    const/4 v3, 0x1

    aput v6, v19, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x2

    move v14, v3

    move v5, v6

    :goto_2
    const/16 v3, 0x10

    if-ge v14, v3, :cond_5

    add-int/2addr v5, v6

    aput v5, v19, v14

    and-int/lit8 v3, v14, 0x1

    if-nez v3, :cond_4

    ushr-int/lit8 v3, v5, 0x1

    const/4 v7, 0x1

    move-object v4, v2

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    :goto_3
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_2

    :cond_4
    sub-int v10, v5, v6

    move-object v7, v2

    move v8, v6

    move-object v9, v2

    move-object v11, v2

    move v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    goto :goto_3

    :cond_5
    array-length v3, v2

    new-array v9, v3, [J

    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    const/4 v12, 0x4

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v3, v18, 0x3

    new-array v10, v3, [J

    const/16 v8, 0xf

    const/4 v3, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    aget-wide v4, v7, v3

    move v11, v3

    :goto_5
    long-to-int v12, v4

    and-int/2addr v12, v8

    const/4 v13, 0x4

    ushr-long/2addr v4, v13

    long-to-int v13, v4

    and-int v14, v13, v8

    aget v13, v19, v12

    aget v15, v19, v14

    move-object v12, v2

    move-object v14, v9

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    const/4 v12, 0x4

    ushr-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    add-int v11, v11, v18

    goto :goto_5

    :cond_7
    array-length v13, v10

    :goto_6
    sub-int v13, v13, v18

    if-eqz v13, :cond_8

    sub-int v11, v13, v18

    const/16 v15, 0x8

    move-object v12, v10

    move/from16 v14, v18

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_6

    :cond_8
    new-instance p0, Lorg/bouncycastle/math/ec/LongArray;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v2, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v20, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v20

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    goto/16 :goto_1
.end method

.method public reduce(I[I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v0

    invoke-static {v0, v3, v1, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public square(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    shl-int/lit8 v2, v0, 0x1

    new-array v3, v2, [J

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v0, 0x1

    long-to-int v7, v4

    invoke-static {v7}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v3, v0

    add-int/lit8 v0, v6, 0x1

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, v3, v6

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/LongArray;

    array-length v0, v3

    invoke-direct {p0, v3, v1, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public testBitZero()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 12

    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v6

    if-nez v6, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v6, -0x1

    aget-wide v8, v0, v2

    const/16 v0, 0x8

    new-array v7, v0, [B

    move v5, v3

    move v0, v4

    move v2, v4

    :goto_1
    if-ltz v5, :cond_3

    mul-int/lit8 v10, v5, 0x8

    ushr-long v10, v8, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    if-nez v0, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v7, v2

    move v2, v0

    move v0, v1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v6, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    new-array v8, v0, [B

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_4

    aget-byte v4, v7, v0

    aput-byte v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v6, -0x2

    move v5, v0

    move v0, v2

    :goto_3
    if-ltz v5, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v2, v5

    move v2, v0

    move v0, v3

    :goto_4
    if-ltz v0, :cond_5

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v9, v0, 0x8

    ushr-long v10, v6, v9

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v0, v2

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
