.class public Lorg/bouncycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final MAXKC:I = 0x40

.field private static final MAXROUNDS:I = 0xe

.field private static final S:[B

.field private static final Si:[B

.field private static final aLogtable:[B

.field private static final logtable:[B

.field private static final rcon:[I

.field static shifts0:[[B

.field static shifts1:[[B


# instance fields
.field private A0:J

.field private A1:J

.field private A2:J

.field private A3:J

.field private BC:I

.field private BC_MASK:J

.field private ROUNDS:I

.field private blockBits:I

.field private forEncryption:Z

.field private shifts0SC:[B

.field private shifts1SC:[B

.field private workingKey:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x100

    const/4 v3, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    const/16 v0, 0x1ff

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x19t
        0x1t
        0x32t
        0x2t
        0x1at
        -0x3at
        0x4bt
        -0x39t
        0x1bt
        0x68t
        0x33t
        -0x12t
        -0x21t
        0x3t
        0x64t
        0x4t
        -0x20t
        0xet
        0x34t
        -0x73t
        -0x7ft
        -0x11t
        0x4ct
        0x71t
        0x8t
        -0x38t
        -0x8t
        0x69t
        0x1ct
        -0x3ft
        0x7dt
        -0x3et
        0x1dt
        -0x4bt
        -0x7t
        -0x47t
        0x27t
        0x6at
        0x4dt
        -0x1ct
        -0x5at
        0x72t
        -0x66t
        -0x37t
        0x9t
        0x78t
        0x65t
        0x2ft
        -0x76t
        0x5t
        0x21t
        0xft
        -0x1ft
        0x24t
        0x12t
        -0x10t
        -0x7et
        0x45t
        0x35t
        -0x6dt
        -0x26t
        -0x72t
        -0x6at
        -0x71t
        -0x25t
        -0x43t
        0x36t
        -0x30t
        -0x32t
        -0x6ct
        0x13t
        0x5ct
        -0x2et
        -0xft
        0x40t
        0x46t
        -0x7dt
        0x38t
        0x66t
        -0x23t
        -0x3t
        0x30t
        -0x41t
        0x6t
        -0x75t
        0x62t
        -0x4dt
        0x25t
        -0x1et
        -0x68t
        0x22t
        -0x78t
        -0x6ft
        0x10t
        0x7et
        0x6et
        0x48t
        -0x3dt
        -0x5dt
        -0x4at
        0x1et
        0x42t
        0x3at
        0x6bt
        0x28t
        0x54t
        -0x6t
        -0x7bt
        0x3dt
        -0x46t
        0x2bt
        0x79t
        0xat
        0x15t
        -0x65t
        -0x61t
        0x5et
        -0x36t
        0x4et
        -0x2ct
        -0x54t
        -0x1bt
        -0xdt
        0x73t
        -0x59t
        0x57t
        -0x51t
        0x58t
        -0x58t
        0x50t
        -0xct
        -0x16t
        -0x2at
        0x74t
        0x4ft
        -0x52t
        -0x17t
        -0x2bt
        -0x19t
        -0x1at
        -0x53t
        -0x18t
        0x2ct
        -0x29t
        0x75t
        0x7at
        -0x15t
        0x16t
        0xbt
        -0xbt
        0x59t
        -0x35t
        0x5ft
        -0x50t
        -0x64t
        -0x57t
        0x51t
        -0x60t
        0x7ft
        0xct
        -0xat
        0x6ft
        0x17t
        -0x3ct
        0x49t
        -0x14t
        -0x28t
        0x43t
        0x1ft
        0x2dt
        -0x5ct
        0x76t
        0x7bt
        -0x49t
        -0x34t
        -0x45t
        0x3et
        0x5at
        -0x5t
        0x60t
        -0x4ft
        -0x7at
        0x3bt
        0x52t
        -0x5ft
        0x6ct
        -0x56t
        0x55t
        0x29t
        -0x63t
        -0x69t
        -0x4et
        -0x79t
        -0x70t
        0x61t
        -0x42t
        -0x24t
        -0x4t
        -0x44t
        -0x6bt
        -0x31t
        -0x33t
        0x37t
        0x3ft
        0x5bt
        -0x2ft
        0x53t
        0x39t
        -0x7ct
        0x3ct
        0x41t
        -0x5et
        0x6dt
        0x47t
        0x14t
        0x2at
        -0x62t
        0x5dt
        0x56t
        -0xet
        -0x2dt
        -0x55t
        0x44t
        0x11t
        -0x6et
        -0x27t
        0x23t
        0x20t
        0x2et
        -0x77t
        -0x4ct
        0x7ct
        -0x48t
        0x26t
        0x77t
        -0x67t
        -0x1dt
        -0x5bt
        0x67t
        0x4at
        -0x13t
        -0x22t
        -0x3bt
        0x31t
        -0x2t
        0x18t
        0xdt
        0x63t
        -0x74t
        -0x80t
        -0x40t
        -0x9t
        0x70t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x20t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x8t
        0x18t
        0x20t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x18t
        0x10t
        0x8t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x20t
        0x18t
        0x10t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x28t
        0x20t
        0x18t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x30t
        0x28t
        0x18t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x38t
        0x28t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown blocksize to Rijndael"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    return-void

    :sswitch_1
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v5

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v5

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    aget-object v0, v0, v6

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v6

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private InvMixColumn()V
    .locals 20

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v3, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v15, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    move-wide/from16 v16, v0

    shr-long v16, v16, v2

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-eqz v3, :cond_0

    sget-object v13, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    move v14, v3

    :goto_1
    if-eqz v12, :cond_1

    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v12, v12, 0xff

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    move v13, v3

    :goto_2
    if-eqz v15, :cond_2

    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v12, v15, 0xff

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    move v12, v3

    :goto_3
    if-eqz v16, :cond_3

    sget-object v3, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff

    aget-byte v3, v3, v15

    and-int/lit16 v3, v3, 0xff

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v10, v10, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v16

    xor-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v16

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v6, v6, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v14

    xor-int/2addr v3, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v13

    xor-int/2addr v3, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v12

    xor-int/2addr v3, v12

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    shl-long/2addr v12, v2

    or-long/2addr v4, v12

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_0

    :cond_0
    const/4 v3, -0x1

    move v14, v3

    goto/16 :goto_1

    :cond_1
    const/4 v3, -0x1

    move v13, v3

    goto/16 :goto_2

    :cond_2
    const/4 v3, -0x1

    move v12, v3

    goto/16 :goto_3

    :cond_3
    const/4 v3, -0x1

    goto/16 :goto_4

    :cond_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private KeyAddition([J)V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private MixColumn()V
    .locals 18

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v3, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v13

    xor-int/2addr v15, v14

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v10, v10, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v14

    xor-int/2addr v15, v3

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v16

    xor-int v15, v15, v16

    xor-int/2addr v15, v3

    xor-int/2addr v15, v12

    and-int/lit16 v15, v15, 0xff

    int-to-long v0, v15

    move-wide/from16 v16, v0

    shl-long v16, v16, v2

    or-long v6, v6, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v3

    xor-int/2addr v3, v14

    xor-int/2addr v3, v12

    xor-int/2addr v3, v13

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    shl-long/2addr v12, v2

    or-long/2addr v4, v12

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private ShiftRow([B)V
    .locals 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private Substitution([B)V
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private applyS(J[B)J
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v0, v1, :cond_0

    shr-long v4, p1, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v1, v4

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private decryptBlock([[J)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->InvMixColumn()V

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void
.end method

.method private encryptBlock([[J)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->MixColumn()V

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void
.end method

.method private generateWorkingKey([B)[[J
    .locals 14

    const/4 v6, 0x0

    array-length v0, p1

    mul-int/lit8 v3, v0, 0x8

    const/4 v0, 0x4

    const/16 v1, 0x40

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/16 v1, 0xf

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v2, 0x4

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x6

    iput v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    :goto_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_1

    rem-int/lit8 v5, v3, 0x4

    aget-object v7, v0, v5

    div-int/lit8 v8, v3, 0x4

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    aput-byte v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :sswitch_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v5, v3

    move v3, v4

    :goto_3
    if-ge v5, v2, :cond_e

    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    mul-int/2addr v4, v7

    if-ge v3, v4, :cond_e

    const/4 v4, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v4, v7, :cond_2

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    aget-object v7, v1, v7

    aget-wide v8, v7, v4

    aget-object v10, v0, v4

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    mul-int/lit8 v12, v3, 0x8

    iget v13, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v12, v13

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    move v3, v4

    :goto_5
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v6, v6, 0x8

    mul-int/2addr v4, v6

    if-ge v5, v4, :cond_d

    const/4 v4, 0x0

    :goto_6
    const/4 v6, 0x4

    if-ge v4, v6, :cond_4

    aget-object v6, v0, v4

    const/4 v7, 0x0

    aget-byte v8, v6, v7

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    add-int/lit8 v10, v4, 0x1

    rem-int/lit8 v10, v10, 0x4

    aget-object v10, v0, v10

    add-int/lit8 v11, v2, -0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_4
    const/4 v4, 0x0

    aget-object v6, v0, v4

    const/4 v7, 0x0

    aget-byte v8, v6, v7

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    add-int/lit8 v4, v3, 0x1

    aget v3, v9, v3

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    const/4 v3, 0x6

    if-gt v2, v3, :cond_6

    const/4 v3, 0x1

    move v6, v3

    :goto_7
    if-ge v6, v2, :cond_b

    const/4 v3, 0x0

    :goto_8
    const/4 v7, 0x4

    if-ge v3, v7, :cond_5

    aget-object v7, v0, v3

    aget-byte v8, v7, v6

    aget-object v9, v0, v3

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_7

    :cond_6
    const/4 v3, 0x1

    move v6, v3

    :goto_9
    const/4 v3, 0x4

    if-ge v6, v3, :cond_8

    const/4 v3, 0x0

    :goto_a
    const/4 v7, 0x4

    if-ge v3, v7, :cond_7

    aget-object v7, v0, v3

    aget-byte v8, v7, v6

    aget-object v9, v0, v3

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_b
    const/4 v6, 0x4

    if-ge v3, v6, :cond_9

    aget-object v6, v0, v3

    const/4 v7, 0x4

    aget-byte v8, v6, v7

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    aget-object v10, v0, v3

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_9
    const/4 v3, 0x5

    move v6, v3

    :goto_c
    if-ge v6, v2, :cond_b

    const/4 v3, 0x0

    :goto_d
    const/4 v7, 0x4

    if-ge v3, v7, :cond_a

    aget-object v7, v0, v3

    aget-byte v8, v7, v6

    aget-object v9, v0, v3

    add-int/lit8 v10, v6, -0x1

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    move v6, v3

    move v3, v5

    :goto_e
    if-ge v6, v2, :cond_3

    iget v5, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    mul-int/2addr v5, v7

    if-ge v3, v5, :cond_3

    const/4 v5, 0x0

    :goto_f
    const/4 v7, 0x4

    if-ge v5, v7, :cond_c

    iget v7, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    aget-object v7, v1, v7

    aget-wide v8, v7, v5

    aget-object v10, v0, v5

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    mul-int/lit8 v12, v3, 0x8

    iget v13, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    rem-int/2addr v12, v13

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_c
    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_e

    :cond_d
    return-object v1

    :cond_e
    move v5, v3

    move v3, v6

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private mul0x2(I)B
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x19

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0x3(I)B
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0x9(I)B
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xc7

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xb(I)B
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit8 v1, p1, 0x68

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xd(I)B
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xee

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mul0xe(I)B
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 v1, p1, 0xdf

    aget-byte v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private packBlock([BI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, v1, 0x1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v4, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v4, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 p2, v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shift(JI)J
    .locals 5

    ushr-long v0, p1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private unpackBlock([BI)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/16 v0, 0x8

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v0, v2, :cond_0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Rijndael"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->generateWorkingKey([B)[[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Rijndael init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rijndael engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->encryptBlock([[J)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->decryptBlock([[J)V

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
