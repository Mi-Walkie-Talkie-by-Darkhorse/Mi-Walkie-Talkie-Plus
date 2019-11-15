.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;
.source "MsgViewHolderAudio.java"


# static fields
.field public static final CLICK_TO_PLAY_AUDIO_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationView:Landroid/widget/ImageView;

.field private audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

.field private containerView:Landroid/view/View;

.field private durationLabel:Landroid/widget/TextView;

.field private mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private onPlayListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

.field private unreadIndicator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;-><init>(Lcom/ifengyu/library/widget/recyclerview/adapter/a;)V

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->onPlayListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isTheSame(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->play()V

    return-void
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->stop()V

    return-void
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    return-object v0
.end method

.method private calculateBubbleWidth(JI)I
    .locals 9

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->getAudioMaxEdge()I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->getAudioMinEdge()I

    move-result v0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v0, :cond_2

    :goto_1
    return v0

    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    int-to-long v2, p3

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    sub-int v2, v1, v0

    int-to-double v2, v2

    const-wide v4, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double/2addr v2, v4

    long-to-double v4, p1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-le v2, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private controlPlaying()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->setAudioBubbleWidth(J)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->updateTime(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isMessagePlaying(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getAudioControlListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getAudioControlListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->onPlayListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->changeAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->stop()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->onPlayListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->changeAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->play()V

    goto :goto_0
.end method

.method private endPlayAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static getAudioMaxEdge()I
    .locals 4

    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-static {}, Lcom/ifengyu/library/util/l;->h()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getAudioMinEdge()I
    .locals 4

    const-wide/high16 v0, 0x3fc8000000000000L    # 0.1875

    invoke-static {}, Lcom/ifengyu/library/util/l;->h()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private initPlayAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private isTheSame(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutByDirection()V
    .locals 6

    const/16 v2, 0x15

    const/16 v1, 0x13

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->setGravity(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->unreadIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private play()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private refreshStatus()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachStatus()I

    move-result v2

    sget-object v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->alertButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->unreadIndicator:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->alertButton:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->unreadIndicator:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setAudioBubbleWidth(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/ifengyu/library/util/k;->a(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->calculateBubbleWidth(JI)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private stop()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->endPlayAnim()V

    :cond_0
    return-void
.end method

.method private updateTime(J)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/ifengyu/library/util/k;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindContentView()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->layoutByDirection()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->refreshStatus()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->controlPlaying()V

    return-void
.end method

.method protected getContentResId()I
    .locals 1

    const v0, 0x7f0400a7

    return v0
.end method

.method protected inflateContentView()V
    .locals 2

    const v0, 0x7f100290

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->durationLabel:Landroid/widget/TextView;

    const v0, 0x7f10028e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->containerView:Landroid/view/View;

    const v0, 0x7f100291

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->unreadIndicator:Landroid/view/View;

    const v0, 0x7f10028f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->animationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    return-void
.end method

.method protected isMessagePlaying(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getPlayingAudio()Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getPlayingAudio()Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected leftBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onItemClick()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->unreadIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->initPlayAnim()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    const-wide/16 v2, 0x1f4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->onPlayListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->audioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->getMsgAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->setPlayNext(ZLcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method protected rightBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
