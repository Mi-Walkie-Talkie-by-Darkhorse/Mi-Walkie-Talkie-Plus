.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/h;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/h;->a:Lcom/ifengyu/intercom/device/oldDevice/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->h0(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method