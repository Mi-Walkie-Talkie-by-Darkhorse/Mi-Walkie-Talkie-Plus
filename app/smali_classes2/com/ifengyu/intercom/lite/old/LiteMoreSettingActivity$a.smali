.class Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity$a;
.super Ljava/lang/Object;
.source "LiteMoreSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity$a;->a:Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity$a;->a:Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->onBackPressed()V

    return-void
.end method
