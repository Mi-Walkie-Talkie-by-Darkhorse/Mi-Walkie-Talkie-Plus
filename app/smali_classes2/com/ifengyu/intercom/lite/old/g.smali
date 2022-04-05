.class public final synthetic Lcom/ifengyu/intercom/lite/old/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

.field private final synthetic b:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private final synthetic c:Lcom/ifengyu/intercom/lite/models/ChannelModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/g;->a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/old/g;->b:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/old/g;->c:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/g;->a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/g;->b:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/g;->c:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method
