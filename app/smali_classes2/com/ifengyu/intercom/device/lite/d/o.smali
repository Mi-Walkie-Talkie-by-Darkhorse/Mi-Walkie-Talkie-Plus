.class public final synthetic Lcom/ifengyu/intercom/device/lite/d/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/lite/d/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/o;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/d/o;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/d/o;->a:Lcom/ifengyu/intercom/device/lite/d/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/util/Pair;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    check-cast p2, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
