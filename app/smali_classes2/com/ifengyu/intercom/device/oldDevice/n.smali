.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/n;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/n;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/n;->a:Lcom/ifengyu/intercom/device/oldDevice/n;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->i0(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
