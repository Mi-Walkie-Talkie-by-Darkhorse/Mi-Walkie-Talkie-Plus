.class public Lcom/ifengyu/blelib/utils/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field public a:[B

.field private b:[B

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/utils/FooUtils;->method06([B[B)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/ifengyu/blelib/utils/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate key pair error, ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v0, p0, Lcom/ifengyu/blelib/utils/a;->b:[B

    iput-object v1, p0, Lcom/ifengyu/blelib/utils/a;->a:[B

    return-void
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/utils/a;->b:[B

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Lcom/ifengyu/blelib/utils/FooUtils;->method07([B[B[B)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ifengyu/blelib/utils/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate secret key error, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v1, p0, Lcom/ifengyu/blelib/utils/a;->c:[B

    return-void

    :cond_1
    sget-object p1, Lcom/ifengyu/blelib/utils/a;->d:Ljava/lang/String;

    const-string v0, "generate secret key error, privateKey or receivedPublicKey must be not null"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKey or receivedPublicKey must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()[B
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/utils/a;->c:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    invoke-static {v0, v1, v1}, Lcom/ifengyu/blelib/d/a;->a([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()[B
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/utils/a;->c:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/ifengyu/blelib/d/a;->a([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/utils/a;->a:[B

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/utils/a;->c:[B

    return-object v0
.end method
