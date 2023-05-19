.class public final synthetic Lcom/ifengyu/intercom/i/z0/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/i/z0/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/i/z0/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/z0/b;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/z0/b;->a:Lcom/ifengyu/intercom/i/z0/b;

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

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/z0/d;->e0(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
