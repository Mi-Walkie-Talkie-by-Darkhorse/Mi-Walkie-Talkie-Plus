.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;


# static fields
.field public static final BODY_TYPE_AUDIO:I = 0x2

.field public static final BODY_TYPE_CUSTOM:I = 0x0

.field public static final BODY_TYPE_TEXT:I = 0x1

.field public static final CHANNEL_GROUP:I = 0x3

.field public static final CHANNEL_ROOM:I = 0x2

.field public static final CHANNEL_USER:I = 0x1

.field public static final MAX_SOUND_RECORD_TIME:J = 0xea60L

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private PTTDown:Z

.field private cancelled:Z

.field private mAnchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordListener:Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;

.field mBtnRecord:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100263
    .end annotation
.end field

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001bb
    .end annotation
.end field

.field private mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field

.field protected messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

.field private sessionId:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sessionType:I

.field private soundVolumeDialog:Landroid/app/Dialog;

.field private soundVolumeImg:Landroid/widget/ImageView;

.field private soundVolumeLayout:Landroid/widget/LinearLayout;

.field private started:Z

.field private touched:Z

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->started:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->cancelled:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->touched:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->PTTDown:Z

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioRecordListener:Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->showVolumeDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->onReceiveMaxVolume(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->started:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->touched:Z

    return v0
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->updateTimerTip(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y1:F

    return v0
.end method

.method static synthetic access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y2:F

    return v0
.end method

.method static synthetic access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionType:I

    return v0
.end method

.method static synthetic access$900(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Lcom/ifengyu/im/imservice/services/MessageService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    return-object v0
.end method

.method private cancelAudioRecord(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->started:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->cancelled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->cancelled:Z

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->updateTimerTip(Z)V

    goto :goto_0
.end method

.method private getGroupName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ifengyu/im/DB/entity/GroupEntity;->mainName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    goto :goto_0
.end method

.method private initAudioSdk()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioRecordListener:Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->initAudio(Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;)V

    return-void
.end method

.method private initSoundVolumeDlg()V
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x1

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00ee

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    const v1, 0x7f0400aa

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    const v1, 0x7f10029a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isCancelled(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v2, v0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    aget v2, v2, v1

    add-int/lit8 v2, v2, -0x28

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static final synthetic lambda$showUserInfoDialog$1$MessageFragment(ZLcom/ifengyu/im/DB/entity/UserEntity;Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/ChatEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->START_CHAT:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    invoke-direct {v1, v2, p1}, Lcom/ifengyu/im/imservice/event/ChatEvent;-><init>(Lcom/ifengyu/im/imservice/event/ChatEvent$Event;Lcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "session_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onEndAudioRecord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->stopRecord()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->started:Z

    return-void
.end method

.method private onReceiveMaxVolume(I)V
    .locals 6

    const-wide v4, 0x40bf400000000000L    # 8000.0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    int-to-double v0, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x407f400000000000L    # 500.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const/16 v0, 0x4b0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    int-to-double v0, p1

    const-wide v2, 0x4092c00000000000L    # 1200.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const/16 v0, 0x960

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    int-to-double v0, p1

    const-wide v2, 0x40a2c00000000000L    # 2400.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    int-to-double v0, p1

    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    int-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    int-to-double v0, p1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private onStartAudioRecord()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->startRecord(Z)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->cancelled:Z

    return-void
.end method

.method private showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "my user info is null, please check whether to login success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-ne v3, v0, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v3

    const-string v4, "ID:%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setSubTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setImageUrl(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f090075

    :goto_2
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$$Lambda$1;

    invoke-direct {v3, v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$$Lambda$1;-><init>(ZLcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->show()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v1, 0x7f090043

    goto :goto_2
.end method

.method private showVolumeDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateTimerTip(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeToSpeaker()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040096

    return v0
.end method

.method public initAudioRecordButton()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mBtnRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    const-string v0, "session_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionType:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionType:I

    invoke-static {v0, v1}, Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;->getSessionKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAnchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle#sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sessionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mTvTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionId:Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionType:I

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAnchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;Landroid/view/View;Lcom/ifengyu/im/imservice/model/MessageEntity;ZZ)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    :goto_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->initAudioRecordButton()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->initSoundVolumeDlg()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->initAudioSdk()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->setEnterChatRoom(Z)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->readUnreadSession(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mAnchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->reload(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto :goto_0
.end method

.method final synthetic lambda$initWidget$0$MessageFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->popBackStack()V

    return-void
.end method

.method public onAvatarClick(Landroid/content/Context;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "click user info is null, please check whether to initialize user information"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->setEnterChatRoom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->removeAudioRecordListener()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->destroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/im/imservice/event/PriorityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onEvent:message incoming"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$4;->$SwitchMap$com$ifengyu$im$imservice$event$PriorityEvent$Event:[I

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/PriorityEvent;->event:Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Lcom/ifengyu/im/imservice/event/PriorityEvent;)V

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->f(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/MessageHistoryEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onEventMainThread:old group message incoming"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/MessageHistoryEvent;->messageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->notifyReceiveOldGroupMessage(Ljava/util/List;)V

    return-void
.end method

.method public onInputPanelExpand()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100263

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->stopAudio()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y1:F

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->touched:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->onStartAudioRecord()V

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->touched:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y2:F

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->isCancelled(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->onEndAudioRecord(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->touched:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y2:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y1:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->y2:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->isCancelled(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->cancelAudioRecord(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->soundVolumeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public refreshMessageList()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->refreshMessageList()V

    return-void
.end method

.method public shouldCollapseInputPanel()V
    .locals 0

    return-void
.end method
