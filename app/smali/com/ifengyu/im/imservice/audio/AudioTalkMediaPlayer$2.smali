.class Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;
.super Ljava/lang/Object;
.source "AudioTalkMediaPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->initProximitySensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v0, v2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$200(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the value returned by the cursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$300(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)F

    move-result v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0, v3}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$302(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;F)F

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$300(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0, v3}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$302(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;F)F

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->setEarphoneStatus(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$2;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->setEarphoneStatus(Z)V

    goto :goto_1
.end method
