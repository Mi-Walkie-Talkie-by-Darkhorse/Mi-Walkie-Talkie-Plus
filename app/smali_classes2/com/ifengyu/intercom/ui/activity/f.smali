.class public final synthetic Lcom/ifengyu/intercom/ui/activity/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/ui/activity/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/activity/f;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/activity/f;->a:Lcom/ifengyu/intercom/ui/activity/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    check-cast p2, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)I

    move-result p1

    return p1
.end method
