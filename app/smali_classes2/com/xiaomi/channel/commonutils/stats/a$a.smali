.class public Lcom/xiaomi/channel/commonutils/stats/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/stats/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final d:Lcom/xiaomi/channel/commonutils/stats/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/channel/commonutils/stats/a;

    invoke-direct {v0}, Lcom/xiaomi/channel/commonutils/stats/a;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/stats/a$a;->d:Lcom/xiaomi/channel/commonutils/stats/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/channel/commonutils/stats/a$a;->a:I

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/stats/a$a;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/channel/commonutils/stats/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/channel/commonutils/stats/a$a;->d:Lcom/xiaomi/channel/commonutils/stats/a;

    return-object v0
.end method
