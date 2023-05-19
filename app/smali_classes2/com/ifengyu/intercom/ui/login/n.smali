.class public final synthetic Lcom/ifengyu/intercom/ui/login/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/ui/login/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/login/n;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/login/n;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/login/n;->a:Lcom/ifengyu/intercom/ui/login/n;

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

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment;->E3(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
