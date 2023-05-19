.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/i2;

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

    check-cast p1, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->B3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method
