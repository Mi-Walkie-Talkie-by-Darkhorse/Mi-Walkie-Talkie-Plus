.class public Lcom/xiaomi/smack/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/xiaomi/smack/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/smack/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/xiaomi/smack/a;->a:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->h:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/smack/b;->a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/e;)V

    return-void
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/e;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/smack/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/b;->e:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/smack/b;->f:I

    iput-object p3, p0, Lcom/xiaomi/smack/b;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/smack/b;->j:Lcom/xiaomi/smack/e;

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/smack/b;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/smack/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/b;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/smack/b;->g:Z

    return-void
.end method

.method public a()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/b;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smack/b;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smack/b;->g:Z

    return v0
.end method
