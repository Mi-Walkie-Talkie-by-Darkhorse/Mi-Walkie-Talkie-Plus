.class public Lcom/ifengyu/intercom/i/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static c:Lcom/ifengyu/intercom/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ifengyu/intercom/i/h;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ifengyu/intercom/i/h;->b:[B

    const-string v0, "WeChatBluetoothDevice"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    const-string v0, "WeChatDev"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_1
    .array-data 1
        0xft
        0xet
        0xdt
        0xct
        0xbt
        0xat
        0x9t
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/i/h;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/i/h;->c:Lcom/ifengyu/intercom/i/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/i/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/h;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/h;->c:Lcom/ifengyu/intercom/i/h;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/i/h;->c:Lcom/ifengyu/intercom/i/h;

    return-object v0
.end method


# virtual methods
.method public a([BII)J
    .locals 1

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    return-wide p1
.end method
