.class public final enum Lcom/huawei/hms/scankit/aiscan/common/c;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/aiscan/common/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/huawei/hms/scankit/aiscan/common/c;

.field private static final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/hms/scankit/aiscan/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic D:[Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum a:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum b:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum c:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum d:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum e:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum f:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum g:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum h:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum i:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum j:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum k:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum l:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum m:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum n:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum o:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum p:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum q:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum r:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum s:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum t:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum u:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum v:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum w:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum x:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum y:Lcom/huawei/hms/scankit/aiscan/common/c;

.field public static final enum z:Lcom/huawei/hms/scankit/aiscan/common/c;


# instance fields
.field private final E:[I

.field private final F:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/c;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "Cp437"

    invoke-direct {v0, v5, v3, v2, v4}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->a:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 2
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/c;

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    const-string v5, "ISO-8859-1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO8859_1"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v2, Lcom/huawei/hms/scankit/aiscan/common/c;->b:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 3
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v5, "ISO-8859-2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO8859_2"

    const/4 v8, 0x4

    invoke-direct {v4, v6, v1, v8, v5}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v4, Lcom/huawei/hms/scankit/aiscan/common/c;->c:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v6, "ISO-8859-3"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "ISO8859_3"

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-direct {v5, v9, v10, v11, v6}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/huawei/hms/scankit/aiscan/common/c;->d:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 5
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v9, "ISO-8859-4"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO8859_4"

    const/4 v12, 0x6

    invoke-direct {v6, v10, v8, v12, v9}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v6, Lcom/huawei/hms/scankit/aiscan/common/c;->e:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 6
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v10, "ISO-8859-5"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v13, "ISO8859_5"

    const/4 v14, 0x7

    invoke-direct {v9, v13, v11, v14, v10}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/huawei/hms/scankit/aiscan/common/c;->f:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 7
    new-instance v10, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v13, "ISO-8859-6"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v15, "ISO8859_6"

    const/16 v11, 0x8

    invoke-direct {v10, v15, v12, v11, v13}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/huawei/hms/scankit/aiscan/common/c;->g:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 8
    new-instance v13, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-7"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v12, "ISO8859_7"

    const/16 v8, 0x9

    invoke-direct {v13, v12, v14, v8, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v13, Lcom/huawei/hms/scankit/aiscan/common/c;->h:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 9
    new-instance v12, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-8"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v14, "ISO8859_8"

    const/16 v7, 0xa

    invoke-direct {v12, v14, v11, v7, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v12, Lcom/huawei/hms/scankit/aiscan/common/c;->i:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 10
    new-instance v14, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-9"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v11, "ISO8859_9"

    const/16 v3, 0xb

    invoke-direct {v14, v11, v8, v3, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v14, Lcom/huawei/hms/scankit/aiscan/common/c;->j:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 11
    new-instance v11, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-10"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v8, "ISO8859_10"

    const/16 v1, 0xc

    invoke-direct {v11, v8, v7, v1, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/huawei/hms/scankit/aiscan/common/c;->k:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 12
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-11"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "ISO8859_11"

    const/16 v1, 0xd

    invoke-direct {v8, v7, v3, v1, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/huawei/hms/scankit/aiscan/common/c;->l:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 13
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v15, "ISO-8859-13"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v3, "ISO8859_13"

    const/16 v1, 0xf

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v7, v3, v8, v1, v15}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/c;->m:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 14
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "ISO-8859-14"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "ISO8859_14"

    const/16 v1, 0x10

    move-object/from16 v17, v7

    const/16 v7, 0xd

    invoke-direct {v3, v15, v7, v1, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/c;->n:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 15
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "ISO-8859-15"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "ISO8859_15"

    const/16 v1, 0xe

    move-object/from16 v18, v3

    const/16 v3, 0x11

    invoke-direct {v7, v15, v1, v3, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/c;->o:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 16
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "ISO-8859-16"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "ISO8859_16"

    const/16 v3, 0x12

    move-object/from16 v19, v7

    const/16 v7, 0xf

    invoke-direct {v1, v15, v7, v3, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->p:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 17
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "Shift_JIS"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "SJIS"

    const/16 v3, 0x14

    move-object/from16 v20, v1

    const/16 v1, 0x10

    invoke-direct {v7, v15, v1, v3, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/c;->q:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 18
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "windows-1250"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "Cp1250"

    const/16 v3, 0x15

    move-object/from16 v21, v7

    const/16 v7, 0x11

    invoke-direct {v1, v15, v7, v3, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->r:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 19
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "windows-1251"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "Cp1251"

    const/16 v3, 0x16

    move-object/from16 v22, v1

    const/16 v1, 0x12

    invoke-direct {v7, v15, v1, v3, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/c;->s:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 20
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "windows-1252"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "Cp1252"

    const/16 v3, 0x13

    move-object/from16 v23, v7

    const/16 v7, 0x17

    invoke-direct {v1, v15, v3, v7, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->t:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 21
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "windows-1256"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "Cp1256"

    const/16 v7, 0x18

    move-object/from16 v24, v1

    const/16 v1, 0x14

    invoke-direct {v3, v15, v1, v7, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/c;->u:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 22
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "UTF-16BE"

    const-string v15, "UnicodeBig"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "UnicodeBigUnmarked"

    const/16 v7, 0x19

    move-object/from16 v25, v3

    const/16 v3, 0x15

    invoke-direct {v1, v15, v3, v7, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->v:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 23
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v7, "UTF-8"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF8"

    const/16 v15, 0x1a

    move-object/from16 v26, v1

    const/16 v1, 0x16

    invoke-direct {v3, v8, v1, v15, v7}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/c;->w:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 24
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    const-string v7, "US-ASCII"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v15, "ASCII"

    move-object/from16 v27, v3

    const/16 v3, 0x17

    invoke-direct {v1, v15, v3, v8, v7}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->x:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 25
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v7, "Big5"

    const/16 v8, 0x1c

    const/16 v15, 0x18

    invoke-direct {v3, v7, v15, v8}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/c;->y:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 26
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v8, "GB2312"

    const-string v15, "EUC_CN"

    move-object/from16 v28, v3

    const-string v3, "GBK"

    filled-new-array {v8, v15, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "GB18030"

    const/16 v15, 0x19

    move-object/from16 v29, v1

    const/16 v1, 0x1d

    invoke-direct {v7, v8, v15, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/c;->z:Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 27
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/c;

    const-string v3, "EUC-KR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v8, "EUC_KR"

    const/16 v15, 0x1a

    move-object/from16 v30, v7

    const/16 v7, 0x1e

    invoke-direct {v1, v8, v15, v7, v3}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/c;->A:Lcom/huawei/hms/scankit/aiscan/common/c;

    const/16 v3, 0x1b

    new-array v3, v3, [Lcom/huawei/hms/scankit/aiscan/common/c;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v12, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v26, v3, v0

    const/16 v0, 0x16

    aput-object v27, v3, v0

    const/16 v0, 0x17

    aput-object v29, v3, v0

    const/16 v0, 0x18

    aput-object v28, v3, v0

    const/16 v0, 0x19

    aput-object v30, v3, v0

    const/16 v0, 0x1a

    aput-object v1, v3, v0

    .line 28
    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/c;->D:[Lcom/huawei/hms/scankit/aiscan/common/c;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->B:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->C:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/c;->values()[Lcom/huawei/hms/scankit/aiscan/common/c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 32
    iget-object v4, v3, Lcom/huawei/hms/scankit/aiscan/common/c;->E:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget v8, v4, v6

    .line 33
    sget-object v9, Lcom/huawei/hms/scankit/aiscan/common/c;->B:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 34
    :cond_0
    sget-object v4, Lcom/huawei/hms/scankit/aiscan/common/c;->C:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v4, v3, Lcom/huawei/hms/scankit/aiscan/common/c;->F:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    .line 36
    sget-object v9, Lcom/huawei/hms/scankit/aiscan/common/c;->C:Ljava/util/Map;

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    new-array p3, v1, [Ljava/lang/String;

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huawei/hms/scankit/aiscan/common/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p3, p1, p2

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/c;->E:[I

    .line 4
    iput-object p4, p0, Lcom/huawei/hms/scankit/aiscan/common/c;->F:[Ljava/lang/String;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/c;->E:[I

    .line 7
    iput-object p4, p0, Lcom/huawei/hms/scankit/aiscan/common/c;->F:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/huawei/hms/scankit/aiscan/common/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->B:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/c;

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/c;
    .locals 1

    .line 4
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/c;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/aiscan/common/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/c;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/aiscan/common/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/c;->D:[Lcom/huawei/hms/scankit/aiscan/common/c;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/c;->E:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
