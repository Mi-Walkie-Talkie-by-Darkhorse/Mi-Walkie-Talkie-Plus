.class public Lcom/ifengyu/intercom/b/b;
.super Ljava/lang/Object;
.source "AES128.java"


# static fields
.field public static a:[B

.field public static b:[B

.field private static final c:Ljava/lang/String;

.field private static final d:[B

.field private static final e:[B

.field private static f:[B

.field private static g:Z

.field private static h:Lcom/ifengyu/intercom/b/b;

.field private static i:[B


# instance fields
.field private j:[B

.field private k:[B

.field private l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    const-class v0, Lcom/ifengyu/intercom/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/b;->c:Ljava/lang/String;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/b/b;->d:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ifengyu/intercom/b/b;->e:[B

    sget-object v0, Lcom/ifengyu/intercom/b/b;->d:[B

    sput-object v0, Lcom/ifengyu/intercom/b/b;->f:[B

    const-string v0, "WeChatBluetoothDevice"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/b;->a:[B

    const-string v0, "WeChatDev"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/b/b;->b:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/b/b;->g:Z

    sget-object v0, Lcom/ifengyu/intercom/b/b;->e:[B

    sput-object v0, Lcom/ifengyu/intercom/b/b;->i:[B

    return-void

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
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/b/b;->j:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/b/b;->k:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/b/b;->l:[B

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/b/b;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/b/b;->h:Lcom/ifengyu/intercom/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/b/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/b/b;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/b/b;->h:Lcom/ifengyu/intercom/b/b;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/b/b;->h:Lcom/ifengyu/intercom/b/b;

    return-object v0
.end method


# virtual methods
.method public a([BII)J
    .locals 2

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method
