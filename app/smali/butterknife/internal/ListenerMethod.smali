.class public interface abstract annotation Lbutterknife/internal/ListenerMethod;
.super Ljava/lang/Object;
.source "ListenerMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/internal/ListenerMethod;
        defaultReturn = "null"
        parameters = {}
        returnType = "void"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultReturn()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract parameters()[Ljava/lang/String;
.end method

.method public abstract returnType()Ljava/lang/String;
.end method
