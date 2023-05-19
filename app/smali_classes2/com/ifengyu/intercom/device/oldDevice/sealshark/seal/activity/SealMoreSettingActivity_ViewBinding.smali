.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    const v0, 0x7f09048e

    const-string v1, "field \'titleBarLeft\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'titleBarLeft\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090540

    const-string v2, "field \'voicePromptCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09053f

    const-string v1, "field \'voicePrompt\' and method \'onClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'voicePrompt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voicePrompt:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09037b

    const-string v2, "field \'pwSaveModeCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09037a

    const-string v1, "field \'pwSaveMode\' and method \'onClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'pwSaveMode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveMode:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09044e

    const-string v2, "field \'stopTransIfBusyCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09044d

    const-string v1, "field \'stopTransIfBusy\' and method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'stopTransIfBusy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->stopTransIfBusy:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090542

    const-string v2, "field \'voiceTypeParentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090541

    const-string v1, "field \'voiceType\' and method \'onClick\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 25
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'voiceType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceType:Landroid/widget/LinearLayout;

    .line 26
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090543

    const-string v2, "field \'voiceTypeValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const v0, 0x7f090335

    const-string v1, "field \'noiseLevel\' and method \'onClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'noiseLevel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->noiseLevel:Landroid/widget/LinearLayout;

    .line 31
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090336

    const-string v2, "field \'noiseLevelValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v0, 0x7f09054b

    const-string v1, "field \'wideNarrowBand\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'wideNarrowBand\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->wideNarrowBand:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09054c

    const-string v2, "field \'wideNarrowBandValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->titleBarLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voicePrompt:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveMode:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->stopTransIfBusy:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceType:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->noiseLevel:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->wideNarrowBand:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
