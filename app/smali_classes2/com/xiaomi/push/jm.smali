.class public Lcom/xiaomi/push/jm;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/push/jr;

.field private final a:Lcom/xiaomi/push/jy;

.field private final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/jn$a;

    invoke-direct {v0}, Lcom/xiaomi/push/jn$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/jm;-><init>(Lcom/xiaomi/push/jt;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/jt;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/jm;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Lcom/xiaomi/push/jy;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/jy;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/xiaomi/push/jm;->a:Lcom/xiaomi/push/jy;

    invoke-interface {p1, v1}, Lcom/xiaomi/push/jt;->a(Lcom/xiaomi/push/kb;)Lcom/xiaomi/push/jr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/jm;->a:Lcom/xiaomi/push/jr;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/jg;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/jm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/xiaomi/push/jm;->a:Lcom/xiaomi/push/jr;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/jg;->b(Lcom/xiaomi/push/jr;)V

    iget-object p1, p0, Lcom/xiaomi/push/jm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
