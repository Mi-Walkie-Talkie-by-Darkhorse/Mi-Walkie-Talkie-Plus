.class public Lcom/amap/api/col/sl/fh;
.super Ljava/lang/Object;
.source "LastLocationInfo.java"


# annotations
.annotation runtime Lcom/amap/api/col/sl/cr;
    a = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/sl/cs;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/amap/api/col/sl/cs;
        a = "a3"
        b = 0x5
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/sl/cs;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private d:Lcom/amap/api/location/AMapLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fh;->d:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/col/sl/fh;->b:J

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/fh;->d:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/fh;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/fh;->a:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/sl/fh;->b:J

    return-wide v0
.end method
