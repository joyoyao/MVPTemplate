package ${packageName}.injection;

import cc.mocation.app.injection.ActivityScope;
import ${packageName}.${activityClass};
import cc.mocation.app.injection.components.AppComponent;
import dagger.Component;

@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(${activityClass} activity);
}