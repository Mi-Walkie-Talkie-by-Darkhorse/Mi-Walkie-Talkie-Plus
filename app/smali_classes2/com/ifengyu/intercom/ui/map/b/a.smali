.class public Lcom/ifengyu/intercom/ui/map/b/a;
.super Ljava/lang/Object;
.source "BeanMapOsmdroid.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

.field private b:Lcom/ifengyu/intercom/ui/map/d/a/f;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/bean/BeanUserLocation;Lcom/ifengyu/intercom/ui/map/d/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b/a;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/b/a;->b:Lcom/ifengyu/intercom/ui/map/d/a/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/bean/BeanUserLocation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b/a;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b/a;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b/a;->b:Lcom/ifengyu/intercom/ui/map/d/a/f;

    return-void
.end method
