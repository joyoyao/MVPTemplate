package ${packageName}.injection;
import android.support.annotation.NonNull;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.presenter.${presenterClass}Impl;
import cc.mocation.app.presenter.loader.PresenterFactory;
import dagger.Module;
import dagger.Provides;

@Module
public final class ${moduleClass} 
{
	

	@Provides
	public PresenterFactory<${presenterClass}> providePresenterFactory()
	{
		return new PresenterFactory<${presenterClass}>()
        {
            @NonNull
            @Override
            public ${presenterClass} create()
            {
                return new ${presenterClass}Impl();
            }
        };
	}
}
