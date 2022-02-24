.class public final synthetic Lcom/ifengyu/intercom/lite/login/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/login/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/login/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/login/a;->a:Lcom/ifengyu/intercom/lite/login/a;

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

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-object p1
.end method
