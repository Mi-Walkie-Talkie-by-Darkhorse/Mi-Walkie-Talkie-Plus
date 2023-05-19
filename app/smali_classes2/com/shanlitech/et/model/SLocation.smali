.class public Lcom/shanlitech/et/model/SLocation;
.super Ljava/lang/Object;
.source "SLocation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/shanlitech/et/core/sl/model/ISLocation;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x5e8cb5a1babe0de9L


# instance fields
.field public address:Ljava/lang/String;

.field public altitude:D

.field public direction:D

.field public gid:J

.field public id:Ljava/lang/Long;

.field public lat:D

.field public locType:I

.field public lon:D

.field private single:Z

.field public speed:D

.field public time:J

.field public type:I

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/SLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/model/SLocation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IJJJDDDDDLjava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shanlitech/et/model/SLocation;->single:Z

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/shanlitech/et/model/SLocation;->id:Ljava/lang/Long;

    move v1, p2

    .line 4
    iput v1, v0, Lcom/shanlitech/et/model/SLocation;->type:I

    move-wide v1, p3

    .line 5
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->time:J

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->uid:J

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->gid:J

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->lat:D

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->lon:D

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->speed:D

    move-wide/from16 v1, p15

    .line 11
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->altitude:D

    move-wide/from16 v1, p17

    .line 12
    iput-wide v1, v0, Lcom/shanlitech/et/model/SLocation;->direction:D

    move-object/from16 v1, p19

    .line 13
    iput-object v1, v0, Lcom/shanlitech/et/model/SLocation;->address:Ljava/lang/String;

    move/from16 v1, p20

    .line 14
    iput v1, v0, Lcom/shanlitech/et/model/SLocation;->locType:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    const-string v0, "speech_id"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/model/SLocation;->id:Ljava/lang/Long;

    const-string v0, "gid"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    const-string v0, "uid"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    const-string v0, "time"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->time:J

    const-string v0, "type"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shanlitech/et/model/SLocation;->type:I

    const-string v0, "lat"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->lat:D

    const-string v0, "lon"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->lon:D

    const-string v0, "speed"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->speed:D

    const-string v0, "altitude"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->altitude:D

    const-string v0, "direction"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->direction:D

    const-string v0, "address"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/model/SLocation;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/SLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->altitude:D

    return-wide v0
.end method

.method public getDirection()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->direction:D

    return-wide v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/SLocation;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->lat:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/SLocation;->locType:I

    return v0
.end method

.method public getLon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->lon:D

    return-wide v0
.end method

.method public getSingle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    return v0
.end method

.method public getSpeed()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->speed:D

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x190

    const/16 v1, 0x12c

    const/16 v2, 0x12

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/shanlitech/et/model/SLocation;->getThumbnailUrl(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    iget-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->lon:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    iget-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->lat:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const-string p1, "http://api.map.baidu.com/staticimage?width=%s&height=%s&center=%s,%s&zoom=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/SLocation;->type:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    return-wide v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public isMyCurrentGroupLocation()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    return v0
.end method

.method public isMyLocation()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public isSingle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/SLocation;->address:Ljava/lang/String;

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->altitude:D

    return-void
.end method

.method public setDirection(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->direction:D

    return-void
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/model/SLocation;->id:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/model/SLocation;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->lat:D

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/SLocation;->locType:I

    return-void
.end method

.method public setLon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->lon:D

    return-void
.end method

.method public setSingle(Z)Lcom/shanlitech/et/model/SLocation;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    return-object p0
.end method

.method public setSpeed(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->speed:D

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/SLocation;->type:I

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/model/SLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " gid=["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/shanlitech/et/model/SLocation;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " sender=["

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/shanlitech/et/model/SLocation;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " time=["

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/shanlitech/et/model/SLocation;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " type=["

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/shanlitech/et/model/SLocation;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " single=["

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lcom/shanlitech/et/model/SLocation;->single:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " latlng=["

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/shanlitech/et/model/SLocation;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/shanlitech/et/model/SLocation;->lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
