.class Lcom/ifengyu/intercom/bean/AltitudeBean$Location;
.super Ljava/lang/Object;
.source "AltitudeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/bean/AltitudeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Location"
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field final synthetic this$0:Lcom/ifengyu/intercom/bean/AltitudeBean;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/bean/AltitudeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/AltitudeBean$Location;->this$0:Lcom/ifengyu/intercom/bean/AltitudeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location{lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/intercom/bean/AltitudeBean$Location;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/intercom/bean/AltitudeBean$Location;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
