.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Cp437"

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    new-array v4, v1, [Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_1"

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v7, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_2"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ISO-8859-2"

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v8, v10, v3}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_3"

    const/4 v3, 0x5

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ISO-8859-3"

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v9, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_4"

    const/4 v3, 0x6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ISO-8859-4"

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v10, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_5"

    const/4 v3, 0x5

    const/4 v4, 0x7

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-5"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_6"

    const/4 v3, 0x6

    const/16 v4, 0x8

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-6"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_7"

    const/4 v3, 0x7

    const/16 v4, 0x9

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-7"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_8"

    const/16 v3, 0x8

    const/16 v4, 0xa

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-8"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_9"

    const/16 v3, 0x9

    const/16 v4, 0xb

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-9"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_10"

    const/16 v3, 0xa

    const/16 v4, 0xc

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-10"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_11"

    const/16 v3, 0xb

    const/16 v4, 0xd

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-11"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_13"

    const/16 v3, 0xc

    const/16 v4, 0xf

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-13"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_14"

    const/16 v3, 0xd

    const/16 v4, 0x10

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-14"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_15"

    const/16 v3, 0xe

    const/16 v4, 0x11

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-15"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ISO8859_16"

    const/16 v3, 0xf

    const/16 v4, 0x12

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "ISO-8859-16"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "SJIS"

    const/16 v3, 0x10

    const/16 v4, 0x14

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "Shift_JIS"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Cp1250"

    const/16 v3, 0x11

    const/16 v4, 0x15

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "windows-1250"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Cp1251"

    const/16 v3, 0x12

    const/16 v4, 0x16

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "windows-1251"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Cp1252"

    const/16 v3, 0x13

    const/16 v4, 0x17

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "windows-1252"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Cp1256"

    const/16 v3, 0x14

    const/16 v4, 0x18

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "windows-1256"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "UnicodeBigUnmarked"

    const/16 v3, 0x15

    const/16 v4, 0x19

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "UTF-16BE"

    aput-object v6, v5, v1

    const-string v6, "UnicodeBig"

    aput-object v6, v5, v7

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "UTF8"

    const/16 v3, 0x16

    const/16 v4, 0x1a

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "UTF-8"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "ASCII"

    const/16 v3, 0x17

    new-array v4, v8, [I

    fill-array-data v4, :array_2

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "US-ASCII"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Big5"

    const/16 v3, 0x18

    const/16 v4, 0x1c

    invoke-direct {v0, v2, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "GB18030"

    const/16 v3, 0x19

    const/16 v4, 0x1d

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "GB2312"

    aput-object v6, v5, v1

    const-string v6, "EUC_CN"

    aput-object v6, v5, v7

    const-string v6, "GBK"

    aput-object v6, v5, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "EUC_KR"

    const/16 v3, 0x1a

    const/16 v4, 0x1e

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "EUC-KR"

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/zxing/common/CharacterSetECI;

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v1

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v7

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v8

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v9

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v10

    const/4 v2, 0x5

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    iget-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget v8, v6, v0

    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
