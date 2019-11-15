.class public Lcom/autonavi/ae/search/model/GPoiGroup;
.super Lcom/autonavi/ae/search/model/GPoiBase;
.source "GPoiGroup.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/ae/search/model/GPoiBase;-><init>()V

    iput-object p1, p0, Lcom/autonavi/ae/search/model/GPoiGroup;->czName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/search/model/GPoiGroup;->czName:Ljava/lang/String;

    return-object v0
.end method
