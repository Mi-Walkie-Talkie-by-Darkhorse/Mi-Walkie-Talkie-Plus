.class public interface abstract annotation Lbutterknife/OnPageChange;
.super Ljava/lang/Object;
.source "OnPageChange.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    callbacks = Lbutterknife/OnPageChange$Callback;
    remover = "removeOnPageChangeListener"
    setter = "addOnPageChangeListener"
    targetType = "android.support.v4.view.ViewPager"
    type = "android.support.v4.view.ViewPager.OnPageChangeListener"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnPageChange;
        callback = .enum Lbutterknife/OnPageChange$Callback;->PAGE_SELECTED:Lbutterknife/OnPageChange$Callback;
        value = {
            -0x1
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/OnPageChange$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract callback()Lbutterknife/OnPageChange$Callback;
.end method

.method public abstract value()[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
