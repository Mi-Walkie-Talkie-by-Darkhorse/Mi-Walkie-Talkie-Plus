.class public interface abstract annotation Lorg/jboss/netty/channel/ChannelPipelineCoverage;
.super Ljava/lang/Object;
.source "ChannelPipelineCoverage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final ONE:Ljava/lang/String; = "one"


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
