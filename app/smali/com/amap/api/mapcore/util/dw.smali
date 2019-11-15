.class public Lcom/amap/api/mapcore/util/dw;
.super Ljava/lang/Object;
.source "PreferenceTools.java"


# static fields
.field private static a:Lcom/amap/api/mapcore/util/dw;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/dw;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/dw;->a:Lcom/amap/api/mapcore/util/dw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/dw;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dw;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/dw;->a:Lcom/amap/api/mapcore/util/dw;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/dw;->a:Lcom/amap/api/mapcore/util/dw;

    return-object v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    const-string v0, "time"

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/dw;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "Map3DCache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dw;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/dw;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/dw;->a(J)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dw;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dw;->b:Landroid/content/SharedPreferences;

    const-string v3, "time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
