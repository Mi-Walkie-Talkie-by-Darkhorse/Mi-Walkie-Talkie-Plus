.class public final synthetic Lcom/ifengyu/intercom/device/lite/d/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/lite/d/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/q;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/d/q;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/d/q;->a:Lcom/ifengyu/intercom/device/lite/d/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/device/lite/d/r;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/d/r;->a()Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object p1

    return-object p1
.end method
