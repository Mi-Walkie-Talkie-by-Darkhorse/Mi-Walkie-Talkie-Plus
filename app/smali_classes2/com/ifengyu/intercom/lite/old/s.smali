.class public final synthetic Lcom/ifengyu/intercom/lite/old/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/q;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/old/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/old/s;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/old/s;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/old/s;->a:Lcom/ifengyu/intercom/lite/old/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method
