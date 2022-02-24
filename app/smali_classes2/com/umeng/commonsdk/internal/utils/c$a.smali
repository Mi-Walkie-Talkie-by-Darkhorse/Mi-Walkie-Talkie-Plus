.class Lcom/umeng/commonsdk/internal/utils/c$a;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/internal/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/internal/utils/c;-><init>(Lcom/umeng/commonsdk/internal/utils/c$1;)V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/c$a;->a:Lcom/umeng/commonsdk/internal/utils/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/internal/utils/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/c$a;->a:Lcom/umeng/commonsdk/internal/utils/c;

    return-object v0
.end method
