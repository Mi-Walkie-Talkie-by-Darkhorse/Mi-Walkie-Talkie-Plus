.class public Lcom/xiaomi/push/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/gv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/gh$a;
    }
.end annotation


# static fields
.field public static a:Z = false


# instance fields
.field private a:Lcom/xiaomi/push/gh$a;

.field private a:Lcom/xiaomi/push/gj;

.field private a:Lcom/xiaomi/push/gm;

.field private final a:Ljava/lang/String;

.field private a:Ljava/text/SimpleDateFormat;

.field private b:Lcom/xiaomi/push/gh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/gj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gj;

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gh$a;

    iput-object v0, p0, Lcom/xiaomi/push/gh;->b:Lcom/xiaomi/push/gh$a;

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gm;

    const-string v0, "[Slim] "

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gj;

    invoke-direct {p0}, Lcom/xiaomi/push/gh;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/gh;)Lcom/xiaomi/push/gh$a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gh$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/gh;)Lcom/xiaomi/push/gj;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gj;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/gh;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/gh;->a:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/gh$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/gh$a;-><init>(Lcom/xiaomi/push/gh;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gh$a;

    new-instance v0, Lcom/xiaomi/push/gh$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/gh$a;-><init>(Lcom/xiaomi/push/gh;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/gh;->b:Lcom/xiaomi/push/gh$a;

    iget-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gj;

    iget-object v1, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gh$a;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/push/gj;->a(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V

    iget-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gj;

    iget-object v1, p0, Lcom/xiaomi/push/gh;->b:Lcom/xiaomi/push/gh$a;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/push/gj;->b(Lcom/xiaomi/push/go;Lcom/xiaomi/push/gw;)V

    new-instance v0, Lcom/xiaomi/push/gi;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/gi;-><init>(Lcom/xiaomi/push/gh;)V

    iput-object v0, p0, Lcom/xiaomi/push/gh;->a:Lcom/xiaomi/push/gm;

    return-void
.end method
