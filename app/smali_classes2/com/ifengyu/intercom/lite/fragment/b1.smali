.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/b1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/b1;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/b1;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V

    return-void
.end method
