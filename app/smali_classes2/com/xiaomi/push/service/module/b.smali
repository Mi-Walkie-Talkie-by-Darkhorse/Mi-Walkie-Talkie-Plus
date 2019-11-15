.class public Lcom/xiaomi/push/service/module/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/push/service/module/b;->e:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/push/service/module/b;->d:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/push/service/module/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/module/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/module/b;->c:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/module/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/module/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/module/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/module/b;->c:[B

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/module/b;->d:I

    return v0
.end method
