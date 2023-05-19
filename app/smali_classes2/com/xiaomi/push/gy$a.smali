.class public Lcom/xiaomi/push/gy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/push/gy$a;

.field public static final b:Lcom/xiaomi/push/gy$a;

.field public static final c:Lcom/xiaomi/push/gy$a;

.field public static final d:Lcom/xiaomi/push/gy$a;

.field public static final e:Lcom/xiaomi/push/gy$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->c:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    new-instance v0, Lcom/xiaomi/push/gy$a;

    const-string v1, "command"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gy$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/gy$a;->e:Lcom/xiaomi/push/gy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/gy$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/push/gy$a;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lcom/xiaomi/push/gy$a;->c:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    sget-object v1, Lcom/xiaomi/push/gy$a;->e:Lcom/xiaomi/push/gy$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/gy$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gy$a;->a:Ljava/lang/String;

    return-object v0
.end method
