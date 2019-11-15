.class public Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareNaviQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->b:I

    return-void
.end method


# virtual methods
.method public getFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method

.method public getNaviMode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->b:I

    return v0
.end method
