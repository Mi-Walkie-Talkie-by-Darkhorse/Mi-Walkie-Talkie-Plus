.class public Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Landroid/view/View;)V
    .locals 8
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const v7, 0x7f10014c

    const v6, 0x7f10014a

    const v5, 0x7f100148

    const v4, 0x7f100145

    const v3, 0x7f1000c3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const-string v0, "field \'titleBarLeft\' and method \'onClick\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'titleBarLeft\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarLeft:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    const-string v1, "field \'titleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f100146

    const-string v1, "field \'voicePromptCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    const-string v0, "field \'voicePrompt\' and method \'onClick\'"

    invoke-static {p2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'voicePrompt\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePrompt:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$2;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10014b

    const-string v1, "field \'pwSaveModeCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    const-string v0, "field \'pwSaveMode\' and method \'onClick\'"

    invoke-static {p2, v6, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'pwSaveMode\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v1, v6, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveMode:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$3;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10014d

    const-string v1, "field \'stopTransIfBusyCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    const-string v0, "field \'stopTransIfBusy\' and method \'onClick\'"

    invoke-static {p2, v7, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'stopTransIfBusy\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v1, v7, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusy:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$4;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100147

    const-string v1, "field \'voiceTypeParentLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'voiceType\' and method \'onClick\'"

    invoke-static {p2, v5, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'voiceType\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v1, v5, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceType:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$5;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100149

    const-string v1, "field \'voiceTypeValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const v0, 0x7f10014e

    const-string v1, "field \'noiseLevel\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10014e

    const-string v2, "field \'noiseLevel\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevel:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$6;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10014f

    const-string v1, "field \'noiseLevelValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v0, 0x7f100150

    const-string v1, "field \'wideNarrowBand\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100150

    const-string v2, "field \'wideNarrowBand\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBand:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$7;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100151

    const-string v1, "field \'wideNarrowBandValue\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePrompt:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveMode:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusy:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceType:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevel:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBand:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    return-void
.end method
