.class public Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v0, 0x7f090419

    const-string v1, "field \'titleBarLeft\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'titleBarLeft\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarLeft:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0904cc

    const-string v2, "field \'voicePromptCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0904cb

    const-string v1, "field \'voicePrompt\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'voicePrompt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePrompt:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090318

    const-string v2, "field \'pwSaveModeCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090317

    const-string v1, "field \'pwSaveMode\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'pwSaveMode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveMode:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0903da

    const-string v2, "field \'stopTransIfBusyCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0903d9

    const-string v1, "field \'stopTransIfBusy\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'stopTransIfBusy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusy:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904ce

    const-string v2, "field \'voiceTypeParentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0904cd

    const-string v1, "field \'voiceType\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'voiceType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceType:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->f:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904cf

    const-string v2, "field \'voiceTypeValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const v0, 0x7f0902d2

    const-string v1, "field \'noiseLevel\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'noiseLevel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevel:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->g:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d3

    const-string v2, "field \'noiseLevelValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v0, 0x7f0904d7

    const-string v1, "field \'wideNarrowBand\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'wideNarrowBand\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBand:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->h:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d8

    const-string v2, "field \'wideNarrowBandValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

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

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
