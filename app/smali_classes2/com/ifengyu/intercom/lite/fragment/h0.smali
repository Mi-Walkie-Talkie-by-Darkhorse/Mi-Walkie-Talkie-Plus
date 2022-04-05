.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/h0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/h0;->a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/h0;->a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->a(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;I)V

    return-void
.end method
