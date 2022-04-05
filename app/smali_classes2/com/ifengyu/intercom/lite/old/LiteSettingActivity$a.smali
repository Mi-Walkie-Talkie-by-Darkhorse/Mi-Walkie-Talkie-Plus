.class Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$a;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$a;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method
