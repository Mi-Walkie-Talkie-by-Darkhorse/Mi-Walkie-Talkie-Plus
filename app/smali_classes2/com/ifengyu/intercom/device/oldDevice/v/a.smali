.class public Lcom/ifengyu/intercom/device/oldDevice/v/a;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->b:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->c:Z

    .line 5
    iput-object p5, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->d:Ljava/lang/String;

    .line 6
    iput p6, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->e:I

    .line 7
    iput p7, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 8
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/intercom/device/oldDevice/v/a;-><init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 9
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/intercom/device/oldDevice/v/a;-><init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->c:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->c:Z

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a:Ljava/lang/String;

    return-void
.end method
