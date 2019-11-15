.class public Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# static fields
.field public static final METHOD_NONE:I = 0x0

.field public static final METHOD_ZLIB:I = 0x1

.field private static sNoCompression:Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;

.field private static sZLibCompression:Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;->sZLibCompression:Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;

    new-instance v0, Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;->sNoCompression:Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCompression(I)Lcom/mi/milinkforgame/sdk/util/compress/ICompression;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;->sNoCompression:Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;->sZLibCompression:Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/util/compress/CompressionFactory;->sNoCompression:Lcom/mi/milinkforgame/sdk/util/compress/NoCompression;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
