.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/ui/fragment/u0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/u0;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/u0;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/u0;->a:Lcom/ifengyu/intercom/ui/fragment/u0;

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

    check-cast p1, Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->A3(Lcom/ifengyu/intercom/models/NetDeviceModel;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
